import Yi
import Yi.Config.Misc

myConfig :: Config
myConfig =
  defaultEmacsConfig
    { configCheckExternalChangesObsessively = False
    }

myUIConfig :: UIConfig
myUIConfig =
  (configUI myConfig)
    { configScrollStyle = Just SingleLine
    }

main :: IO ()
main =
  yi $ myConfig
    { configUI = myUIConfig
    }
