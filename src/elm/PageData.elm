module PageData exposing (Link, Skill, aboutMe, competencies, links, skillData)


aboutMe : String
aboutMe =
    """I am a Mathematician and Software Engineer with a passion for Machine Learning.
    I earned a Master's degree in Mathematics from the University of Montana.
    I enjoy learning about new technologies and working on challenging problems."""


type alias Skill =
    { name : String
    , faClass : String
    }


skillData : List Skill
skillData =
    [ { name = "Software Engineering"
      , faClass = "fa-laptop"
      }
    , { name = "Machine Learning"
      , faClass = "fa-brain"
      }
    ]


competencies : List String
competencies =
    [ "Python"
    , "JavaScript"
    , "Haskell"
    , "R"
    , "Apex"
    , "Django"
    , "React"
    , "Angular"
    , "scikit-learn"
    , "pandas"
    , "numpy"
    , "pytorch"
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
