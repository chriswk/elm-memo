module Components.Memo where

import Html exposing (..)
import Effects exposing (Effects)
import Components.Tools exposing (partition2)
import String

type Action
  = NoOp

type alias Tile =
  { matched: Bool
  , peeking: Bool
  , name: String
  }

type alias Letter =
  { upperCase : String
  , lowerCase : String
  , name : String
  , westernName : String
  }

type alias AppModel =
  { tiles: (List Tile) }

initialModel : AppModel
initialModel =
  { tiles = [] }

view : Signal.Address Action -> AppModel -> Html
view address model =
    let
        names = String.concat (List.map (\e -> (toString e.name) ++ ", ") greekLetters)
    in
        div [] [ text names ]

update : Action -> AppModel -> ( AppModel, Effects Action )
update action model =
  ( model, Effects.none )

greekLetters = [ Letter "Α" "α" "άλφα" "Alfa"
    , Letter "Β" "β" "βήτα" "Beta"
    , Letter "Γ" "γ" "γάμμα" "Gamma"
    , Letter "Δ" "δ" "δέλτα" "Delta"
    , Letter "Ε" "ε" "έψιλον" "Epsilon"
    , Letter "Ζ" "ζ" "ζήτα" "Zeta"
    , Letter "Η" "η" "ήτα" "Eta"
    , Letter "Θ" "θ" "θήτα" "Theta"
    , Letter "Ι" "ι" "ιώτα" "Iota"
    , Letter "Κ" "κ" "κάππα" "Kappa"
    , Letter "Λ" "λ" "λάμδα" "Lambda"
    , Letter "Μ" "μ" "μν" "Mu"
    , Letter "Ν" "ν" "νυ" "Nu"
    , Letter "Ξ" "ξ" "ξι" "Xi"
    , Letter "Ο" "ο" "όμικρον" "Omikron"
    , Letter "Π" "π" "πι" "Pi"
    , Letter "Ρ" "ρ" "ρώ" "Rho"
    , Letter "Σ" "σ" "σίγμα" "Sigma"
    , Letter "Τ" "τ" "ταυ" "Tau"
    , Letter "Υ" "υ" "ύψιλον" "Upsilon"
    , Letter "Φ" "φ" "φι" "Phi"
    , Letter "Χ" "χ" "χι" "Chi"
    , Letter "Ψ" "ψ" "ψι" "Psi"
    , Letter "Ω" "ω" "ωμέγα" "Omega" ]
