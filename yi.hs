import Yi
import Yi.Config.Misc

myConfig :: Config
myConfig = defaultEmacsConfig

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
