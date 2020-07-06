#!/usr/bin/env bash

mkdir -p export

function generate {
  source=$1
  export=$2

  fontforge - << END
font = fontforge.open("$source")
for glyph in font.glyphs():
  glyph.unlinkRef()
  glyph.removeOverlap()
  glyph.round()
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
