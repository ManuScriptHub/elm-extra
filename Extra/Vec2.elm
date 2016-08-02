module Extra.Vec2 exposing (origin, xUnit, yUnit, toStringTuple, fromSize, toIntTuple, rotate)

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


fromSize : { width : Int, height : Int } -> Vec2
fromSize size =
    vec2 (toFloat size.width) (toFloat size.height)


toIntTuple : Vec2 -> ( Int, Int )
toIntTuple v =
    ( round <| getX v
    , round <| getY v
    )


rotate : Vec2 -> Float -> Vec2
rotate v g =
    let
        ix =
            getX v

        iy =
            getY v

        r =
            g * 0.017453293

        s =
            sin r

        c =
            cos r

        sx =
            s * ix

        cx =
            c * ix

        sy =
            s * iy

        cy =
            c * iy

        tx =
            cx - sy

        ty =
            sx + cy
    in
        vec2 tx ty
