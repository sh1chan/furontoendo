module Apps.Cards.Flip exposing (main)

import Browser
import Html exposing (Html, p, div, img, text)
import Html.Attributes exposing (src, width, height)
import Html.Events exposing (onClick)


static_path : String -> String
static_path file
  = "Apps/Cards/" ++ file


type CardData
  = Face
  | Back

type alias Model
  = Int


init : Model
init =
  0


update : CardData -> Model -> Model
update msg model =
  case msg of
    Face ->
      model - 1
    Back ->
      model + 1


card_img card_id =
  div [ onClick Back ]
  [ img [ src (static_path "4rut41ru.jpg"), width 300, height 300 ] []
  ]


card_information card_id =
  div [ onClick Face ]
  [ p [] [ text "Card Information" ]
  ]


view : Model -> Html CardData
view model =
  if model == 0 then
    card_img 1
  else
    card_information 1


main =
  Browser.sandbox { init = init, update = update, view = view }
