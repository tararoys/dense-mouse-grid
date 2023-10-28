import sys
import cv2
import numpy as np
import json


class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y


class Rect:
    def __init__(self, x, y, w, h):
        self.x = x
        self.y = y
        self.w = w
        self.h = h
        self.center = Point(x + w / 2, y + h / 2)


class RectEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, Rect):
            out_dict = obj.__dict__
            del out_dict["center"]
            return out_dict

        return json.JSONEncoder.default(self, obj)


def find_boxes(threshold, box_size_lower, box_size_upper, img):
    # find boxes by first applying a threshold filter to the grayscale window
    gray = cv2.cvtColor(np.array(img, dtype=np.uint8), cv2.COLOR_BGR2GRAY)
    # gray = cv2.cvtColor(np.array(img), cv2.COLOR_BGR2GRAY)
    _, thresh = cv2.threshold(gray, threshold, 255, cv2.THRESH_BINARY)
    # view_image(thresh, "thresh")

    # use a close morphology transform to filter out thin lines
    kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (2, 1))
    morph = cv2.morphologyEx(thresh, cv2.MORPH_CLOSE, kernel)
    # view_image(morph, "morph")

    # now search all of the contours for small square-ish things
    contours, _ = cv2.findContours(morph, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)

    all_boxes = []
    for c in contours:
        (x, y, w, h) = cv2.boundingRect(c)
        if (
            (w >= box_size_lower and w < box_size_upper)
            and (h > box_size_lower and h < box_size_upper)
            and abs(w - h) < 0.4 * w
        ):
            all_boxes.append(Rect(x, y, w, h))

    # print("found boxes", len(all_boxes))

    # filter boxes that are too similar to each other
    boxes = []
    for i, box1 in enumerate(all_boxes):
        omit = False
        for j in range(i + 1, len(all_boxes)):
            box2 = all_boxes[j]
            box1center = box1.center
            box2center = box2.center
            if (
                abs(box1center.x - box2center.x) < box_size_lower
                and abs(box1center.y - box2center.y) < box_size_lower
            ):
                # omit this box since its center is nearby another box's center
                omit = True
                break

        if not omit:
            boxes.append(box1)

    # print("after omissions", len(boxes))

    # print boxes as json
    print(json.dumps(boxes, cls=RectEncoder, separators=(",", ":")))


if __name__ == "__main__":
    args = json.load(sys.stdin)
    # print(args["threshold"])

    find_boxes(
        args["threshold"], args["box_size_lower"], args["box_size_upper"], args["img"]
    )
