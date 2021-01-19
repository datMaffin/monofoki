#!/usr/bin/env bash

fontforge - << END
font = fontforge.open("src/mononoki-Regular.sfd")

font.fontname = 'ComicMono-Bold'
font.fullname = 'Comic Mono Bold'
font.weight = 'Bold'

font.selection.all() # TODO exclude box drawing characters, etc.
font.changeWeight(25, "LCG", 0, 0, "squish")

font.save("src/mononoki-Bold.sfd")

END
