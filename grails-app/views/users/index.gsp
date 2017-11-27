<%--
  Created by IntelliJ IDEA.
  User: vacax
  Date: 10/11/14
  Time: 10:59 PM
--%>

<g:applyLayout name="plantillaBootStrap">
    <content tag="encabezado">
        Lista de Contactos
    </content>

    <content tag="contenido">
        <div class="">
            <sec:ifAnyGranted roles="ROLE_ADMIN">
                <g:link class="create btn btn-lg btn-danger" action="create">Crear Nuevo Contacto</g:link>
            </sec:ifAnyGranted>
            <g:form action="filtrarXDepartamento">
                <h2>Departamentos:</h2>
                <select style="width: 85%; float: left" class="form-control" id="sel1" name="department">
                    <g:each in="${departmentsList}">
                        <option value="${it.id}">${it.name}</option>
                    </g:each>
                </select>
                <input style="width: 14%; float: right" type="submit" class="btn" value="Filtrar"/> <br/>
            </g:form>
            <table class="table table-striped table-dark">
                <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Telefono</th>
                    <th>Movil</th>
                    <th>Categoria</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${contactsList}">
                    <tr>
                        <td><h3>${it.firstName}</h3></td>
                        <td><h3>${it.lastName}</h3></td>
                        <td><h3>${it.telephone}</h3></td>
                        <td><h3>${it.cellphone}</h3></td>
                        <td><h3>${it.category.name}</h3></td>
                    </tr>
                </g:each>

                </tbody>
            </table>



                %{-- Importando la libreria Google--}%
                <gvisualization:apiImport/>

            <div style="width: 100%;">
                <div style="display: table-row">
                    <div style="width: 700px; ">
                    <gvisualization:pieCoreChart elementId="piechart" title="Contactos - Departamentos" width="${600}" height="${500}"
                                                 columns="${myDailyActivitiesColumns}" data="${myDailyActivitiesData}" />
                        <div id="piechart"></div>
                    </div>
                    <div style="">
                        <gvisualization:pieCoreChart elementId="piechart2" title="Contactos - Categorias" width="${600}" height="${500}"
                                                     columns="${myDailyActivitiesColumns2}" data="${myDailyActivitiesData2}" />
                        <div id="piechart2" style="padding-left: 16px"></div>
                    </div>
                </div>
            </div>

        </div>



    </content>


</g:applyLayout>