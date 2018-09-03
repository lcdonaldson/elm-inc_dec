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
    [
    img [ style [("margin-top", "2rem"), ("width", "32px"), ("height", "32px")], src "https://s-media-cache-ak0.pinimg.com/236x/a3/da/3f/a3da3f6884ed150b719c95669d21976e.jpg"][]
    button [ onClick Increment ] [ text "+" ]
    , div [] [ text (toString model) ]
    , button [ style[("border-radius","0.5rem")] onClick Decrement ] [ text "-" ]
    , div []
      [
        button [style[("border-radius","0.5rem")] onClick Clear] [ text "Clear"] 
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
