<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'illustration.label', default: 'Illustration')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="card">
        <div class="card-header">
            <h1 class="mb-4" style="text-align: center"><g:message code="Créer une nouvelle illustration" args="['create']"/></h1>
        </div>
        <div class="card-body">
            <g:form controller="annonce" action="save">
                <div class="form-group">
                    <label>Filename</label>
                    <g:textField name="filename" class="form-control" value="${illustration?.filename}" placeholder="filename"/>
                    <UIHelper:renderErrorMessage fieldName="filename" model="${illustartion}" errorMessage="entrer votre filename"/>
                </div>

                <div class="form-group">
                    <label>Annonce</label>
                    <g:select name="illustration" from="${illustration}"
                              value="${illustartion}"/>

                </div>


                <div class="form-action-panel">
                    <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "save")}"/>
                </div>
            </g:form>
        </div>
    </div>
    </body>
</html>
