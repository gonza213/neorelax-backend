//ELIMINAR 
// $(".btnEliminarSusc").click(function(){

//     var idSusc = $(this).attr("idSusc");

//     Swal.fire({
//         title: '¿Estás seguro de borrar la suscripción?',
//         text: '¡Si no lo está puede cancelar la acción!',
//         icon: 'warning',
//         showCancelButton: true,
//         confirmButtonColor: '#3085d6',
//         cancelButtonColor: '#d33',
//         cancelButtonText: 'Cancelar',
//         confirmButtonText: '¡Si, borrar la suscripción!'
//     }).then((result)=>{

//         if(result.value){

//             window.location = "index.php?pagina=suscriptores&idSusc="+idSusc;
//         }
//     })
// });

function borrarSusc(id){
    var idSusc = id;

    Swal.fire({
        title: '¿Estás seguro de borrar la suscripción?',
        text: '¡Si no lo está puede cancelar la acción!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: '¡Si, borrar la suscripción!'
    }).then((result)=>{

        if(result.value){

            window.location = "index.php?pagina=suscriptores&idSusc="+idSusc;
        }
    })
}

// $(".btnEliminarContact").click(function(){

//     var idContacto = $(this).attr("idContacto");

//     Swal.fire({
//         title: '¿Estás seguro de borrar el contacto?',
//         text: '¡Si no lo está puede cancelar la acción!',
//         icon: 'warning',
//         showCancelButton: true,
//         confirmButtonColor: '#3085d6',
//         cancelButtonColor: '#d33',
//         cancelButtonText: 'Cancelar',
//         confirmButtonText: '¡Si, borrar el contacto!'
//     }).then((result)=>{

//         if(result.value){

//             window.location = "index.php?pagina=contactos&idContacto="+idContacto;
//         }
//     })
// });

function borrarContacto(id){
    var idContacto = id;

    Swal.fire({
        title: '¿Estás seguro de borrar el contacto?',
        text: '¡Si no lo está puede cancelar la acción!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: '¡Si, borrar el contacto!'
    }).then((result)=>{

        if(result.value){

            window.location = "index.php?pagina=contactos&idContacto="+idContacto;
        }
    })
}



// IMAGEN Admin
$(".imagen").change(function(){

    var imagen = this.files[0];

    //validamos formato de imagen
    if(imagen["type"] != "image/jpeg" && imagen["type"] != "image/png"){

        $(".imagen").val("");

        Swal.fire({
            title: '¡Error al subir imagen!',
            text: '¡La imagen debe estar en formato JPG o PNG!',
            icon: 'error',
            confirmButtonText: 'Cerrar'
        });

    }else{

        var datosImagen = new FileReader;
        datosImagen.readAsDataURL(imagen);

        $(datosImagen).on("load", function(event){

            var rutaImagen = event.target.result;

            $(".previsualizar").attr("src", rutaImagen);
        })
    }
});

// $(".btnEliminarAdmin").click(function(){

//     var idAdmin = $(this).attr("idAdmin");

//     Swal.fire({
//         title: '¿Estás seguro de borrar el Admin?',
//         text: '¡Si no lo está puede cancelar la acción!',
//         icon: 'warning',
//         showCancelButton: true,
//         confirmButtonColor: '#3085d6',
//         cancelButtonColor: '#d33',
//         cancelButtonText: 'Cancelar',
//         confirmButtonText: '¡Si, borrar el Admin!'
//     }).then((result)=>{

//         if(result.value){

//             window.location = "index.php?pagina=administradores&idAdmin="+idAdmin;
//         }
//     })
// });

function borrarAdmin(id){
    
    var idAdmin = id;

    Swal.fire({
        title: '¿Estás seguro de borrar el Admin?',
        text: '¡Si no lo está puede cancelar la acción!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: '¡Si, borrar el Admin!'
    }).then((result)=>{

        if(result.value){

            window.location = "index.php?pagina=administradores&idAdmin="+idAdmin;
        }
    })
}


$(".btnEditarAdmin").click(function() {

    var idEditAdmin = $(this).attr("idEditAdmin");

    var datos = new FormData();
    datos.append("idEditAdmin", idEditAdmin);

    $.ajax({
        url: 'views/ajax/ajax.php',
        method: 'POST',
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        dataType: 'json',
        success: function(respuesta) {

            $('#nombre').val(respuesta["nombre"]);
            $('#usuario').val(respuesta["usuario"]);
            $('#email').val(respuesta["email"]);
            $('#password').val(respuesta["password"]);
            $("#rol option:selected").val(respuesta["rol"]);
            $("#rol option:selected").html(respuesta["rol"]);
            $('#foto').val(respuesta["foto"]);
            $('#visualizar img').attr('src', respuesta["foto"]);
            $('#id').val(respuesta["id"]);
        }
    });
});

function colchon(){
    $('#colchones').css('display','block');
    $('#sommiers').css('display','none');
    $('#almohadas').css('display','none');
    $('#cuello-musical').css('display','none');
}

function sommier(){
    $('#colchones').css('display','none');
    $('#sommiers').css('display','block');
    $('#almohadas').css('display','none');
    $('#cuello-musical').css('display','none');
}

