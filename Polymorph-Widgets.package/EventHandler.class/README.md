Events in Morphic originate in a Hand, pass to a target morph, and are then dispatched by an EventHandler.  EventHandlers support redirection of mouse and keyboard activity by specifying and independent recipient object and message selector for each of the possible events.  In addition each eventHandler can supply an optional value parameter for distinguishing between, eg, events from a number of otherwise identical source morphs.