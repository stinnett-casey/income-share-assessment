# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  $('#previous').click ->
    $active_question = $(this).closest('.questions').find('.active')
    if $active_question.prev('.question').length == 1
      $active_question.removeClass('active').prev('.question').addClass('active');
      lastAndFirstCheck()
      index = $active_question.index()-3
      $('.top-bar-middle').text(if index == 0 then "Enter Your Info" else "You're on " + (index) + "/5")

  $('#next').click ->
    $active_question = $(this).closest('.questions').find('.active')
    if $active_question.next('.question').length == 1
      $active_question.removeClass('active').next('.question').addClass('active');
      lastAndFirstCheck()
      $('.top-bar-middle').text("You're on " + ($active_question.index()-1) + "/5")

  $('input[type="checkbox"]').change ->
    $('input[type="checkbox"]').prop 'checked', false
    $(this).prop 'checked', true

  $('.answer').click ->
    $(this).closest('.question').find('.answer').removeClass('selected')
    $(this).addClass 'selected'

  $('.assessment').submit (e)->
    if $('[name="name"]').val() == '' && $('[name="email"]').val() == ''
      $('[name="name"]').addClass('error')
      $('[name="email"]').addClass('error')
      alert 'Fill in your name and email address!'
      return false
    else if $('[name="name"]').val() == ''
      $('[name="name"]').addClass('error')
      alert 'Fill in your name!'
      return false
    else if $('[name="email"]').val() == ''
      alert 'Fill in your email!'
      return false

    $('.question:not(.info)').each ->
      one_answered = false
      $(this).find('input[type="radio"]').each ->
        if $(this).is(':checked')
          one_answered = true
      if !one_answered
        $('.question').removeClass('active')
        $(this).closest('.question').addClass('active')
        return false
      
        

  $(document).on 'keyup', (e)->
    left_arrow = 37
    right_arrow = 39
    if !$('#lightbox').is(':visible')
      if e.which == left_arrow
        $('#previous').click()
      else if e.which == right_arrow
        $('#next').click()

  $('#submit').click ->
    $(this).closest('form').submit()
      

# Disables the previous and next buttons at the proper times
lastAndFirstCheck = ->
  if $('.questions').find('.active')[0] == $('.question').last()[0] #if last question
    $('#submit').show().css('display', 'block')
    $('#next').prop('disabled', true)
    $('#previous').prop('disabled', false)
  else if $('.questions').find('.active')[0] == $('.question').first()[0] #if first question
    $('#previous').prop('disabled', true)
    $('#next').prop('disabled', false)
    $('#submit').hide()
  else
    $('#submit').hide()
    $('#next').prop('disabled', false)
    $('#previous').prop('disabled', false)


  
