$(document).ready(function() {
    $('.datatable').DataTable({
        "order": [0, 'asc'],
        "columns": [
            null,
            { "orderable": false },
            { "orderable": false },
            null
        ]
    });
})