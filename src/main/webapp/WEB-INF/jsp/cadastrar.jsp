<%--
  Created by IntelliJ IDEA.
  User: Raissa
  Date: 18/06/2022
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="router" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Cadastrar</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <style>
        body {
            background: rgb(0,83,110);
            background: linear-gradient(7deg, rgba(0,83,110,1) 0%, rgba(0,37,48,1) 100%);
            height: 100%;
            margin: 0;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        html, body { height: 100%; }
        body { margin: 0; font-family: Roboto, "Helvetica Neue", sans-serif; }
        .card {
            padding: 20px;
            margin-bottom: 20px;
            transition: .5s;
        }
        .btn {
            transition: .5s;
        }
        .btn:hover {
            transition: .5s;
            transform: translateY(-3px);
        }

        .alert {
            margin: auto;
            width: 40%;
            padding: 10px;
        }
    </style>
</head>
<body>
    <div class="p-4">
        <div class="text-center text-white">
            <h1>Cadastrar</h1>
            <p>
                Bem-vindo ao ProManager! Aqui você pode gerenciar suas atividades diárias e realizar
                planejamento de tarefas e projetos. Ainda não possui cadasrto? Preencha o formulário abaixo!
            </p>
        </div>
        <div class="mx-auto card p-4" style="width: 25rem;">
            <%--@elvariable id="usuario" type="com.example.rarants_promanager.model.Usuario"--%>
            <form:form method="POST" action="/promanager/login/register" modelAttribute="usuario" >
                <div class="card-title text-center h3">Login</div>
                <div class="row text-left">
                    <div class="col-12 mb-3">
                        <form:label path="nome" for="nome" class="form-label">Nome</form:label>
                        <form:input path="nome" type="nome" class="form-control" placeholder="Informe seu nome" required="required" />
                    </div>
                    <div class="col-12 mb-3">
                        <form:label path="email" for="email" class="form-label">Email</form:label>
                        <form:input path="email" type="email" class="form-control" placeholder="Informe seu email" required="required" />
                    </div>
                    <div class="col-12 mb-3">
                        <form:label path="senha" for="senha" class="form-label">Senha</form:label>
                        <form:input path="senha" type="password" class="form-control" placeholder="Digite sua senha" required="required" />
                    </div>
                    <div class="text-center">
                        <div class="row">
                            <router:if test="${not empty error}">
                                <div class="alert alert-danger" role="alert">
                                    <b>${error}</b>
                                </div>
                            </router:if>
                        </div>
                        <div class="row">
                            <div>
                                <input type="submit" value="Cadastrar-se" name="register" class="btn btn-primary btn-sm mb-3"/>
                            </div>
                        </div>
                        <div class="row">
                            <a href="/promanager/login" class="mb-3">Já possui cadastro?</a>
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>
