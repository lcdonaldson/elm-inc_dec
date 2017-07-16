import Html exposing (beginnerProgram, div, button, text)
import Html.Events exposing (onClick)


main =
  beginnerProgram { model = 0, view = view, update = update }


view model =
  div [
        style
        [
          ("margin", "0")
          ,("padding", "1rem 2rem")
          ,("background-color", "#EAEAEA")
        ]
      ]
    [ button [ onClick Increment ] [ text "+" ]
    , div [] [ text (toString model) ]
    , button [ onClick Decrement ] [ text "-" ]
    , div []
      [
        button [onClick Clear] [ text "Clear"] 
      ]
    ]
    


type Msg = Increment | Decrement | Clear


update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

    Clear ->
      model * 0
