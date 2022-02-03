# sh1chan's frontend (UI) for \*my Research!

[![Elm](https://img.shields.io/badge/elm-0.19.1-blue)](https://elm-lang.org/news/the-syntax-cliff)

```console
elm reactor # visit http://localhost:8000/src/Main.elm
```

```
Drag and Drop based cards to store the information about an *Object
- How much you should know about a Phone to buy ?

Phone <*Obj>
+-----------------------------------------+
| Options |     Item      |     Values    |
+-------- + ------------- +---------------+
| SimCard |     Phone     | SimCard<*Obj> |
|   ...   |               |      ...      |
+-----------------------------------------+

SimCard <*Obj>
+-----------------------------------------+
| Options |     Item      |     Values    |
+-------- + ------------- +---------------+
| Country |    SimCard    | Country<*obj> |
|   ...   |               |      ...      |
+-----------------------------------------+

*K <*Obj>
+-----------------------------------------+
| Options |     Item      |     Values    |
+-------- + ------------- +---------------+
|   foo   |      *K       |    foo:bar    |
+-----------------------------------------+
```

### UI
```
*Route
├── *Board
│   └── *App

<Route Main>
  <Board BuiltIn (Drag&Drop "Floated mode")>
    <Component TreeView>
      -- View Routes
      -- View Boards
      -- View Services
      -- View Applications
    </TreeView>
    <App Product (Optional)>
      <Component OptionsView (updates *TreeView)>
        ...
      </Component>
      <Service Share>
        ...
      </Share>
      <Component Calc>
        ...
      </Calc>
    </Product>
  </BuiltIn>
</Main>
```
