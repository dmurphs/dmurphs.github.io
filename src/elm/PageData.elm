module PageData exposing (Link, Skill, links, skillData)


type alias Skill =
    { name : String
    , faClass : String
    , focusAreas : List String
    }


skillData : List Skill
skillData =
    [ { name = "Software Engineering"
      , faClass = "fa-laptop"
      , focusAreas =
            [ "Django"
            , "Salesforce Platform"
            , "React"
            , "Angular"
            , "Elm"
            , "Haskell"
            ]
      }
    , { name = "Machine Learning"
      , faClass = "fa-brain"
      , focusAreas =
            [ "scikit-learn"
            , "pandas"
            , "numpy"
            , "R"
            , "jupyter"
            , "pytorch"
            ]
      }
    ]


type alias Link =
    { url : String
    , faClass : String
    }


links : List Link
links =
    [ { url = "https://www.linkedin.com/in/daniel-murphy-15a00187/"
      , faClass = "fa-linkedin"
      }
    , { url = "https://github.com/dmurphs"
      , faClass = "fa-github"
      }
    ]
