
<g:applyLayout name="plantillaBootStrap">
    <content tag="encabezado">
        Editar Categoria
    </content>

    <content tag="contenido">
        <div class="">

            <div id="edit-categoria" class="content scaffold-edit" role="main">
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${this.category}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.category}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
                <g:form resource="${this.category}" method="PUT">
                    <g:hiddenField name="version" value="${this.category?.version}" />
                    <fieldset class="form">
                        <div class="form-group">
                            <label>Nombre:</label>
                            <input type="text" class="form-control" id="name" name="name" value="${this.category.name}">
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
