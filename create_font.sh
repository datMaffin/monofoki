#!/usr/bin/env bash

mkdir -p export

fontforge -c 'open("src/mononoki-Regular.sfd").generate("export/mononoki-Regular.ttf")'
fontforge -c 'open("src/mononoki-Italic.sfd").generate("export/mononoki-Italic.ttf")'
fontforge -c 'open("src/mononoki-Bold.sfd").generate("export/mononoki-Bold.ttf")'
fontforge -c 'open("src/mononoki-BoldItalic.sfd").generate("export/mononoki-BoldItalic.ttf")'

ttfautohint export/mononoki-Regular.ttf export/mononoki-Regular-hinted.ttf
ttfautohint export/mononoki-Italic.ttf export/mononoki-Italic-hinted.ttf
ttfautohint export/mononoki-Bold.ttf export/mononoki-Bold-hinted.ttf
ttfautohint export/mononoki-BoldItalic.ttf export/mononoki-BoldItalic-hinted.ttf
