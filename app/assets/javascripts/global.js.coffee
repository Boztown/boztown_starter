ready = ->

  # client-side validations
  theForm = $('form').parsley()

  # the old "add_fields" thing from Railscasts
  $('form').on 'click', '.add_fields', (e) ->
      e.preventDefault()
      time = new Date().getTime()
      regexp = new RegExp($(this).data('id'), 'g')

      # if a parent is specified that's the container we'll use to inject the new HTML
      if $(this).data('parent') != null
        $( $(this).data('parent') ).append( $(this).data('fields').replace(regexp, time) )
      else
        $(this).before($(this).data('fields').replace(regexp, time)).hide().slideDown('fast')
      


$(document).ready(ready)
# fire when Turbolinks is done it's AJAX stuff
$(document).on('page:load', ready)



