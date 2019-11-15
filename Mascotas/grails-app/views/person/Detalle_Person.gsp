<!doctype html>
<html lang="es">
<head>
    <meta name="layout" content="main"/>
    <title>Detalle de Registro</title>
</head>
<body>
    <g:form>
        </br></br>
        <g:set var="start"><g:formatDate format="dd/MM/yyyy" date="${person.dateCreated}"/></g:set>
        <g:set var="update"><g:formatDate format="dd/MM/yyyy" date="${person.lastUpdated}"/></g:set>
        Nombre: ${person.name}<br/><br/>
        Apellido Paterno: ${person.lastName}<br/><br/>
        Apellido Materno: ${person.secondLastName}<br/><br/>
        Telefono: ${person.phoneNumber}<br/><br/>
        Direccion: ${person.address}</br></br>
        Fecha de Alta: ${start}</br></br>
        Ultima Modificacion: ${update}</br></br>
        <p>Mascotas</p>
        <g:each in="${person.pets}" var="pet" status="i">
            <g:link controller="Pet" action="Edit_Pet" id="${pet.id}">${i+1}. ${pet.name}</g:link>
            <br/>
        </g:each>
         </br>
         <g:link action="Editar_Person" id="${person.id}">Editar</g:link>
         <g:link controller="Pet" action="New_Pet" id="${person.id}">Agregar Mascota</g:link>
                 </br></br>
        </g:form>
</body>
</html>