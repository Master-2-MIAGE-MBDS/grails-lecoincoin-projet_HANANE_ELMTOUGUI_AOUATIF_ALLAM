<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <asset:stylesheet src="style.css"/>
    </head>
    <body>

    <div id="list-annonce" class="content scaffold-list" role="main">

        <div class="row mt-6">
            <div class="col-md-12 col-12">
                <div class="card">
                    <div class="table-responsive">
                        <table class="table text-nowrap mb-0">
                            <thead class="table-light">
                            <tr>
                                <th >Title</th>
                                <th >Description</th>
                                <th >Price</th>
                                <th >Active</th>
                                <th >Illustrations</th>
                                <th >Author</th>
                            </tr>
                            </thead>
                            <tbody>

                            <g:each in="${annonceList}" var="annonce">
                                <tr>
                                    <td class="align-middle">
                                        <div class="d-flex align-items-center">
                                            <div class="ms-3 lh-1">
                                                <g:link controller="annonce" action="show" id="${annonce.id}" >
                                                    ${annonce.title}
                                                </g:link >
                                            </div>
                                        </div>
                                    </td>
                                    <td class="align-middle">
                                        <div class="d-flex align-items-center">
                                            <div class="ms-3 lh-1">
                                                ${annonce.description}
                                            </div>
                                        </div>
                                    </td>
                                    <td class="align-middle">
                                        <div class="d-flex align-items-center">
                                            <div class="ms-3 lh-1">
                                                ${annonce.price}
                                            </div>
                                        </div>
                                    </td>
                                    <td class="align-middle">
                                        <div class="d-flex align-items-center">
                                            <div class="ms-3 lh-1">
                                                ${annonce.active}
                                            </div>
                                        </div>
                                    </td>
                                    <td class="align-middle">
                                        <div class="d-flex align-items-center">
                                            <div class="ms-3 lh-1">
                                                <g:each in="${annonce.illustrations}" var="image">
                                                    <g:link controller="illustration" action="show" id="${image.id}"><img src="${resource(dir:'images',file:image.filename)}"> </g:link >
                                                </g:each>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="align-middle">
                                        <div class="d-flex align-items-center">
                                            <div class="ms-3 lh-1">
                                                <g:link controller="user" action="show" id="${annonce.id}" >
                                                    ${annonce.author.username}
                                                </g:link >
                                            </div>
                                        </div>
                                    </td>


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