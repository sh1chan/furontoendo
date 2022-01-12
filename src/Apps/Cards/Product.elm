{-
Card for Product information (Product Object)

  Attributes
  ----------
  url - product url (from parsed resources)
  name - product name
  price - editable
  picture - product picture

  Methods (API)
  -------------
  get_(url|name|price|picture)

  Requests
  --------
  GET - (id)
  PUT - (id, url)
    - NOTE: rewrites whole information
  POST - (id, name, price, picture)
    - NOTE: flag to let ignore *PUT* rewrite
  DELETE - (id)
  UPDATE - (name, price, picture)
    - NOTE: *url can't be updated, create a new one instead
-}

module Apps.Cards.Product exposing (main)

import Browser
import Html exposing (Html, div, input, p, img, text)
import Html.Attributes exposing (src, width, height, readonly)
import Html.Events exposing (onClick)

import String

{-
div [] [
  input [] [] -- url
    - onclick
  input [] [] -- name
    - onclick
  input [] [] -- price
    - onclick
  img [] [] -- picture
    - onclick
]
-}

type alias ProductData =
  { url: String
  , name: String
  , price: Float
  , picture: String
  }

type ProductState
  = Get
  | Update

type alias PState
  = Int


init : PState
init =
  0


update : ProductState -> PState -> PState
update msg state =
  case msg of
    Get ->
      state + 1
    Update ->
      state - 1


product_get =
  div [ onClick Update ]
  [ img [ src "4rut41ru.jpg", width 300, height 300 ] []
  , p [] [ text "Altair MUP" ]
  , p [] [ text "0" ]
  ]

product_update =
  div []
  [ input [] [ text "Url" ]
  , input [] [ text "Name" ]
  , input [] [ text "Price" ]
  , input [] [ text "Picture" ]
  ]


view : Int -> Html ProductState
view model =
  if model == 0 then
    product_get
  else
    product_update

main =
  Browser.sandbox { init = init, update = update, view = view }
