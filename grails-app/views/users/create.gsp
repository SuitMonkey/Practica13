<%--
  Created by IntelliJ IDEA.
  User: vacax
  Date: 10/11/14
  Time: 10:59 PM
--%>

<g:applyLayout name="plantillaBootStrap">
    <content tag="encabezado">
        Crear Contacto
    </content>


    <content tag="contenido">

            <div class="panel panel-danger">
                <div class="panel-heading">
                    <h3 class="panel-title">Nuevo contacto</h3>
                </div>
                <div class="panel-body">
                    <g:form action="creacion">
                        Nombre:    <input type="text" class="form-control" id="firstName" name="firstName"><br/>
                        Apellido: <input type="text" class="form-control" name="lastname"/> <br/>
                        Email: <input type="text" class="form-control" name="email"/> <br/>
                        Telefono: <input type="text" class="form-control" name="telephone"/> <br/>
                        Direccion: <input type="text" class="form-control" name="address"/> <br/>
                        Puesto de trabajo: <input type="text" class="form-control" name="job"/> <br/>
                        Telefono Movil: <input type="text" class="form-control" name="cellphone"/> <br/>
                        Departamentos:
                        <br />
                        <br />
                        <g:each in="${departmentsList}">
                            <g:checkBox name="departments" value="${it.id}" checked="false"/>
                            ${it.name}
                        </g:each>
                        <br />

                        <br />
                       Categoria:
                            <select class="form-control" id="sel1" name="category">
                                <g:each in="${categoriesList}">
                                    <option value="${it.id}">${it.name}</option>
                                </g:each>
                            </select>
                        </div>
                        <input style="width: 50%; margin-left: 25%;" type="submit" class="btn btn-lg btn-danger" value="Crear"/> <br/>
                    </g:form>
                    <br/>
                </div>
            </div>


    </content>


</g:applyLayout>