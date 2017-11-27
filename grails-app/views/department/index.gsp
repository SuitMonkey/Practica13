
<g:applyLayout name="plantillaBootStrap">
    <content tag="encabezado">
        Lista de Departamentos
    </content>

    <content tag="contenido">
        <div class="">

            <div class="nav" role="navigation">
                <g:link class="create btn btn-lg btn-info" action="create">Nuevo Departamento</g:link>
            </div>

            <div id="list-categoria" class="content scaffold-list" role="main">
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <table class="table table-striped table-dark">
                    <thead>
                    <tr>
                        <th>Nombre</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${departmentList}">
                        <tr>
                            <td><h3>${it.name}</h3></td>
                            <td>
                                <g:form resource="${it}" method="DELETE">
                                    <fieldset class="buttons">
                                        <g:link class="create btn btn-lg btn-warning" action="edit" id="${it.id}">Editar</g:link>
                                        <input class="delete btn btn-lg btn-danger" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                    </fieldset>
                                </g:form>
                            </td>
                        </tr>
                    </g:each>

                    </tbody>
                </table>


            </div>
        </div>





    </content>


</g:applyLayout>