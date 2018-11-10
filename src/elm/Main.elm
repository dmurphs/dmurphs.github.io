module Main exposing (main, view)

-- component import example

import Html exposing (..)
import Html.Attributes exposing (..)
import PageData exposing (Link, Skill, links, skillData)



-- APP


main : Html msg
main =
    view



-- VIEW


getLink : Link -> Html msg
getLink link =
    let
        className =
            "fab fa-3x " ++ .faClass link
    in
    a [ href (.url link) ] [ i [ class className ] [] ]


skillSection : Skill -> Html msg
skillSection skills =
    let
        getFaClass skill =
            .faClass skill ++ " fas fa-7x"
    in
    div [ class "col-xs-12 col-sm-6" ]
        [ i [ class (getFaClass skills) ] []
        , h3 [ class "name" ] [ text (.name skills) ]
        , ul [ class "list-group" ] (List.map (\focusArea -> li [ class "list-group-item" ] [ text focusArea ]) (.focusAreas skills))
        ]


view : Html msg
view =
    div [ class "container" ]
        [ -- inline CSS (literal)
          div [ class "row" ]
            [ div [ class "col-xs-12" ]
                [ div [ class "main-content" ]
                    [ h1 [ style "text-align" "center" ] [ text "Daniel Murphy" ]
                    , div [ class "links" ] (List.map getLink links)
                    , hr [] []
                    , div [ class "terminal" ]
                        [ div [ class "terminal-header" ]
                            [ span [ class "circle closebtn" ] []
                            , span [ class "circle minimize" ] []
                            , span [ class "circle expand" ] []
                            , text "daniel.murphy--zsh"
                            ]
                        , div [ class "terminal-body" ]
                            [ text "$ ./skills.sh"
                            , div [ class "skills row" ] (List.map skillSection skillData)
                            , span [ class "blinking" ] [ text "$ " ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
