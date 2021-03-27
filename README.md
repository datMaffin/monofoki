# Fork of the font Mononoki; *Monofoki*
Original repository: https://github.com/madmalik/mononoki

## Goals of this fork
The goal of this fork is to "improve" the mononoki font by changing it to use 
my preferences:
- [x] Make the "m" similar to Ubuntu Mono "m"
- [x] Decrease width of "n" similar to Ubuntu Mono
  + Change glyphs dependent on "n" correspondingly: "h", "r", "u", "k"
- [x] Increase width of "o" similar to Ubuntu Mono
  + Change glyphs dependent on "o" correspondingly: "O", "e", "U", "Q"
  + [x] Also need to check size relation to "C", "c" and "G".
        Looks ok... "O" is a little bit wider than "C" and "G". "C" and "G" 
        have the same width. May increase width of "C" and "G" a little bit.
- [x] Increase width of "s" similar to Ubuntu Mono
  + Study the relation of width from "s" to "S" in other Fonts.
    Fonts vary in  their relation. Decided on mononoki "s" looks perfectly 
    fine.
- [x] Use "l" glyph for the "i" as well
- [x] Increase height of middle line in "a" to line up with "e"
  - [x] May need further refinement
- [x] Italic "J" and BoldItalic "J" have different shapes
- [x] Decrease width of "w" to be more similar in width with "m"
  - [x] May need further refinement
- [x] Fix missing UTF-8 glyphs: ä, ö, ü
  + This problem happens when creating a file with the macOS finder 
    conaining ä, ö, ü: When using iTerm the file name is not printed in the 
    Mononoki-Font.
  + The **fix** was: Add zero width glyph COMBINING DIARESIS (Nr. 776) with 
    diaresis in negative space.
  + Setting all the combining characters to "mark" and having them in the regular (positive) space also seemed to work
- [x] Reduce bold italic "r" stem width to equal all other letters stem widths
- [x] TTF autohinted bold italic "o" is too high (turned out to be an exclusive 
      Java/Intellij Idea issue; probably not related to TTF autohinted)
- [x] CANCELED: Put "E" and "F" middle stroke ontu the same height

## Further experiments/provide more options
* Lower the bar of "f" similar to Consolas
* Create a build pipeline (with the source being FontForge .sfd files)
  - Use ttfautohint
* Bold currently increases the height of glyphs a little to much for my taste.
  - Bold is now auto generated: Generate the bold sfd's from the regular sfd's with the `script_helper/generate_bold_sfd.sh` script.

## Fork specific problems to solve
* FontForge does not have a tool to create rounded edges

## Other TODOs
- [x] Fix directions of glyphs in FontForge
- [x] .ttf fonts wont work on macOS (otf is working)
- [x] macOS is still complaining about the name table
- [x] FontForge tutorial says to change layers to quadratic before exporting 
      font as ttfs
- [x] Issues with back- and frontticks: for some reason they get wrongly
      rendered on top of the letter infront.
      Adding all combining accents (from UTF 0x300 onward) did not resolve
      this issue.
      Solution (Fix) was:
      For all affected glyphs set "OT Glyph Class" to "Base Glyph"
