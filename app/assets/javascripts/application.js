// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require materialize-sprockets
//= require turbolinks
//= require_tree .

// Due to issues with the latest versions of turbolinks and rails, here is a
// work around for reloading js from https://github.com/kossnocorp/jquery.turbolinks/issues/56
$.turbo.use('turbolinks:load', 'turbolinks:request-start')

var resetForms = function () {
  // this depends on your use
  // this is for foundation 6's abide
  $('form').each(function () {
    $(this).foundation('destroy');
  });
};

document.addEventListener("turbolinks:before-cache", function() {
  resetForms();
});

$(document).on('ready page:change', function() {
  Waves.displayEffect();
});
