<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <meta charset="UTF-8">
        <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>


    <div id="show-annonce" class="content scaffold-show" role="main">


        <div class="card">
            <div class="card-header">
                <g:message code="Détails" args="['Details']"/>
            </div>
            <div class="card-body">
                <g:if test="${annonce}">
                    <table class="table">
                        <tr>
                            <th class="text-right">Title</th><td class="text-left">${annonce.title}</td>
                        </tr>
                        <tr>
                            <th class="text-right">Description</th><td class="text-left">${annonce.description}</td>
                        </tr>
                        <tr>
                            <th class="text-right">Price</th><td class="text-left">${annonce.price}</td>
                        </tr>
                        <tr>
                            <th class="text-right">Active</th><td class="text-left">${annonce.active}</td>
                        </tr>
                        <tr>
                            <th class="text-right">Illustrations</th>
                                 <td>
                                    <g:each in="${annonce.illustrations}" var="image">
                                        <g:link controller="illustration" action="show" id="${image.id}"><img src="${resource(dir:'images',file:image.filename)}"> </g:link >
                                    </g:each>
                              </td>
                        </tr>

                    </table>
                </g:if>
                <div class="form-action-panel">
                    <g:link controller="annonce" action="edit" class="btn btn-success"  resource="${this.annonce}">Modifier</g:link> <br><br>
                    <g:link controller="annonce" action="delete"   resource="${this.annonce}">
                        <button class="btn btn-danger" value="${message(code: 'default.button.delete.label',default:'Delete')}"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message',default:'Are you sure?')}');">Supprimer

                        </button>

                    </g:link>

                </div>
            </div>
        </div>

    </div>

    </body>
</html>
