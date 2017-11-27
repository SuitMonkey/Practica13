
<g:applyLayout name="plantillaBootStrap">
    <content tag="encabezado">
        Mostrar Departamento
    </content>

    <content tag="contenido">
        <div class="">

            <div id="edit-departamento" class="content scaffold-edit" role="main">
                <div id="show-departamento" class="content scaffold-show" role="main">
                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <h2>Nombre: ${this.department.name}</h2>

                    <g:form resource="${this.department}" method="DELETE">
                        <fieldset class="buttons">
                            <g:link class="create btn btn-lg btn-warning" action="edit" id="${this.department.id}">Editar</g:link>
                            <input class="delete btn btn-lg btn-danger" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                        </fieldset>
                    </g:form>
                    <br>
                    <h3><g:link class="list" action="index">Lista de Departamentos</g:link></h3>
                </div>
            </div>

        </div>
    </content>


</g:applyLayout>
