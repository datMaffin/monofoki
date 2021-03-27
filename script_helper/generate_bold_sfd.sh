#!/usr/bin/env bash

fontforge - << END
font = fontforge.open("src/monofoki-Regular.sfd")

font.fontname = 'Monofoki-Bold'
font.fullname = 'Monofoki Bold'
font.weight = 'Bold'
font.private['StemSnapH'] = [97]
font.private['StemSnapV'] = [105]
font.os2_weight = 700

font.selection.all() # TODO: exclude box drawing characters, etc.
font.changeWeight(20, "auto", 0, 0, "squish")

font.save("src/monofoki-Bold.sfd")

END

fontforge - << END
font = fontforge.open("src/monofoki-Italic.sfd")

font.fontname = 'Monofoki-Bold-Italic'
font.fullname = 'Monofoki Bold Italic'
font.weight = 'Bold'
font.private['StemSnapH'] = [97]
font.private['StemSnapV'] = [105]
font.os2_weight = 700

font.selection.all() # TODO: exclude box drawing characters, etc.
font.changeWeight(20, "auto", 0, 0, "squish")

font.save("src/monofoki-Bold-Italic.sfd")

END
