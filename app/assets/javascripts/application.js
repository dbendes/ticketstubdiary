// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery.tokeninput
//= require turbolinks
//= require_tree .

$(document).ready(function() {

    $('#concert_venue_tokens').tokenInput('/venues.json',{
        tokenLimit: 1,
        resultsLimit: 5,
        resultsFormatter: function(item){return "<li>" + item.name + ", " + item.city + ", " + item.state + "</li>"}
        });
    
    $('#concert_band_tokens').tokenInput('/bands.json',{
        tokenLimit: 4,
        resultsLimit: 5,
        preventDuplicates: true
    });
    
});