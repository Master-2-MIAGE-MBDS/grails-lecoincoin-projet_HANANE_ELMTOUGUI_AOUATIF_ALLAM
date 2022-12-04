<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>

    <div id="edit-user" class="content scaffold-edit" role="main">
        <div class="card">
        <div class="card-header">
            <g:message code="user" args="['edit']"/>
        </div>
        <div class="card-body">
            <g:form  resource="${this.user}" method="PUT" controller="user" action="update" enctype="multipart/form-data">
                <g:hiddenField name="id" value="${user.id}"/>
                <div class="form-group">
                    <label><g:message code="Username"/> </label>
                    <g:textField name="username" class="form-control" value="${user?.username}" placeholder="entrer le username"/>
                    <UIHelper:renderErrorMessage fieldName="username" model="${user}" errorMessage="please.enter.name"/>
                </div>
                <div class="form-group">
                    <label><g:message code="Password"/> </label>
                    <g:textField name="password" class="form-control" value="${user?.password}" placeholder="entrer votre password"/>
                    <UIHelper:renderErrorMessage fieldName="password" model="${user}" errorMessage="please.enter.name"/>
                </div>
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
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </div>
    </div>
        %{--<div id="edit-user" class="content scaffold-edit" role="main">


            <g:form resource="${this.user}" method="PUT">
                <g:hiddenField name="version" value="${this.user?.version}" />
                <fieldset class="form">
                    <f:all bean="user"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>--}%
    </body>
</html>
