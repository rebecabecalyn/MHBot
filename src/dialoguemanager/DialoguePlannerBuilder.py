from src import ORSEN1, ORSEN2, EDEN, MHBOT
from src.dialoguemanager.EDENDIaloguePlanner import EDENDialoguePlanner
from src.dialoguemanager.ORSEN2DialoguePlanner import ORSEN2DialoguePlanner
from src.dialoguemanager.DialoguePlanner import DialoguePlanner
from src.dialoguemanager.MHBotDialoguePlanner import MHBotDialoguePlanner


class DialoguePlannerBuilder:

   @staticmethod
   def build(orsen_type):
        if orsen_type == ORSEN1:
            return DialoguePlanner()
        if orsen_type == ORSEN2:
            return ORSEN2DialoguePlanner()
        elif orsen_type == EDEN:
            return EDENDialoguePlanner()
        elif orsen_type == MHBOT:
            return MHBotDialoguePlanner()
