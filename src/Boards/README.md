# Boards is like a layers.
```
layer *Foo {
  content<*children> [
    Card A, Card B, layer *Bar {...}, ...,  Card N,
  ]
  exec :: this.BusinessLogic.apply(content)
}
```
