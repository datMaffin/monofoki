#!/usr/bin/env bash

mkdir -p export

function generate {
  source=$1
  export=$2

  fontforge - << END
font = fontforge.open("$source")

if "$source"[-3:] == "ttf":
  layers = font.layers
  for layer_name in layers:
    layers[layer_name].is_quadratic = True

for glyph in font.glyphs():
  glyph.unlinkRef()
  glyph.removeOverlap()
  glyph.round()
  glyph.addExtrema("all")
  if glyph.validate() & 0x8 == 0x8:
    glyph.correctDirection()
  glyph.removeOverlap()
  glyph.round()
  glyph.addExtrema("all")

font.generate("$export")
END

}

generate 'src/mononoki-Regular.sfd' 'export/MononokiFork-Regular.ttf'
generate 'src/mononoki-Italic.sfd' 'export/MononokiFork-Italic.ttf'
generate 'src/mononoki-Bold.sfd' 'export/MononokiFork-Bold.ttf'
generate 'src/mononoki-BoldItalic.sfd' 'export/MononokiFork-BoldItalic.ttf'

if [[ "$*" == --hint ]]
then
  ttfautohint export/MononokiFork-Regular.ttf export/MononokiFork-Regular-hinted.ttf
  ttfautohint export/MononokiFork-Italic.ttf export/MononokiFork-Italic-hinted.ttf
  ttfautohint export/MononokiFork-Bold.ttf export/MononokiFork-Bold-hinted.ttf
  ttfautohint export/MononokiFork-BoldItalic.ttf export/MononokiFork-BoldItalic-hinted.ttf
fi

generate 'src/mononoki-Regular.sfd' 'export/MononokiFork-Regular.otf'
generate 'src/mononoki-Italic.sfd' 'export/MononokiFork-Italic.otf'
generate 'src/mononoki-Bold.sfd' 'export/MononokiFork-Bold.otf'
generate 'src/mononoki-BoldItalic.sfd' 'export/MononokiFork-BoldItalic.otf'
