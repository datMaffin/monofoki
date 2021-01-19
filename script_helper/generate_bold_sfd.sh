#!/usr/bin/env bash

fontforge - << END
font = fontforge.open("src/mononoki-Regular.sfd")

font.fontname = 'MononokiFork-Bold'
font.fullname = 'Mononoki Fork Bold'
font.weight = 'Bold'
font.private['StemSnapH'] = [102]
font.private['StemSnapV'] = [110]
font.os2_weight = 700

font.selection.all() # TODO: exclude box drawing characters, etc.
font.changeWeight(25, "auto", 0, 0, "squish")

font.save("src/mononoki-Bold.sfd")

END

fontforge - << END
font = fontforge.open("src/mononoki-Italic.sfd")

font.fontname = 'MononokiFork-Bold-Italic'
font.fullname = 'Mononoki Fork Bold Italic'
font.weight = 'Bold'
font.private['StemSnapH'] = [102]
font.private['StemSnapV'] = [110]
font.os2_weight = 700

font.selection.all() # TODO: exclude box drawing characters, etc.
font.changeWeight(25, "auto", 0, 0, "squish")

font.save("src/mononoki-BoldItalic.sfd")

END
