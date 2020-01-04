//= require jquery
//= require moment
//= require fullcalendar
//= require fullcalendar/lang/ja

$(document).ready(function() {
  $("#calendar").fullCalendar({});
});

$(function() {
  // 画面遷移を検知
  $(document).on("turbolinks:load", function() {
    // lengthを呼び出すことで、#calendarが存在していた場合はtrueの処理がされ、無い場合はnillを返す
    if ($("#calendar").length) {
      function shift_userCalendar() {
        return $("#calendar").fullCalendar({});
      }
      function clearCalendar() {
        $("#calendar").html("");
      }

      $(document).on("turbolinks:load", function() {
        shift_userCalendar();
      });
      $(document).on("turbolinks:before-cache", clearCalendar);

      $("#calendar").fullCalendar({
        shift_users: "/shift_users.json"
      });
    }
  });
});
