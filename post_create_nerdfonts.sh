#!/usr/bin/env bash

if [ -f "export/Monofoki-Regular.otf" ]; then
    nerd-font-patcher --complete --outputdir 'export/' 'export/Monofoki-Regular.otf'
fi

if [ -f "export/Monofoki-Italic.otf" ]; then
    nerd-font-patcher --complete --outputdir 'export/' 'export/Monofoki-Italic.otf'
fi

if [ -f "export/Monofoki-Bold-Italic.otf" ]; then
    nerd-font-patcher --complete --outputdir 'export/' 'export/Monofoki-Bold-Italic.otf'
fi

if [ -f "export/Monofoki-Bold.otf" ]; then
    nerd-font-patcher --complete --outputdir 'export/' 'export/Monofoki-Bold.otf'
fi


if [ -f "export/Monofoki-Regular-hinted.ttf" ]; then
    nerd-font-patcher --complete --outputdir 'export/' 'export/Monofoki-Regular-hinted.ttf'
elif [ -f "export/Monofoki-Regular.ttf" ]; then
    nerd-font-patcher --complete --outputdir 'export/' 'export/Monofoki-Regular.ttf'
fi

if [ -f "export/Monofoki-Italic-hinted.ttf" ]; then
    nerd-font-patcher --complete --outputdir 'export/' 'export/Monofoki-Italic-hinted.ttf'
elif [ -f "export/Monofoki-Italic.ttf" ]; then
    nerd-font-patcher --complete --outputdir 'export/' 'export/Monofoki-Italic.ttf'
fi

if [ -f "export/Monofoki-Bold-Italic-hinted.ttf" ]; then
    nerd-font-patcher --complete --outputdir 'export/' 'export/Monofoki-Bold-Italic-hinted.ttf'
elif [ -f "export/Monofoki-Bold-Italic.ttf" ]; then
    nerd-font-patcher --complete --outputdir 'export/' 'export/Monofoki-Bold-Italic.ttf'
fi

if [ -f "export/Monofoki-Bold-hinted.ttf" ]; then
    nerd-font-patcher --complete --outputdir 'export/' 'export/Monofoki-Bold-hinted.ttf'
elif [ -f "export/Monofoki-Bold.ttf" ]; then
    nerd-font-patcher --complete --outputdir 'export/' 'export/Monofoki-Bold.ttf'
fi

curl -o 'export/LICENSE-nerd-font' 'https://raw.githubusercontent.com/ryanoasis/nerd-fonts/b82bd819aa6a9ac6d0bfc5a26fb262dd248d7c4d/LICENSE'
curl -o 'export/license-audit-nerd-font.md' 'https://raw.githubusercontent.com/ryanoasis/nerd-fonts/a2697b0fefe5e8d946c18a167a9496c6f224d7c9/license-audit.md'
