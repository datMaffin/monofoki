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

generate 'src/mononoki-Regular.sfd' 'export/mononoki-Regular.ttf'
generate 'src/mononoki-Italic.sfd' 'export/mononoki-Italic.ttf'
generate 'src/mononoki-Bold.sfd' 'export/mononoki-Bold.ttf'
generate 'src/mononoki-BoldItalic.sfd' 'export/mononoki-BoldItalic.ttf'

if [[ "$*" == --hint ]]
then
  ttfautohint --reference=export/mononoki-Regular.ttf export/mononoki-Regular.ttf export/mononoki-Regular-hinted.ttf
  ttfautohint --reference=export/mononoki-Italic.ttf export/mononoki-Italic.ttf export/mononoki-Italic-hinted.ttf
  ttfautohint --reference=export/mononoki-Regular.ttf export/mononoki-Bold.ttf export/mononoki-Bold-hinted.ttf
  ttfautohint --reference=export/mononoki-Italic.ttf export/mononoki-BoldItalic.ttf export/mononoki-BoldItalic-hinted.ttf
fi

generate 'src/mononoki-Regular.sfd' 'export/mononoki-Regular.otf'
generate 'src/mononoki-Italic.sfd' 'export/mononoki-Italic.otf'
generate 'src/mononoki-Bold.sfd' 'export/mononoki-Bold.otf'
generate 'src/mononoki-BoldItalic.sfd' 'export/mononoki-BoldItalic.otf'
