# A simple logging plugin for cordova.

The existing plugin didn't work for me and was way more complicated than what I wanted or needed.

To wrap console methods in CoffeeScript this is what I'm using:

```coffeescript
  _setupLogging: =>
    window.simpleLogger = cordova.require('net.esalazar.cordova.SimpleLogger.simpleLogger')
    window.console_old = console
    window.console =
      log: (message) ->
        unless message.match /^CREATE |^SELECT /
          window.console_old.log(message)
          simpleLogger.logAtLevel("LOG", message)

      info: (message) ->
        window.console_old.info(message)
        simpleLogger.logAtLevel("INFO", message)

      warn: (message) ->
        window.console_old.warn(message)
        simpleLogger.logAtLevel("WARN", message)

      error: (message) ->
        window.console_old.error(message)
        simpleLogger.logAtLevel("ERROR", message)

```