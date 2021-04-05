require("@rails/ujs").start()
import "bootstrap/dist/js/bootstrap"
import "air-datepicker/dist/js/datepicker.min"
import "ekko-lightbox/dist/ekko-lightbox.min"
import "../scripts/map"
import "../scripts/lightbox"
import "../scripts/custom"
import "../styles/application"

const images = require.context('../images', true)
