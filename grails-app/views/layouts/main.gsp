
<!doctype html>
<html lang="en">
<head>
    <title>LeCoinCoin</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <asset:stylesheet src="style.css"/>
    <g:layoutHead/>
</head>
<body>
<div class="wrapper d-flex align-items-stretch">

    <nav id="sidebar">
        <div class="custom-menu">
            <button type="button" id="sidebarCollapse" class="btn btn-primary">
                <i class="fa fa-bars"></i>
                <span class="sr-only">Toggle Menu</span>
            </button>
        </div>
        <div class="p-4 pt-5">
            <h1><a href="/annonce/index" class="logo">CoinCoin</a></h1>

            <ul class="list-unstyled components mb-5">

                <li>
                    <a href="/annonce/index">Home</a>
                </li>

                <li>
                    <a href="/login/auth">Login</a>
                </li>
            <li class="active">
                <a href="#homeSubmenu2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Users</a>
                <ul class="collapse list-unstyled" id="homeSubmenu2">
                    <li>
                        <a href="/user/index">Liste d'utilisateurs</a>
                    </li>
                    <li>
                        <a href="/user/create">Nouveau utilisateur</a>
                    </li>


                </ul>
            </li>

            <li class="active">
                <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Anonces</a>
                <ul class="collapse list-unstyled" id="homeSubmenu">
                    <li>
                        <a href="/annonce/index">Liste d'annonce</a>
                    </li>
                    <li>
                        <a href="/annonce/create">Nouvelle annonce</a>
                    </li>

                </ul>
            </li>
            <li class="active">
                <a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Illustrations</a>
                <ul class="collapse list-unstyled" id="homeSubmenu1">
                    <li>
                        <a href="/illustration/index">Liste d'illustrations</a>
                    </li>
                    <li>
                        <a href="/illustration/create">Nouvelle illustration</a>
                    </li>

                </ul>
            </li>

            </ul>


        </div>
    </nav>

    <!-- Page Content  -->
    <div id="content" class="p-4 p-md-5 pt-5">


    <h2 class="mb-4">LeCoinCoin</h2>


    <g:layoutBody/>


</div>
</div>


<asset:javascript src="jquery.min.js"/>
<asset:javascript src="popper.js"/>
<asset:javascript src="bootstrap.min.js"/>
<asset:javascript src="main.js"/>

--}%

</body>
</html>

%{--
<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />

    <asset:stylesheet src="application.css"/>

--}%
%{--    <g:layoutHead/>--}%%{--

</head>
<body>


    --}%
%{--<div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/#">
		     <asset:image src="grails.svg" alt="Grails Logo"/>
                </a>
            </div>
            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
                <ul class="nav navbar-nav navbar-right">
                    <g:pageProperty name="page.nav" />
                </ul>
            </div>
        </div>
    </div>--}%
%{--


    <g:layoutBody/>

--}%
%{--    <div class="footer" role="contentinfo"></div>--}%%{--


    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>

</body>
</html>
--}%
