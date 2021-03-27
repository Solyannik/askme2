require("@rails/ujs").start()

var jQuery = require('jquery')

require("bootstrap")
import "../styles/application"
import "bootstrap/dist/js/bootstrap"
import "jquery/src/jquery"
import "ekko-lightbox/ekko-lightbox"
import "air-datepicker/dist/js/datepicker.min"
import "../scripts/custom.js"
import "./maps.js"
import "../scripts/lightbox"

document.addEventListener("turbolinks:load", function() {
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
        $('[data-toggle="popover"]').popover()
    })
})

const images = require.context('../images', true)
