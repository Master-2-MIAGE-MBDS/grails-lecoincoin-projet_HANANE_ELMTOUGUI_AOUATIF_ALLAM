<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>

        <div id="edit-annonce" class="content scaffold-edit" role="main">

            <div class="card">
                <div class="card-header">
                    <g:message code="Annonce" args="['edit']"/>
                </div>
                <div class="card-body">
                    <g:form  resource="${this.annonce}" method="PUT" controller="annonce" action="update" enctype="multipart/form-data">
                        <g:hiddenField name="id" value="${annonce.id}"/>
                        <div class="form-group">
                            <label><g:message code="Title"/> </label>
                            <g:textField name="title" class="form-control" value="${annonce?.title}" placeholder="entrer le title"/>
                            <UIHelper:renderErrorMessage fieldName="title" model="${annonce}" errorMessage="please.enter.title"/>
                        </div>

                        <div class="form-group">
                            <g:checkBox name="description" value="${annonce?.description}" />
                            <label><g:message code="description"/> </label>
                            <UIHelper:renderErrorMessage fieldName="description" model="${annonce}" />
                        </div>
                        <div class="form-group">
                            <g:checkBox name="price" value="${annonce?.price}" />
                            <label><g:message code="Price"/> </label>
                            <UIHelper:renderErrorMessage fieldName="price" model="${annonce}" />
                        </div>

                        <div class="form-group">
                            <g:checkBox name="accountExpired" value="${user?.accountExpired}" />
                            <label><g:message code="accountExpired"/> </label>
                            <UIHelper:renderErrorMessage fieldName="accountExpired" model="${user}" />
                        </div>
                        <div class="form-group">
                            <g:checkBox name="active" value="${annonce?.active}" />
                            <label><g:message code="Active"/> </label>
                            <UIHelper:renderErrorMessage fieldName="active" model="${annonce}" />
                        </div>
                        <div class="form-group">
                            <label><g:message code="Illustrations"/> </label>

                                <g:each in="${annonce.illustrations}" var="image">
                                    <g:link controller="illustration" action="show" id="${image.id}"><img src="${resource(dir:'images',file:image.filename)}"> </g:link >

                                </g:each>

                        </div>
                        <fieldset class="buttons">
                            <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                        </fieldset>
                    </g:form>
                </div>
            </div>
           %{-- <g:form resource="${this.annonce}" method="PUT">
                <g:hiddenField name="version" value="${this.annonce?.version}" />
                <fieldset class="form">
                    <f:all bean="annonce"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>--}%
        </div>
    </body>
</html>
