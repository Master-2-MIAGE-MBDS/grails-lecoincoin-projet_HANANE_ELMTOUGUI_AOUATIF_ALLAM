<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
        <asset:stylesheet src="style.css"/>
    </head>
    <body>



    <div class="card">
        <div class="card-header">
            <h1 class="mb-4" style="text-align: center"><g:message code="Créer un nouveau utilisateur" args="['create']"/></h1>
        </div>
        <div class="card-body">
            <g:form controller="user" action="save">

            %{--Partial Templating--}%
                <div class="form-group">
                    <label>Username </label>
                    <g:textField name="username" class="form-control" value="${user?.username}" placeholder="Username"/>
                    <UIHelper:renderErrorMessage fieldName="username" model="${user}" errorMessage="entrer votre username"/>
                </div>

                <g:if test="${!edit}">
                    <div class="form-group">
                        <label>Password</label>
                        <g:passwordField name="password"  class="form-control" value="${user?.password}" placeholder="Password"/>
                        <UIHelper:renderErrorMessage fieldName="password" model="${user}" errorMessage="Entrer votre Password."/>
                    </div>
                </g:if>
                <div class="form-group">
                    <g:checkBox name="passwordExpired" value="${user?.passwordExpired}" />
                    <label><g:message code="passwordExpired"/> </label>
                    <UIHelper:renderErrorMessage fieldName="passwordExpired" model="${user}" />
                </div>
                <div class="form-group">
                    <g:checkBox name="accountLocked" value="${user?.accountLocked}" />
                    <label><g:message code="accountLocked"/> </label>
                    <UIHelper:renderErrorMessage fieldName="accountLocked" model="${user}" />
                </div>
                <div class="form-group">
                    <g:checkBox name="accountExpired" value="${user?.accountExpired}" />
                    <label><g:message code="accountExpired"/> </label>
                    <UIHelper:renderErrorMessage fieldName="accountExpired" model="${user}" />
                </div>
                <div class="form-group">
                    <g:checkBox name="enabled" value="${user?.enabled}" />
                    <label><g:message code="enabled"/> </label>
                    <UIHelper:renderErrorMessage fieldName="enabled" model="${user}" />
                </div>
                <div class="form-action-panel">
                    <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "save")}"/>
                    <g:link controller="member" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
                </div>
            </g:form>
        </div>
    </div>
    </body>

</html>
