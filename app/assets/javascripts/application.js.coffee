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
#= require_tree .
$(document).on "page:change", ->

  #Dropdown ของ Menu Bar
  $("div.ui.dropdown").dropdown({on: "hover"})

  #Dropdown ของ Select Input
  $("select.ui.dropdown").dropdown()

  #Sticky Menu Bar
  $(".ui.sticky").sticky()

  #Notification
  $("#notification").miniNotification({position: "bottom", time: 10000})
