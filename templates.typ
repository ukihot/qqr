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

#let appendices(body) = {
  counter(heading).update(0)
  counter("appendices").update(1)

  set heading(
    numbering: (..nums) => {
      let vals = nums.pos()
      let value = "ABCDEFGHIJ".at(vals.at(0) - 1)
      if vals.len() == 1 {
        return "APPENDIX " + value + ": "
      }
      else {
        return value + "." + nums.pos().slice(1).map(str).join(".")
      }
    }  
  );
  [#body]
}
