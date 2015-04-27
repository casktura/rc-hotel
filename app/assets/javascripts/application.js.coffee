# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require semantic-ui
#= require miniNotification
#= require jquery.datetimepicker
#= require jquery.stickytableheaders.min
#= require_tree .
$(document).on "page:change", ->

  #Dropdown ของ Menu Bar
  $("div.ui.dropdown").dropdown({on: "hover"})

  #Dropdown ของ Select Input
  $("select.ui.dropdown").dropdown()

  #Sticky
  $(".ui.sticky").sticky()
  $("table").stickyTableHeaders()

  #Notification
  $("#notification").miniNotification({position: "bottom", time: 10000})

  #Datepicker
  $("#reserf_booking_date").datetimepicker({
    timepicker: false,
    format: "Y-m-d",
    mask: true,
    lang: "th",
    closeOnDateSelect: true,
    value: $("#reserf_booking_date").val() if $("#reserf_booking_date").val(),
    validateOnBlur: false
  })

  $("#reserf_check_in_date").datetimepicker({
    timepicker: false,
    format: "Y-m-d",
    mask: true,
    lang: "th",
    closeOnDateSelect: true,
    value: $("#reserf_check_in_date").val() if $("#reserf_check_in_date").val(),
    validateOnBlur: false
  })

  $("#reserf_check_out_date").datetimepicker({
    timepicker: false,
    format: "Y-m-d",
    mask: true,
    lang: "th",
    closeOnDateSelect: true,
    value: $("#reserf_check_out_date").val() if $("#reserf_check_out_date").val(),
    validateOnBlur: false
  })

  #Timepicker
  $("#reserf_check_in_time").datetimepicker({
    datepicker: false,
    mask: true,
    format: "H:i:s",
    value: $("#reserf_check_in_time").val() if $("#reserf_check_in_time").val(),
    validateOnBlur: false
  })

  $("#reserf_check_out_time").datetimepicker({
    datepicker: false,
    mask: true,
    format: "H:i:s",
    value: $("#reserf_check_out_time").val() if $("#reserf_check_out_time").val(),
    validateOnBlur: false
  })
