module Extra.Vec2 exposing (origin, xUnit, yUnit, toStringTuple)

import Math.Vector2 exposing (Vec2, vec2, getX, getY)


{-| Default constructor at x = 0, y = 0
-}
origin : Vec2
origin =
    vec2 0 0


{-| Simple constructor at x = 1, y = 0
-}
xUnit : Vec2
xUnit =
    vec2 1 0


{-| Simple Constructor a x = 0, y = 1
-}
yUnit : Vec2
yUnit =
    vec2 0 1


toStringTuple : Vec2 -> ( String, String )
toStringTuple v =
    ( toString <| getX v
    , toString <| getY v
    )