function almohada(){
    $('#colchones').css('display','none');
    $('#sommiers').css('display','none');
    $('#almohadas').css('display','block');
    $('#cuello-musical').css('display','none');
}

function cuello(){
    $('#colchones').css('display','none');
    $('#sommiers').css('display','none');
    $('#almohadas').css('display','none');
    $('#cuello-musical').css('display','block');
}

// $(".btnEditarProducto").click(function() {

//     var idProducto = $(this).attr("idProducto");

//     var datos = new FormData();
//     datos.append("idProducto", idProducto);

//     $.ajax({
//         url: 'views/ajax/ajax.php',
//         method: 'POST',
//         data: datos,
//         cache: false,
//         contentType: false,
//         processData: false,
//         dataType: 'json',
//         success: function(respuesta) {
        
//             $('#titulo').val(respuesta["titulo"]);
//             $("#categoria option:selected").val(respuesta["categoria"]);
//             $("#categoria option:selected").html(respuesta["categoria"]);
//             $('#precio').val(respuesta["precio"]);
//             $('#stock').val(respuesta["stock"]);
//             $('#verIntro').text(respuesta["intro"]);
//             $('#editorDescripcionP').val(respuesta["descripcion"]);
//             $('#imagen').val(respuesta["imagen"]);
//             $('#visualizar2 img').attr('src','../' + respuesta["imagen"]);
//             $('#idP').val(respuesta["id"]);
//         }
//     });
// });

// $(".btnEliminarProducto").click(function(){

//     var idProducto = $(this).attr("idProducto");

//     Swal.fire({
//         title: '¿Estás seguro de borrar el producto?',
//         text: '¡Si no lo está puede cancelar la acción!',
//         icon: 'warning',
//         showCancelButton: true,
//         confirmButtonColor: '#3085d6',
//         cancelButtonColor: '#d33',
//         cancelButtonText: 'Cancelar',
//         confirmButtonText: '¡Si, borrar el producto!'
//     }).then((result)=>{

//         if(result.value){

//             window.location = "index.php?pagina=productos&idProducto="+idProducto;
//         }
//     })
// });

function borrarProducto(id){
    
    var idProducto = id;

    Swal.fire({
        title: '¿Estás seguro de borrar el producto?',
        text: '¡Si no lo está puede cancelar la acción!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: '¡Si, borrar el producto!'
    }).then((result)=>{

        if(result.value){

            window.location = "index.php?pagina=productos&idProducto="+idProducto;
        }
    })
}


$(".btnEliminarImagen").click(function(){

    var idImagen = $(this).attr("idImagen");

    Swal.fire({
        title: '¿Estás seguro de borrar el Imagen?',
        text: '¡Si no lo está puede cancelar la acción!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: '¡Si, borrar el Imagen!'
    }).then((result)=>{

        if(result.value){

            window.location = "index.php?pagina=ver-producto&idImagen="+idImagen;
        }
    })
});

function guardarImagen(){

    var files = $('#upload').val();

    if(!files){
        Swal.fire({
            icon: 'warning',
            title: '¡Debe seleccionar al menos una imagen!',
            showConfirmButton: true,
            confirmButtonText: 'Cerrar',
            closeOnConfirm: false
        }).then((result)=>{
    
            if(result.value){
    
                location.reload();
            }
        })
    }else{

        Swal.fire({
            icon: 'success',
            title: '¡Se han subido las imagenes correctamente!',
            showConfirmButton: true,
            confirmButtonText: 'Cerrar',
            closeOnConfirm: false
        }).then((result)=>{
    
            if(result.value){
    
                location.reload();
            }
        })

    }

 
}

function guardarUsuario(){

    var nombre = $('#nombreU').val();
    var usuario = $('#usuarioU').val();
    var email = $('#emailU').val();
    var password = $('#passwordU').val();
    var rol = $('#rolU').val();

    if(!nombre || !usuario || !email || !password || !rol){

        Swal.fire({
            title: '¡Error al crear el usuario!',
            text: '¡Complete todos los campos!',
            icon: 'warning',
            confirmButtonText: 'Cerrar'
        });
    }else{
        console.log('Usuario creado');
    }
}

function guardarProducto(){

    var titulo = $('#titulo').val();
    var categoria = $('#categoria').val();
    var precio = $('#precio').val();
    var stock = $('#stock').val();
    var editorIntro = $('#editorIntro').val();
    var editorDescripcion = $('#editorDescripcion').val();
    var customFileLang3 = $('#customFileLang3').val();

    if(!titulo || !categoria || !precio || !stock || !editorIntro || !editorDescripcion || !customFileLang3){

        Swal.fire({
            title: '¡Error al guardar el producto!',
            text: '¡Complete todos los campos!',
            icon: 'warning',
            confirmButtonText: 'Cerrar'
        });
    }else{
        console.log('Producto guardado');
    }
}

function borrarVentaTransferencia(id){
    
    var idVenta = id;

    Swal.fire({
        title: '¿Estás seguro de borrar la venta?',
        text: '¡Si no lo está puede cancelar la acción!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: '¡Si, borrar la venta!'
    }).then((result)=>{

        if(result.value){

            window.location = "index.php?pagina=ventas&idVenta="+idVenta;
        }
    })
}





