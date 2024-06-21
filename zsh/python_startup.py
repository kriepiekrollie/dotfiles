import os
os.environ['PYTHONSTARTUP'] = ''
import IPython # If this failed i want it to break lol
from IPython.terminal.prompts import Prompts, Token
from traitlets.config import Config

class MyPrompt(Prompts):
    def in_prompt_tokens(self, cli=None):
        return [
            (Token, ' '),
            (Token.PromptNum, str(self.shell.execution_count)),
            (Token.Prompt, u' │ '),
        ]

    def continuation_prompt_tokens(self, cli=None, width=None):
        if width is None:
            width = self._width()
        return [
            (Token.Prompt, (' ' * (width - 2)) + u'│ '),
        ]

    def out_prompt_tokens(self):
        return [
            (Token, ' '),
            (Token.OutPromptNum, str(self.shell.execution_count)),
            (Token.OutPrompt, '> '),
        ]

c = Config()
c.TerminalInteractiveShell.prompts_class = MyPrompt
c.TerminalInteractiveShell.editing_mode = "vi"
c.TerminalInteractiveShell.true_color = True
c.TerminalInteractiveShell.banner1 = ""
c.TerminalInteractiveShell.highlighting_style = "catppuccin-mocha"

IPython.start_ipython(config=c)
raise SystemExit
