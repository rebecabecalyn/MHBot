from src import DialogueTemplateBuilder
from . import DialogueTemplate
from src.constants import *
import random
from src.dbo.concept.DBOConceptCustom import DBOConceptCustom
from src.dbo.concept.DBOConceptGlobalImpl import DBOConceptGlobalImpl
import copy

class PRMSuggestDialogueTemplate(DialogueTemplate):

    def __init__(self, id=-1, template=[], relation=[], blanks=[], nodes=[], dependent_nodes=[]):
        DialogueTemplate.__init__(self, id, DIALOGUE_TYPE_PRM_SUGGEST, template, relation, blanks, nodes, dependent_nodes)


    def fill_blanks(self, world, subj, lowest_perma):
        print("blanks", self.blanks)
        response = self.template
        # subj = 'person'
        # lowest_perma = 'POS_M'
        print("LOWEST PERMA IS:", lowest_perma)
        custom_concept = DBOConceptGlobalImpl()
        concepts = []
        if lowest_perma == 'POS_P':
            for x in custom_concept.get_concept_by_relation('person', 'CapableOf'):
                concepts.append(x[3])
        else:
            concepts.append("spend quality time")
            
        response = [x.replace("1", random.choice(concepts).replace("_", " ")) for x in response]        
        response = [x.replace("2", subj) for x in response]
        
        return response

    def get_usable_templates(self):
        # check if it has usable templates
        return []

    def get_template_to_use(self):
        # check if it has usable templates
        return []
