font = fontforge.open("../src/mononoki-Regular.sfd")
for glyph in font.glyphs():
    glyph.correctDirection()
font.save()

font = fontforge.open("../src/mononoki-Italic.sfd")
for glyph in font.glyphs():
    glyph.correctDirection()
font.save()

font = fontforge.open("../src/mononoki-Bold.sfd")
for glyph in font.glyphs():
    glyph.correctDirection()
font.save()

font = fontforge.open("../src/mononoki-BoldItalic.sfd")
for glyph in font.glyphs():
    glyph.correctDirection()
font.save()
