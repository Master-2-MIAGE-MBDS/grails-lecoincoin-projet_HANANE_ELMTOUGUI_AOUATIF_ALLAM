<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'illustration.label', default: 'Illustration')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <asset:stylesheet src="style.css"/>
    </head>
    <body>
        <div id="list-illustration" class="content scaffold-list" role="main">

        <div class="row mt-6">
            <div class="col-md-12 col-12">
                <!-- card  -->
                <div class="card">
                    <!-- table  -->
                    <div class="table-responsive">
                        <table class="table text-nowrap mb-0">
                            <thead class="table-light">
                                <tr>
                                    <th >Filename</th>
                                    <th>Annonce</th>
                                </tr>
                            </thead>
                            <tbody>

                            <g:each in="${illustrationList}" var="illustration">
                                <tr>
                                    <td class="align-middle">
                                        <div class="d-flex align-items-center">
                                            <div class="ms-3 lh-1">
                                                <g:each in="${illustration}" var="image">
                                                    <g:link controller="illustration" action="show" id="${image.id}"><img src="${resource(dir:'images',file:image.filename)}"> </g:link >
                                                </g:each>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="align-middle">
                                        <div class="d-flex align-items-center">
                                            <div class="ms-3 lh-1">
                                                <g:link controller="annonce" action="show" id="${illustration.id}" >
                                                    ${illustration.annonce.title}
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



        <!-- card footer  -->
        <div class="card-footer bg-white text-center">
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">


                    <div class="pagination">
                        <g:paginate total="${illustrationCount ?: 0}" />
                    </div>
                </ul>
            </nav>

        </div>
        </div>
    </body>
</html>