module Components.Memo where

import Html exposing (..)
import Effects exposing (Effects)
import Components.Tools exposing (partition2)

type Action
  = NoOp

type alias Tile =
  { matched: Bool
  , peeking: Bool
  , name: String
  }

type alias AppModel =
  {}

initialModel : AppModel
initialModel =
  {}

view : Signal.Address Action -> AppModel -> Html
view address model =
  div [] [ text "Hello world" ]

update : Action -> AppModel -> ( AppModel, Effects Action )
update action model =
  ( model, Effects.none )
