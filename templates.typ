#let setup(title: "", author: "", paper: "a4", body) = {
  set document(author: author, title: title)
  set page(paper: paper, numbering: "1", number-align: center)
  set text(font: ("Linux Libertine","Noto Serif JP"), size: 10.5pt, lang: "jp")
  set heading(numbering: "1.a")
  align(center)[
    #block(text(weight: 700, 1.75em, title))
    #v(1em, weak: true)
    #text(1.25em, author)
  ]
  set par(justify: true)
  body
}