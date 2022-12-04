<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>

    </head>
    <body>


        <div id="show-user" class="content scaffold-show" role="main">


            <div class="card">
                <div class="card-header">
                    <g:message code="Détails de user" args="['Details']"/>
                </div>
                <div class="card-body">
                    <g:if test="${user}">
                        <table class="table">
                            <tr>
                                <th class="text-right">Name</th><td class="text-left">${user.username}</td>
                            </tr>
                            <tr>
                                <th class="text-right">Password</th><td class="text-left">${user.password}</td>
                            </tr>
                            <tr>
                                <th class="text-right">PasswordExpired</th><td class="text-left">${user.passwordExpired}</td>
                            </tr>
                            <tr>
                                <th class="text-right">AccountLocked</th><td class="text-left">${user.accountLocked}</td>
                            </tr>
                            <tr>
                                <th class="text-right">PasswordExpired</th><td class="text-left">${user.passwordExpired}</td>
                            </tr>
                            <tr>
                                <th class="text-right">Enabled</th><td class="text-left">${user.enabled}</td>
                            </tr>

                        </table>
                    </g:if>
                    <div class="form-action-panel">
                        <g:link controller="user" action="edit" class="btn btn-success"  resource="${this.user}">Modifier</g:link> <br><br>
                        <g:form resource="${this.user}" method="DELETE">
                            <fieldset class="buttons">
                                <input class="btn btn-danger delete-confirmation" type="submit" value="Supprimer"
                                       onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </fieldset>
                        </g:form>
                    </div>
                </div>
            </div>

        </div>
    </body>
</html>
