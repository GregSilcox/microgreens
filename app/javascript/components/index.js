import { render } from "react-dom"
import { createElement } from "react"

render(
  createElement("h1", null, "hello world"),
  document.getElementById("root")
)
