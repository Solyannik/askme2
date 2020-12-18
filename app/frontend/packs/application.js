require("@rails/ujs").start()

var jQuery = require('jquery')

require("bootstrap")

import "bootstrap/dist/js/bootstrap";

import "../styles/application";
document.addEventListener("turbolinks:load", function() {
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
        $('[data-toggle="popover"]').popover()
    })
})

const images = require.context('../images', true)
