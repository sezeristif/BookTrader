require('datatables.net-bs4')
require('jquery')

jQuery(document).ready(function() {
  $('#books-datatable').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": $('#books-datatable').data('source')
    },
    
    "columns": [
      {"data": "id"},
      {"data": "title"},
      {"data": "author"},
      {"data": "user"},
    ]
  });
});