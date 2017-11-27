
<g:applyLayout name="plantillaBootStrap">
    <content tag="encabezado">
        Editar Departamento
    </content>

    <content tag="contenido">
        <div class="">

            <div id="edit-departamento" class="content scaffold-edit" role="main">
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${this.department}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.department}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
                <g:form resource="${this.department}" method="PUT">
                    <g:hiddenField name="version" value="${this.department?.version}" />
                    <fieldset class="form">
                        <div class="form-group">
                            <label>Nombre:</label>
                            <input type="text" class="form-control" id="name" name="name" value="${this.department.name}">
                        </div>
                    </fieldset>
                    <fieldset class="buttons">
                        <input class="save btn btn-lg btn-primary" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                    </fieldset>
                </g:form>
            </div>

        </div>
    </content>


</g:applyLayout>
