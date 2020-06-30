# Fork of the font Mononoki
Original repository: https://github.com/madmalik/mononoki

## Goals of this fork
The goal of this fork is to "improve" the mononoki font by changing it to use 
my preferences:
- [x] Make the "m" similar to Ubuntu Mono "m"
- [ ] Decrease width of "n" similar to Ubuntu Mono
  + Change glyphs dependent on "n" correspondingly: "h", "r", "u", "k"
- [ ] Increase width of "o" similar to Ubuntu Mono
  + Change glyphs dependent on "o" correspondingly: "O", "e", "U", "Q"
- [ ] Increase width of "s" similar to Ubuntu Mono
  + Study the relation of width from "s" to "S" in other Fonts
- [x] Use "l" glyph for the "i" well
- [x] Increase height of middle line in "a" to line up with "e"
  - [ ] May need further refinement
- [ ] Italic "J" and BoldItalic "J" have different shapes
- [ ] Decrese width of "w" to be more similar in width with "m"
- [ ] Fix missing UTF-8 glyphs: ä, ö, ü
  + This problem happens when creating a file with the macOS finder 
    conaining ä, ö, ü: When using iTerm the file name is not printed in the 
    Mononoki-Font.

## Further experiments/provide more options
* Lower the bar of "f" similar to Consolas
* Create a build pipeline (with the source being FontForge .sfd files)
  - Use ttfautohint
* Bold currently increases the height of glyphs a little to much for my taste.

## Fork specific problems to solve
* FontForge does not have a tool to create rounded edges

## Other TODOs
- [x] Fix directions of glyphs in FontForge
- [ ] .ttf fonts wont work on macOS (otf is working)
