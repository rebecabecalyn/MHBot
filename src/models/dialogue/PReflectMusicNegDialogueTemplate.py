from . import DialogueTemplate
from src.constants import *


class PReflectMusicNegDialogueTemplate(DialogueTemplate):

    def __init__(self, id=-1, template=[], relation=[], blanks=[], nodes=[], dependent_nodes=[]):
        DialogueTemplate.__init__(self, id, DIALOGUE_TYPE_P_REFLECT_MUSIC_NEG, template, relation, blanks, nodes,
                                  dependent_nodes);

    def get_template_to_use(self):
        # check if it has usable templates
        #        return []
        pass

    def fill_blanks(self, event):
        return self.template