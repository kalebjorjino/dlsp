var tabla;


function init() {
    $("#proveedor_form").on("submit", function(e) {
        guardaryeditar(e);
    });
}

function guardaryeditar(e) {
    e.preventDefault();
    var formData = new FormData($("#proveedor_form")[0]);
    $.ajax({
        url: "../../controller/proveedorreg.php?op=guardaryeditar",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function(datos) {
            console.log(datos);
            $('#proveedor_form')[0].reset();
            $("#modalproveedor").modal('hide');
            $('#proveedor_data').DataTable().ajax.reload();

            swal({
                title: "Correcto!",
                text: "Completado.",
                type: "success",
                confirmButtonClass: "btn-success"
            });
        }
    });
}

$(document).ready(function() {
    tabla = $('#proveedor_data').dataTable({
        "aProcessing": true,
        "aServerSide": true,
        dom: 'Bfrtip',
        "searching": true,
        lengthChange: false,
        colReorder: true,
        buttons: [
            'copyHtml5',
            'excelHtml5',
            'csvHtml5',
            'pdfHtml5'
        ],
        "ajax": {
            url: '../../controller/proveedorreg.php?op=listar',
            type: "post",
            dataType: "json",
            error: function(e) {
                console.log(e.responseText);
            }
        },
        "bDestroy": true,
        "responsive": true,
        "bInfo": true,
        "iDisplayLength": 10,
        "autoWidth": false,
        "language": {
            "sProcessing": "Procesando...",
            "sLengthMenu": "Mostrar _MENU_ registros",
            "sZeroRecords": "No se encontraron resultados",
            "sEmptyTable": "Ningún dato disponible en esta tabla",
            "sInfo": "Mostrando un total de _TOTAL_ registros",
            "sInfoEmpty": "Mostrando un total de 0 registros",
            "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
            "sInfoPostFix": "",
            "sSearch": "Buscar:",
            "sUrl": "",
            "sInfoThousands": ",",
            "sLoadingRecords": "Cargando...",
            "oPaginate": {
                "sFirst": "Primero",
                "sLast": "Último",
                "sNext": "Siguiente",
                "sPrevious": "Anterior"
            },
            "oAria": {
                "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                "sSortDescending": ": Activar para ordenar la columna de manera descendente"
            }
        }
    }).DataTable();

    $(document).ready(function() {


    });
});

function editar(prov_id) {
    $('#mdlproveedor').html('Editar Registros');

    $.post("../../controller/proveedorreg.php?op=mostrar", { prov_id: prov_id }, function(data) {
        data = JSON.parse(data);
        $('#prov_id').val(data.prov_id);
        $('#prov_nom').val(data.prov_nom);

    });

    $('#modalproveedor').modal('show');
}

function eliminar(prov_id) {
    swal({
            title: "Correcto",
            text: "Esta seguro de Eliminar el Proveedor?",
            type: "error",
            showCancelButton: true,
            confirmButtonClass: "btn-danger",
            confirmButtonText: "Si",
            cancelButtonText: "No",
            closeOnConfirm: false
        },
        function(isConfirm) {
            if (isConfirm) {
                $.post("../../controller/proveedorreg.php?op=eliminar", { prov_id: prov_id }, function(_data) {

                });

                $('#proveedor_data').DataTable().ajax.reload();

                swal({
                    title: "Correcto!",
                    text: "Registro Eliminado.",
                    type: "success",
                    confirmButtonClass: "btn-success"
                });
            }
        });
}

$(document).on("click", "#btnnuevo", function() {
    $('#mdlproveedor').html('Nuevo Registro');
    $('#proveedor_form')[0].reset();
    $('#modalproveedor').modal('show');
});



init();