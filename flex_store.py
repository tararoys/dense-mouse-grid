from talon import actions, storage


class FlexStore:
    """Provides a way of storing/retrieving data on an app-specific basis"""

    def __init__(self, id: str, default_getter):
        self.id = f"flex-mouse-grid.{id}"
        self.default_getter = default_getter
        self.flex_storage = storage.get(self.id, default_getter())

    def save(self, app_data) -> None:
        self.flex_storage[actions.app.name()] = app_data.copy()
        storage.set(self.id, self.flex_storage)

    def load(self):
        if actions.app and actions.app.name() in self.flex_storage:
            return self.flex_storage[actions.app.name()]

        return self.default_getter()
