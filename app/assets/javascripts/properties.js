document.addEventListener("turbolinks:load", function() {
  $input = $("[data-behavior='autocomplete']")

  var options = {
    getValue: "name",
    url: function(phrase) {
      return "/neighborhoods.json?term=" + phrase;
    }
}

  $input.easyAutocomplete(options)
});