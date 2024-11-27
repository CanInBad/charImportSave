extends EventBase

func _init():
	id = "importCharFromSaveButton"

func registerTriggers(es):
	es.addTrigger(self, Trigger.SceneAndStateHook, ["CharacterCreatorScene",""])
	es.addTrigger(self, Trigger.SceneAndStateHook, ["CharacterCreatorScene","pickgender"])

func run(_triggerID, _args):
    sayn("\n\nOr alternatively, choose a save to import from.")
    GM.ui.addButtonAt(14,"Pick a save", "Pick a save to import PC character from.", "EVENTSYSTEM_BUTTON", [self, "import", []])

func onButton(_method, _args):
    if _method == "import":
        var _scene = GM.main.runScene("importCharacterFromSave")
        _scene.sceneTag = "replace_pc"