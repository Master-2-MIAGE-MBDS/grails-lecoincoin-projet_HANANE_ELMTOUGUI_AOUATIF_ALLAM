<html>
<head>

%{--    affiche le main (c-a-d le idebar que j'ai réalisé)--}%
    <meta name="layout" content="${gspLayout ?: 'main'}"/>
%{--    affiche dans le title le login--}%
  <title><g:message code='springSecurity.login.title'/></title>

    <style type="text/css" media="screen">
    @import url('https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Poppins&display=swap');
    body {

        background-color: #eee;
        height: 100vh;
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(to top, #fff 10%, rgba(93, 42, 141, 0.4) 90%) no-repeat
    }
    .h2 {
        font-family: 'Kaushan Script', cursive;
        font-size: 3.5rem;
        font-weight: bold;
        color: #400485;
        font-style: italic
    }
    .wrapper {

        border-radius: 10px;

        box-shadow: 20px 20px 80px rgb(206, 206, 206)
    }
    .input-field {
        margin: 15px;
        border-radius: 5px;
        padding: 5px;
        display: flex;
        align-items: center;
        cursor: pointer;
        border: 1px solid #400485;
        color: #400485
    }
    .input-field:hover {
        color: #7b4ca0;
        border: 1px solid #7b4ca0
    }
    input {
        border: none;
        outline: none;
        box-shadow: none;
        width: 100%;
        padding: 0px 2px;
        font-family: 'Poppins', sans-serif
    }
    .option {
        margin: 15px;
        position: relative;
        padding-left: 30px;
        cursor: pointer
    }
    .option .text-muted {
        display: block;
        cursor: pointer
    }

    .option input {
        display: none
    }

    .checkmark {

        position: absolute;
        top: 3px;
        left: 0;
        height: 20px;
        width: 20px;
        background-color: #fff;
        border: 1px solid #ddd;
        border-radius: 50%;
        cursor: pointer
    }
    .option input:checked~.checkmark:after {
        display: block
    }
    .option .checkmark:after {
        content: "";
        width: 13px;
        height: 13px;
        display: block;
        background: #400485;
        position: absolute;
        top: 48%;
        left: 53%;
        border-radius: 50%;
        transform: translate(-50%, -50%) scale(0);
        transition: 300ms ease-in-out 0s
    }

    .option input[type="radio"]:checked~.checkmark {
        background: #fff;
        transition: 300ms ease-in-out 0s;
        border: 1px solid #400485
    }
    .option input[type="radio"]:checked~.checkmark:after {
        transform: translate(-50%, -50%) scale(1)
    }
    .btn.btn-block {

        border-radius: 20px;
        background-color: #400485;
        color: #fff
    }

    .btn.btn-block:hover {
        background-color: #55268be0
    }




    @media(max-width: 575px) {
        .wrapper {
            margin: 10px
        }
    }


    </style>

    %{--<style type="text/css" media="screen">
        body { background-color: red;}
    #login {
        margin: 15px 0px;
        padding: 0px;
        text-align: center;
    }

    #login .inner {
        width: 340px;
        padding-bottom: 6px;
        margin: 60px auto;
        text-align: left;
        border: 1px solid #aab;
        background-color: #f0f0fa;
        -moz-box-shadow: 2px 2px 2px #eee;
        -webkit-box-shadow: 2px 2px 2px #eee;
        -khtml-box-shadow: 2px 2px 2px #eee;
        box-shadow: 2px 2px 2px #eee;
    }

    #login .inner .fheader {
        padding: 18px 26px 14px 26px;
        background-color: #f7f7ff;
        margin: 0px 0 14px 0;
        color: #2e3741;
        font-size: 18px;
        font-weight: bold;
    }

    #login .inner .cssform p {
        clear: left;
        margin: 0;
        padding: 4px 0 3px 0;
        padding-left: 105px;
        margin-bottom: 20px;
        height: 1%;
    }

    #login .inner .cssform input[type="text"] {
        width: 120px;
    }

    #login .inner .cssform label {
        font-weight: bold;
        float: left;
        text-align: right;
        margin-left: -105px;
        width: 110px;
        padding-top: 3px;
        padding-right: 10px;
    }

    #login #remember_me_holder {
        padding-left: 120px;
    }

    #login #submit {
        margin-left: 15px;
    }

    #login #remember_me_holder label {
        float: none;
        margin-left: 0;
        text-align: left;
        width: 200px
    }

    #login .inner .login_message {
        padding: 6px 25px 20px 25px;
        color: #c33;
    }

    #login .inner .text_ {
        width: 120px;
    }

    #login .inner .chk {
        height: 12px;
    }
    </style>--}%
</head>

<body>

<div id="login">

    <div class="wrapper bg-white">
        <div class="h2 text-center"><g:message code='springSecurity.login.header'/></div>

        <g:if test='${flash.message}'>
            <div class="login_message">${flash.message}</div>
        </g:if>

        <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="pt-3" autocomplete="off">
            <div class="form-group py-2">
                <div class="input-field">

                    <input type="text" class="text_" placeholder="Username " name="${usernameParameter ?: 'username'}" id="username" required class=""/>
                </div>
            </div>
            <div class="form-group py-1 pb-2">
                <div class="input-field">

                    <input type="password" placeholder="Password" class="text_" name="${passwordParameter ?: 'password'}" id="password" required class=""/>
                </div>
            </div>

            <div class="d-flex align-items-start">
                <div class="remember">
                    <label class="option text-muted"><g:message code='springSecurity.login.remember.me.label'/>
                        <input type="radio" name="radio" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
                        <span class="checkmark"></span>
                    </label>
                </div>

            </div>

            <p>
                <input class="btn btn-block text-center my-3" type="submit" id="submit" value="${message(code: 'springSecurity.login.button')}"/>
            </p>
        </form>
    </div>
</div>



%{--<div id="login">
    <div class="inner">
        <div class="fheader"><g:message code='springSecurity.login.header'/></div>

        <g:if test='${flash.message}'>
            <div class="login_message">${flash.message}</div>
        </g:if>

        <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="cssform" autocomplete="off">
            <p>
                <label for="username"><g:message code='springSecurity.login.username.label'/>:</label>
                <input type="text" class="text_" name="${usernameParameter ?: 'username'}" id="username"/>
            </p>

            <p>
                <label for="password"><g:message code='springSecurity.login.password.label'/>:</label>
                <input type="password" class="text_" name="${passwordParameter ?: 'password'}" id="password"/>
            </p>

            <p id="remember_me_holder">
                <input type="checkbox" class="chk" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/>
                <label for="remember_me"><g:message code='springSecurity.login.remember.me.label'/></label>
            </p>

            <p>
                <input type="submit" id="submit" value="${message(code: 'springSecurity.login.button')}"/>
            </p>
        </form>
    </div>
</div>--}%
<script>
    (function() {
        document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
    })();
</script>
</body>
</html>
