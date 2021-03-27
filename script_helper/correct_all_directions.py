font = fontforge.open("../src/monofoki-Regular.sfd")
for glyph in font.glyphs():
    glyph.correctDirection()
font.save()

font = fontforge.open("../src/monofoki-Italic.sfd")
for glyph in font.glyphs():
    glyph.correctDirection()
font.save()

font = fontforge.open("../src/monofoki-Bold.sfd")
for glyph in font.glyphs():
    glyph.correctDirection()
font.save()

font = fontforge.open("../src/monofoki-Bold-Italic.sfd")
for glyph in font.glyphs():
    glyph.correctDirection()
font.save()
