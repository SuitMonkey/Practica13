
<g:applyLayout name="plantillaBootStrap">
    <content tag="encabezado">
       Crear Categoria
    </content>

    <content tag="contenido">
        <div class="">

            <div class="nav" role="navigation">

            </div>

            <div id="create-categoria" class="content scaffold-create" role="main">
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
                <g:form resource="${this.category}" method="POST">
                    <fieldset class="form">
                        <div class="form-group">
                            <label>Nombre:</label>
                            <input type="text" class="form-control" id="name" name="name">
                        </div>
                    </fieldset>
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="save btn btn-lg btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    </fieldset>
                </g:form>
            </div>


        </div>
    </content>


</g:applyLayout>