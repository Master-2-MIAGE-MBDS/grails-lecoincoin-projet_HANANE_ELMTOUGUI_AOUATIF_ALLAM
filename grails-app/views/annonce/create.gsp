<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="card">
        <div class="card-header">
            <h1 class="mb-4" style="text-align: center"><g:message code="Créer une nouvelle annonce" args="['create']"/></h1>
        </div>
        <div class="card-body">
            <g:form controller="annonce" action="save">
                <div class="form-group">
                    <label>Title</label>
                    <g:textField name="title" class="form-control" value="${annonce?.title}" placeholder="Title"/>
                    <UIHelper:renderErrorMessage fieldName="title" model="${annonce}" errorMessage="entrer votre title"/>
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <g:textField name="description" class="form-control" value="${annonce?.description}" placeholder="Description"/>
                    <UIHelper:renderErrorMessage fieldName="description" model="${annonce}" errorMessage="entrer la description"/>
                </div>
                <div class="form-group">
                    <label>Price</label>
                    <g:textField name="price" class="form-control" value="${annonce?.price}" placeholder="Price"/>
                    <UIHelper:renderErrorMessage fieldName="price" model="${annonce}" errorMessage="entrer le Price"/>
                </div>
                <div class="form-group">
                    <g:checkBox name="active" value="${user?.active}" />
                    <label><g:message code="active"/> </label>
                    <UIHelper:renderErrorMessage fieldName="active" model="${annonce}" />
                </div>
                <div class="form-group">
                    <label>Author</label>
                    <g:select name="annonce" from="${annonce}"
                              value="${annonce.author}"/>

                </div>


                <div class="form-action-panel">
                    <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "save")}"/>
                </div>
            </g:form>
        </div>
    </div>
    </body>
</html>
