$(document).ready(function() {
    $('.datatable').DataTable({
        "order": [5, 'asc'],
        "columns": [
            null,
            null,
            { "orderable": false },
            null,
            null,
            null,
            { "orderable": false }
        ]
    });
})