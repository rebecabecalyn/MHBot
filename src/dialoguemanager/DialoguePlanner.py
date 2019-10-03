import numpy as np
from src.models.dialogue.constants import *
from src.dbo.dialogue.DBODialogueTemplate import DBODialogueTemplate

import time
timeout = time.time() + 5
fallback_dialogue_move = 0 #feedback

class DialoguePlanner:


    def __init__(self):
        super().__init__()
        self.weights = np.zeros(len(DIALOGUE_LIST))
        self.is_usable = [False] * len(DIALOGUE_LIST)
        self.move_index = -1

        self.dialogue_history = []
        self.usable_templates = []

        self.curr_event = None

        self.dialogue_template = DBODialogueTemplate('templates')

        self.chosen_move_index = -1
        self.chosen_dialogue_move = None
        self.chosen_dialogue_template = []

    #TODO Handle triggered

    def perform_dialogue_planner(self):
        print("Dialogue_list: ", len(DIALOGUE_LIST))
        for i in range(len(DIALOGUE_LIST)):
            # check if dialogue has templates

            curr_usable_templates = self.get_usable_templates(DIALOGUE_LIST[i].get_type())
            self.usable_templates.append(curr_usable_templates)

            # check if dialogue can be repeated (Only up to 3 times)
            self.is_usable[i] = self.is_dialogue_usable(DIALOGUE_LIST[i].get_type(), curr_usable_templates)

            # gets number of occurences
            self.weights[i] = self.get_num_usage(DIALOGUE_LIST[i].get_type())

        self.chosen_move_index = self.choose_dialogue()
        self.chosen_dialogue_move = DIALOGUE_LIST[self.chosen_move_index].get_type()
        self.chosen_dialogue_template = self.usable_templates[self.chosen_move_index]

        # add chosen dialogue move to dialogue history TODO call DialogueTemplateBuilder
        self.dialogue_history.append(self.chosen_dialogue_move)
        print("\n\nCHOSEN DIALOGUE MOVE: ", self.chosen_dialogue_move)

        return self.chosen_dialogue_move

    def is_dialogue_usable(self, dialogue_type, curr_usable_templates):
        if len(curr_usable_templates) == 0:
            return False

        #can be repeated 3 times only
        if len(self.dialogue_history) >= 3:
            len_dialogue = len(self.dialogue_history)
            if self.dialogue_history[len_dialogue-2] == dialogue_type and \
                    self.dialogue_history[len_dialogue-1] == dialogue_type and \
                    self.dialogue_history[len_dialogue] == dialogue_type:
                return False
        return True

    def get_usable_templates(self, move_to_execute):
        usable_template_list = []

        # dialogue_template.get_templates_of_type()

        template_list = self.dialogue_template.get_templates_of_type(move_to_execute)

        # check which template is usable
        for X in template_list:
            print("==============================")
            print("TEMPLATE: ", X)
            print("==============================")
            print("Relation: ", X.relation)
            print("Template: ", X.template)
            print("Relations: ", X.relation)
            print("Blanks: ", X.blanks)
            print("Nodes: ", X.nodes)
            print("Dependent Nodes: ", X.dependent_nodes)
            result = X.is_usable(self.curr_event)
            print("Is it usable? ", result)
            if X.is_usable(self.curr_event):
                usable_template_list.append(X)
            print("\n")

        return usable_template_list

    def get_num_usage(self, dialogue_type):
        #returns number of times it has been used
        return self.dialogue_history.count(dialogue_type)

    def get_weights(self):
        usable = np.ones(len(DIALOGUE_LIST))


        totals = usable * self.weights
        print("totals: ", sum(totals))
        percentages = totals / sum(totals)
        if np.isfinite(percentages).all():
            percentages = []
            for i in range(len(DIALOGUE_LIST)):
                percentages.append(1/len(DIALOGUE_LIST))

        # if only one highest candidate, only get its index
        # otherwise, randomize between the list of highest candidates
        self.move_index = np.argmax(percentages)
        if self.move_index > 1:
            self.move_index = np.random.choice(self.move_index)

        # increases weight of everything except the one that will be used. It wouldn't make much sense to increase the weight of the most recently used, thus being the reason why it retains the current value it has.
        self.weights = self.weights + 1
        self.weights[self.move_index] = self.weights[self.move_index] - 1
        # print("Here are the weights")
        # for X in self.weights:
        #     print(X)

        #returning chosen index
        return self.move_index

    def choose_dialogue(self):
        is_valid = False
        while not is_valid:
            #time out
            test = 0
            if test == 5 or time.time() > timeout:
                curr_index = fallback_dialogue_move
                break
            test = test - 1

            curr_index = self.get_weights()
            if self.is_usable[curr_index]:
                is_valid = True
        return curr_index

    def set_event(self, curr_event):
        self.curr_event = curr_event




