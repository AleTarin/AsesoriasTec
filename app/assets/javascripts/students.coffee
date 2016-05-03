# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ajax:success", "form#students-form", (ev,data)->
    console.log data
    $(this).find("textarea").val("")
    $("#students-box").append("<br><li>Estudiante: #{data.student} <br> Calificacion: #{data.valoration} <br>  #{data.body} </li><br>")
    
$(document).on "ajax:error", "form#students-form", (ev,data)->
    console.log data