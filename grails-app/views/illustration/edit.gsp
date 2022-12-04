<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'illustration.label', default: 'Illustration')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="edit-illustration" class="content scaffold-edit" role="main">


            <div class="card">
                <div class="card-header">
                    <g:message code="illustration" args="['edit']"/>
                </div>
                <div class="card-body">
                    <g:form  resource="${this.illustration}" method="PUT" controller="illustration" action="update" enctype="multipart/form-data">
                        <g:hiddenField name="id" value="${illustration.id}"/>
                        <div class="form-group">
                            <label><g:message code="Filename"/> </label>
                            <g:textField name="filename" class="form-control" value="${illustration?.filename}" placeholder="entrer le filename"/>
                            <UIHelper:renderErrorMessage fieldName="filename" model="${illustration}" errorMessage="please.enter.name"/>
                        </div>

                        <fieldset class="buttons">
                            <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                        </fieldset>
                    </g:form>
                </div>
            </div>







        </div>
    </body>
</html>
