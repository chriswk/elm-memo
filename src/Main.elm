module Main (..) where

import Html exposing (..)
import Effects exposing (Effects, Never)
import Task
import Components.Memo exposing (..)
import StartApp

init : ( AppModel, Effects Action )
init = ( initialModel, Effects.none )

app : StartApp.App AppModel
app =
  StartApp.start
    { init = init
    , inputs = []
    , update = update
    , view = view }

main =
  app.html

port runner : Signal (Task.Task Never ())
port runner =
  app.tasks
