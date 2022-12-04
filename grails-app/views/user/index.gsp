<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

        <div id="list-user" class="content scaffold-list" role="main">
            <div class="row mt-6">
                <div class="col-md-12 col-12">

                    <div class="card">

                        <div class="table-responsive">
                            <table class="table text-nowrap mb-0">
                                <thead class="table-light">
                                <tr>
                                    <th >Username</th>
                                    <th >Password Expired</th>
                                    <th >Account Locked</th>
                                    <th >Account Expired</th>
                                    <th >Enabled</th>
                                    <th >Annonces</th>
                                    <th >Role</th>

                                </tr>
                                </thead>
                                <tbody>

                                <g:each in="${userList}" var="user">
                                    <tr>
                                        <td class="align-middle">
                                            <div class="d-flex align-items-center">
                                                <div class="ms-3 lh-1">
                                                    ${user.username}
                                                </div>
                                            </div>
                                        </td>



                                        <td class="align-middle">
                                            <div class="d-flex align-items-center">
                                                <div class="ms-3 lh-1">
                                                    ${user.passwordExpired}
                                                </div>
                                            </div>
                                        </td>
                                        <td class="align-middle">
                                            <div class="d-flex align-items-center">
                                                <div class="ms-3 lh-1">
                                                    ${user.accountLocked}
                                                </div>
                                            </div>
                                        </td>
                                        <td class="align-middle">
                                            <div class="d-flex align-items-center">
                                                <div class="ms-3 lh-1">
                                                    ${user.accountExpired}
                                                </div>
                                            </div>
                                        </td>
                                        <td class="align-middle">
                                            <div class="d-flex align-items-center">
                                                <div class="ms-3 lh-1">
                                                    ${user.enabled}
                                                </div>
                                            </div>
                                        </td>
                                        <td class="align-middle">
                                            <div class="d-flex align-items-center">
                                                <div class="ms-3 lh-1">
                                                    <g:each in="${user.annonces}" var="userannonce">
                                                        <g:link controller="annonce" action="show" id="${userannonce.id}" >
                                                            ${userannonce.title}
                                                        </g:link >
                                                    </g:each>
                                                </div>
                                            </div>
                                        </td>
                                        <g:each in="${user.getAuthorities()}" var="rol">
                                            <td class="align-middle">
                                                <div class="d-flex align-items-center">
                                                    <div class="ms-3 lh-1">
                                                        ${rol.authority}
                                                    </div>
                                                </div>
                                            </td>
                                        </g:each>


                                    </tr>
                                </g:each>

                                </tbody>
                            </table>



                        </div>
                    </div>
                </div>
            </div>



            <div class="card-footer bg-white text-center">
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center">


                        <div class="pagination">
                            <g:paginate total="${annonceCount ?: 0}" />
                        </div>
                    </ul>
                </nav>

            </div>
        </div>
    </body>
</html>