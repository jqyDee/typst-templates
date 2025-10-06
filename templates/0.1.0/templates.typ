#let generic(date: none, title: none, title_extra: none, body) = {
  let author = "Matti Fischbach"
  let email = "matti.fischbach@web.de"
  let title = title + " " + title_extra

  set document(author: author, title: title)

  show math.equation: set text(weight: 400)


  set page(margin: 1in, numbering: "1", number-align: center)
  set text(font: "New Computer Modern")
  show raw: set text(font: "New Computer Modern Mono")
  show heading: set block(above: 1.4em, below: 1em)

  show heading.where(level: 1): it => {
    let pg = counter(page).at(it.location()).first()

    if pg > 1 {
      pagebreak(weak: true)
    }

    it
  }


  set heading(numbering: "1.1")
  
  // Title row.
  align(center)[
    #block(text(weight: 500, 1.55em, title))
    #v(1em, weak: true)
    #date
  ]

  // Author information.
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: 1fr,
      gutter: 1em,
      align(center)[
        #author \
        #email
      ]
    ),
  )

  // Main body.
  set par(leading: 0.75em, spacing: 1.00em, first-line-indent: 0em, justify: true)

  set enum(numbering: "    (a)", spacing: 1.3em)

  set table(stroke: none)
  set table.vline(stroke: 0.5pt)
  set table.hline(stroke: 0.5pt)

  body
}

#let algodat(title_extra: none, date: none, body) = {
  /*
  table template
  -----------------
  #table(columns: 4, 
    [\#], table.vline(), [1], table.vline(), [2], table.vline(), [3], 
    table.hline(),
    [x], [x], [x], [x],
  )
  
  pseudocode import
  -----------------
  #import "@preview/algorithmic:0.1.0"
  #import algorithmic: algorithm

  */

  let title = "Algorithmen und Datenstrukturen"

  show: generic.with(
    date: date,
    title_extra: title_extra,
    title: title,
  )

  set heading(numbering: none)

  body
}
