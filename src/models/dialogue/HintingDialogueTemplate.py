from . import DialogueTemplate
from src.constants import DIALOGUE_TYPE_HINTING


class HintingDialogueTemplate(DialogueTemplate):

    def __init__(self, id=-1, template=[], relation=[], blanks=[], nodes=[], dependent_nodes=[]):
        DialogueTemplate.__init__(self, id, DIALOGUE_TYPE_HINTING, template, relation, blanks, nodes, dependent_nodes);

    def fill_blank(self, fill):
        # TODO fix fill_blank implementation
        pass

    def get_template_to_use(self):
        # check if it has usable templates
        return []
