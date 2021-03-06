module Pages.Editor.Sidebar exposing (..)

import Colors
import Css exposing (..)
import Css.Elements exposing (..)
import Css.File exposing (..)


vimModeLabel =
    uniqueClass
        [ color Colors.lightMediumGray ]


ad =
    uniqueClass
        [ width (pct 100)
        , flexShrink (int 0)
        , backgroundColor Colors.darkGray
        ]


sections =
    uniqueClass
        [ position relative
        , flexShrink (int 1)
        , height (pct 100)
        , overflowY hidden
        , width (pct 100)
        , displayFlex
        , flexDirection column
        ]


container : UniqueClass
container =
    uniqueClass
        [ position relative
        , width (pct 100)
        , backgroundColor Colors.darkGray
        , displayFlex
        , flexDirection column
        , alignItems center
        , height (pct 100)
        ]


settings : UniqueClass
settings =
    uniqueClass
        [ position relative
        , padding2 zero (px 12)
        ]


setting : UniqueClass
setting =
    uniqueClass
        [ margin2 (px 16) zero ]


packagesSectionTitle =
    uniqueClass
        [ fontSize (px 14)
        , color Colors.lightGray
        , paddingBottom (px 8)
        ]


packages =
    uniqueClass
        [ padding (px 12)
        ]


search =
    uniqueClass
        [ marginBottom (px 12) ]


package =
    uniqueClass
        [ marginBottom (px 12)
        , lastChild
            [ marginBottom zero ]
        ]


about =
    uniqueClass
        [ padding2 (px 16) (px 12)
        ]


aboutHeading =
    uniqueClass
        [ fontSize (px 16)
        , fontWeight bold
        , color Colors.lightGray
        ]


aboutParagraph =
    uniqueClass
        [ fontSize (px 14)
        , color Colors.lightGray
        , descendants
            [ a [ color Colors.pink, textDecoration underline ]
            ]
        ]


aboutCopyright =
    uniqueClass
        [ fontSize (px 12)
        , color Colors.lightMediumGray
        ]
