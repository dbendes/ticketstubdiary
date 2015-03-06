# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
    $('#concert_venue_tokens').tokenInput('/venues.json',{
        tokenLimit: 1,
        resultsLimit: 5
        });
    
    $('#concert_band_tokens').tokenInput('/bands.json',{
        tokenLimit: 4,
        resultsLimit: 5,
        preventDuplicates: true
    });