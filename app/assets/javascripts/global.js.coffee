ready = ->

  theForm = $('form').parsley()

$(document).ready(ready)
# fire when Turbolinks is done it's AJAX stuff
$(document).on('page:load', ready)