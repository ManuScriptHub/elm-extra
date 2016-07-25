module Extra.Svg exposing (roundedRect, translate)

import Html exposing (..)
import Svg exposing (..)
import Svg.Attributes as SA exposing (..)
import Extra.Vec2 exposing (..)
import Math.Vector2 as Vec2 exposing (Vec2, vec2, getX, getY, fromTuple)


roundedRect : Vec2 -> Vec2 -> Float -> String -> Svg a
roundedRect pos size cornerRadius styleString =
    let
        ( px, py ) =
            (toStringTuple pos)

        ( sx, sy ) =
            (toStringTuple size)

        r =
            (toString cornerRadius)
    in
        Svg.rect
            [ x px
            , y py
            , SA.width sx
            , SA.height sy
            , rx r
            , ry r
            , SA.style styleString
            ]
            []



-- fromList : Vec2 -> List (Svg a) -> Html a
-- fromList size content =
--     let
--         viewRect =
--             [ -size.x / 2
--             , -size.y / 2
--             , size.x
--             , size.y
--             ]
--
--         --,
--     in
--         Svg.svg [ viewBox (join " " <| map toString viewRect) ] content
--
--


makeText : String -> Vec2 -> Float -> String -> Svg a
makeText str pos textHeight textStyle =
    text'
        [ SA.x (toString <| getX pos)
        , SA.y (toString <| getY pos)
        , SA.fontSize (toString textHeight)
        , SA.style textStyle
        ]
        [ Svg.text str ]


translate : Vec2 -> Svg.Attribute b
translate pos =
    SA.transform <| "translate (" ++ (toString <| getX pos) ++ "," ++ (toString <| getY pos) ++ ")"


main : Html a
main =
    let
        pos =
            vec2 150 150

        size =
            vec2 20 50

        rr =
            roundedRect pos size 5 "stroke: blue; stroke-width: 1"
    in
        Svg.svg [ viewBox "0 0 300 300" ] [ rr ]



--in
