require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('datatables.net-bs4')

import "bootstrap"

var jQuery = require('jquery')

global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;
import $ from 'jquery';
global.$ = jQuery;


$(document).ready(function() {
    $('#example').DataTable();
});
