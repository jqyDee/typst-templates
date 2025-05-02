#let algodat(date_abgabe: none, date: none, body) = {
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

  let author = "Matti Fischbach"
  let email = "matti.fischbach@web.de"
  let title = "Algorithmen und Datenstrukturen " + date_abgabe

  set document(author: author, title: title)

  show math.equation: set text(weight: 400)

  set page(margin: 1.75in, numbering: "1", number-align: center)
  set text(font: "New Computer Modern")
  show raw: set text(font: "New Computer Modern Mono")
  show heading: set block(above: 1.4em, below: 1em)

  // set heading(numbering: "1.1")
  
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
  set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)

  set table(stroke: none)
  set table.vline(stroke: 0.5pt)
  set table.hline(stroke: 0.5pt)

  body
}

