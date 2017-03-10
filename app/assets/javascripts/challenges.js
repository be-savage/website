$(document).ready(function() {
    $('.datatable-active').DataTable({
        bFilter: false,
        bInfo: false,
        "lengthChange": false,
        "bPaginate": false,
        "order": [2, 'desc'],
        "columns": [
            null,
            null,
            null
        ]
    });

    $('.p-datatable-active').DataTable({
        bFilter: false,
        bInfo: false,
        "lengthChange": false,
        "bPaginate": false,
        "order": [3, 'desc'],
        "columns": [
            null,
            null,
            null,
            null,
            { "orderable": false }
        ]
    });


    $('.datatable-completed').DataTable({
        bFilter: false,
        bInfo: false,
        "lengthChange": false,
        "bPaginate": false,
        "order": [3, 'desc'],
        "columns": [
            null,
            null,
            null,
            null,
            { "orderable": false }
        ]
    });

    $('.p-datatable-completed').DataTable({
        bFilter: false,
        bInfo: false,
        "lengthChange": false,
        "bPaginate": false,
        "order": [4, 'desc'],
        "columns": [
            null,
            null,
            null,
            null,
            null,
            { "orderable": false },
            { "orderable": false }
        ]
    });
})