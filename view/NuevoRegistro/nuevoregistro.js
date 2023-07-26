function init(){
   
    $("#registro_form").on("submit",function(e){
        guardaryeditar(e);	
    });
    
}

$(document).ready(function() {
    $('#reg_descrip').summernote({
        height: 150,
        lang: "es-ES",
        callbacks: {
            onImageUpload: function(image) {
                console.log("Image detect...");
                myimagetreat(image[0]);
            },
            onPaste: function (e) {
                console.log("Text detect...");
            }
        }
    });

    $.post("../../controller/proveedor.php?op=combo",function(data, _status){
        $('#prov_id').html(data);
    });

    $.post("../../controller/proyecto.php?op=combo",function(data, _status){
        $('#pry_id').html(data);
    });

    $.post("../../controller/cargo.php?op=combo",function(data, _status){
        $('#carg_id').html(data);
    });

    $.post("../../controller/beneficiario.php?op=combo",function(data, _status){
        $('#beni_id').html(data);
    });

    $.post("../../controller/cobeneficiarios.php?op=combo",function(data, _status){
        $('#cobe_id').html(data);
    });

    $.post("../../controller/codigo.php?op=combo",function(data, _status){
        $('#cod_id').html(data);
    });

    $.post("../../controller/componente.php?op=combo",function(data, _status){
        $('#comp_id').html(data);
    });

    $.post("../../controller/actividad.php?op=combo",function(data, _status){
        $('#acti_id').html(data);
    });

    $.post("../../controller/cuenta.php?op=combo",function(data, _status){
        $('#cuent_id').html(data);
    });

    $.post("../../controller/lgastos.php?op=combo",function(data, _status){
        $('#lgst_id').html(data);
    });

    $.post("../../controller/tgastos.php?op=combo",function(data, _status){
        $('#tgst_id').html(data);
    });

    $.post("../../controller/con_gastos.php?op=combo",function(data, _status){
        $('#cong_id').html(data);
    });

    $.post("../../controller/servicio.php?op=combo",function(data, _status){
        $('#serv_id').html(data);
    });

});

function guardaryeditar(e){
    e.preventDefault();
    var formData = new FormData($("#registro_form")[0]);
    if ($('#reg_descrip').summernote('isEmpty') || $('#reg_nom').val()==''){
        swal("Advertencia!", "Completar campos vacios", "warning");
    }else{
        $.ajax({
            url: "../../controller/registro.php?op=insert",
            type: "POST",
            data: formData,
            contentType: false,
            processData: false,
            success: function(datos){  
                
                $('#reg_fech').val('');
                $('#pry_id').val('');
                $('#prov_id').val('');
                $('#reg_prov').val('');
                $('#reg_doc').val('');
                $('#cod_id').val('');
                $('#beni_id').val('');
                $('#cobe_id').val('');
                $('#carg_id').val('');
                $('#comp_id').val('');
                $('#acti_id').val('');
                $('#cuent_id').val('');
                $('#lgst_id').val('');
                $('#tgst_id').val('');
                $('#serv_id').val('');
                $('#cong_id').val('');
                $('#reg_monto').val('');
                $('#reg_descrip').summernote('reset');
                swal("Correcto!", "Registrado Correctamente", "success");
            
        
            }  
        }); 
    }
}

init();