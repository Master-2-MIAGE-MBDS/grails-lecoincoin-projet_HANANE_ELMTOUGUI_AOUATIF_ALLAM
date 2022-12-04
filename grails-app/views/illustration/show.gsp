<%@ page import="com.mbds.grails.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'illustration.label', default: 'Illustration')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>

        <div id="show-illustration" class="content scaffold-show" role="main">



            <div class="card">
                <div class="card-header">
                    <g:message code="Détails de l'illustration" args="['Details']"/>
                </div>
                <div class="card-body">
                    <g:if test="${illustration}">
                        <table class="table">
                            <tr>
                                <td>
                                    <img src="${grailsApplication.config.illustrations.baseUrl+illustration.filename}" />
                                    <g:link controller="annonce" action="show" class="btn btn-outline-primary" id="${illustration.id}">Lien vers l'annonce</g:link>
                                    <g:each in="${User.list()}" var="user">
                                        ${user.username}
                                    </g:each>
                                </td>
                            </tr>

                        </table>
                    </g:if>
                    <div class="form-action-panel">
                        <g:link controller="illustration" action="edit" class="btn btn-success"  resource="${this.illustration}">Modifier</g:link> <br><br>

                        <g:link controller="illustration" action="delete"   resource="${this.illustration}">
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
