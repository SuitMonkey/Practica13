<%--
  Created by IntelliJ IDEA.
  User: vacax
  Date: 10/11/14
  Time: 10:28 PM
--%>

<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><g:layoutTitle default="Practica 13"/></title>

    %{--
    Este bloque representa los recursos utilizados por defecto en el template, comentandolo
    con el objetivo de utilizar los asset-pipeline.
    --}%
    <!-- Bootstrap Core CSS -->
    %{--<link href="css/bootstrap.min.css" rel="stylesheet">--}%
    <!-- Custom CSS -->
    %{--<link href="css/sb-admin.css" rel="stylesheet">--}%
    <!-- Custom Fonts -->
    %{--<link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">--}%

    %{--
    Llamando los recursos de una manera más comoda.
    --}%
    <asset:stylesheet src="principal.css"/>
    <asset:javascript src="principal.js" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <g:layoutHead/>

    %{-- Para incluir otras recursos.--}%
    <g:pageProperty name="page.header"/>

</head>

<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <g:link uri="/users/index" class="navbar-brand">Practica 13 - Francis y Jesus</g:link>
        </div>

        <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav">
            <g:link controller='logout' class="btn btn-default">Log out</g:link>
        </ul>

        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">

                <sec:ifAnyGranted roles="ROLE_ADMIN">
                    <li>
                        <a href="/category/index">Categorias</a>
                    </li>
                    <li>
                        <a href="/department/index">Departamentos</a>
                    </li>
                </sec:ifAnyGranted>

                <li>
                    <a href="/users/index">Usuarios</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>

    <div id="page-wrapper">

        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        <g:pageProperty name="page.encabezado">

                        </g:pageProperty>
                    </h1>

                    <ol class="breadcrumb">
                        <g:pageProperty name="page.breadcrumb">

                        </g:pageProperty>
                    </ol>
                </div>
            </div>
            <!-- /.row -->
            <g:pageProperty name="page.contenido">

            </g:pageProperty>
        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

%{--
Comentado el uso de JS directo y utilizandolo por el asset-pipeline
--}%
<!-- jQuery Version 1.11.0 -->
%{--<script src="js/jquery-1.11.0.js"></script>--}%

<!-- Bootstrap Core JavaScript -->
%{--<script src="js/bootstrap.min.js"></script>--}%

</body>
</html>