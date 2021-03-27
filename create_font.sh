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

generate 'src/monofoki-Regular.sfd' 'export/Monofoki-Regular.ttf'
generate 'src/monofoki-Italic.sfd' 'export/Monofoki-Italic.ttf'
generate 'src/monofoki-Bold.sfd' 'export/Monofoki-Bold.ttf'
generate 'src/monofoki-Bold-Italic.sfd' 'export/Monofoki-Bold-Italic.ttf'

if [[ "$*" == --hint ]]
then
  ttfautohint export/Monofoki-Regular.ttf export/Monofoki-Regular-hinted.ttf
  ttfautohint export/Monofoki-Italic.ttf export/Monofoki-Italic-hinted.ttf
  ttfautohint export/Monofoki-Bold.ttf export/Monofoki-Bold-hinted.ttf
  ttfautohint export/Monofoki-Bold-Italic.ttf export/Monofoki-Bold-Italic-hinted.ttf
fi

generate 'src/monofoki-Regular.sfd' 'export/Monofoki-Regular.otf'
generate 'src/monofoki-Italic.sfd' 'export/Monofoki-Italic.otf'
generate 'src/monofoki-Bold.sfd' 'export/Monofoki-Bold.otf'
generate 'src/monofoki-Bold-Italic.sfd' 'export/Monofoki-Bold-Italic.otf'
