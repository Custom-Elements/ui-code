#ui-code
Wrap this around code strings for hilighting.

    hljs = require 'highlight.js'

    Polymer 'ui-code',

##Events

##Attributes and Change Handlers

##Methods

##Event Handlers

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->
        if @language
          code = hljs.highlightAuto @innerHTML, [@language]
        else
          code = hljs.highlightAuto @innerHTML
        console.log @innerHTML, code
        @innerHTML = ''
        @$.display.innerHTML = hljs.fixMarkup code.value

      domReady: ->

      detached: ->
