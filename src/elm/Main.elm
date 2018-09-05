module Main exposing (main, view)

-- component import example

import Html exposing (..)
import Html.Attributes exposing (..)
import PageData exposing (Link, Skill, links, skillData)



-- APP


main : Html msg
main =
    view


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
        , ul [] (List.map (\focusArea -> li [] [ text focusArea ]) (.focusAreas skills))
        ]


view : Html msg
view =
    div [ class "container", style [ ( "margin-top", "30px" ), ( "text-align", "center" ) ] ]
        [ -- inline CSS (literal)
          div [ class "row" ]
            [ div [ class "col-xs-12" ]
                [ div [ class "main-content" ]
                    [ h1 [] [ text "Daniel Murphy" ]
                    , hr [] []
                    , div [ class "terminal" ]
                        [ div [ class "terminal-header" ] [ text "daniel.murphy--zsh" ]
                        , div [ class "terminal-body" ]
                            [ text "$ ./skills.sh"
                            , div [ class "skills container" ] (List.map skillSection skillData)
                            , hr [] []
                            , div [ class "links" ] (List.map getLink links)
                            , hr [] []
                            , span [ class "blinking" ] [ text "$ " ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
