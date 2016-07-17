<#-- @ftlvariable name="_csrf" type="org.springframework.security.web.csrf.CsrfToken" -->
<#--@ftlvariable name="drinkForm" type="net.testaholic.brewery.domain.bartender.BartenderCreateForm" -->
<#macro layout>
<!doctype html>
<html lang="en">
<head>

    <style>html, body {
        width: auto !important;
        overflow-x: hidden !important;
    }</style>

    <script>
        $(document).ready(function () {

            $().UItoTop({easingType: 'easeOutQuart'});
            $('#stuck_container').tmStickUp({});
            $('.gallery .gall_item').touchTouch();

        });
        var is_chrome = navigator.userAgent.toLowerCase().indexOf('chrome') > -1;
        if (is_chrome) {
            document.write("Yaii it is Chrome only")
        }
    </script>


    <meta name="viewport"
          content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=320, height=device-height, target-densitydpi=medium-dpi"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta charset="utf-8">
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="/static/images/favicon.ico">
    <link rel="shortcut icon" href="/static/images/favicon.ico"/>
    <link rel="stylesheet" href="/static/css/style.css">
    <link rel="stylesheet" href="/static/css/touchTouch.css">
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/jquery-migrate-1.1.1.js"></script>
    <script src="/static/js/script.js"></script>
    <script src="/static/js/superfish.js"></script>
    <script src="/static/js/jquery.equalheights.js"></script>
    <script src="/static/js/jquery.mobilemenu.js"></script>
    <script src="/static/js/jquery.easing.1.3.js"></script>
    <script src="/static/js/tmStickUp.js"></script>
    <script src="/static/js/jquery.ui.totop.js"></script>
    <script src="/static/js/touchTouch.jquery.js"></script>
    <script src="/static/js/bootstrap.js"></script>

    <script src="/static/js/html5shiv.js"></script>
    <link rel="stylesheet" media="screen" href="/static/css/ie.css">

<script>
    $(document).ready(function() {
        $('.input-group input[required], .input-group textarea[required], .input-group select[required]').on('keyup change', function() {
            var $form = $(this).closest('form'),
                    $group = $(this).closest('.input-group'),
                    $addon = $group.find('.input-group-addon'),
                    $icon = $addon.find('span'),
                    state = false;

            if (!$group.data('validate')) {
                state = $(this).val() ? true : false;
            }else if ($group.data('validate') == "email") {
                state = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test($(this).val())
            }else if($group.data('validate') == 'phone') {
                state = /^[(]{0,1}[0-9]{3}[)]{0,1}[-\s\.]{0,1}[0-9]{3}[-\s\.]{0,1}[0-9]{4}$/.test($(this).val())
            }else if ($group.data('validate') == "length") {
                state = $(this).val().length >= $group.data('length') ? true : false;
            }else if ($group.data('validate') == "number") {
                state = !isNaN(parseFloat($(this).val())) && isFinite($(this).val());
            }

            if (state) {
                $addon.removeClass('danger');
                $addon.addClass('success');
                $icon.attr('class', 'glyphicon glyphicon-ok');
            }else{
                $addon.removeClass('success');
                $addon.addClass('danger');
                $icon.attr('class', 'glyphicon glyphicon-remove');
            }

            if ($form.find('.input-group-addon.danger').length == 0) {
                $form.find('[type="submit"]').prop('disabled', false);
            }else{
                $form.find('[type="submit"]').prop('disabled', true);
            }
        });

        $('.input-group input[required], .input-group textarea[required], .input-group select[required]').trigger('change');


    });
</script>
    <style>
        .input-group-addon.primary {
            color: rgb(255, 255, 255);
            background-color: rgb(50, 118, 177);
            border-color: rgb(40, 94, 142);
        }
        .input-group-addon.success {
            color: rgb(255, 255, 255);
            background-color: rgb(92, 184, 92);
            border-color: rgb(76, 174, 76);
        }
        .input-group-addon.info {
            color: rgb(255, 255, 255);
            background-color: rgb(57, 179, 215);
            border-color: rgb(38, 154, 188);
        }
        .input-group-addon.warning {
            color: rgb(255, 255, 255);
            background-color: rgb(240, 173, 78);
            border-color: rgb(238, 162, 54);
        }
        .input-group-addon.danger {
            color: rgb(255, 255, 255);
            background-color: rgb(217, 83, 79);
            border-color: rgb(212, 63, 58);
        }
    </style>

    <script>
        var text_max = 200;
        $('#count_message').html(text_max + ' remaining');

        $('#message').keyup(function () {
            var text_length = $('#message').val().length;
            var text_remaining = text_max - text_length;

            $('#count_message').html(text_remaining + ' remaining');
        });
    </script>
    <script src="/static/js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/static/css/sweetalert.css">

    <script>
        function myFunction(x) {

            switch (x) {
                case 0:
                    swal("Here's a message!");
                    break;
                case 1:
                    sweetAlert("Oops...", "Something went wrong!", "error");
                    break;
                case 2:
                    swal("Thanks for your feedback!", "We will get back to you soon. \nRead the product instructions next time!", "success");
                    break;
                case 3:
                    swal({
                        title: "Are you sure?",
                        text: "Your will not be able to recover this imaginary file!",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#DD6B55",
                        confirmButtonText: "Yes, delete it!",
                        cancelButtonText: "No, cancel plx!",
                        closeOnConfirm: false,
                        closeOnCancel: false
                    }, function (isConfirm) {
                        if (isConfirm) {
                            swal("Deleted!", "Your imaginary file has been deleted.", "success");
                        } else {
                            swal("Cancelled", "Your imaginary file is safe :)", "error");
                        }
                    });
                    break;
            }
        }
    </script>

</head>
</#macro>

<#macro nav_bar>
<body>

<script>
    var isFirefox = navigator.userAgent.toLowerCase().indexOf('firefox') > -1;
    var isChrome = navigator.appVersion.indexOf("Chrome/") != -1;
</script>

<script>
    $(document).ready(function () {

        $().UItoTop({easingType: 'easeOutQuart'});
        $('#stuck_container').tmStickUp({});
        $('.gallery .gall_item').touchTouch();

    });
</script>

<nav class="mynavbar navbar-default navbar-static-top navbar-fixed-top" role="navigation">
    <div class="container navbar-static-top">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1"><span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
            <a href="#" class="navbar-brand">Brewery</a></div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse mynavbar" id="bs-example-navbar-collapse-1">
            <ul id="navbar" class="nav navbar-nav ">
                <li><a href="/src/main/webapp">home</a></li>
                <script>

                    if (isChrome) { //bug
                        document.write("<li> <a href=\"/drinks\">");
                        document.write("drinks");
                        document.write("</a></li>");

                        document.write("<li> <a href=\"/appetizers\">");
                        document.write("appetizers");
                        document.write("</a></li>");
                        document.write("<img src=\"/static/images/logo.png\" alt=\"Smiley face\" width=\"62\" height=\"42\">");
                    } else {
                        document.write("<li> <a href=\"/appetizers\">");
                        document.write("appetizers");
                        document.write("</a></li>");

                        document.write("<li> <a href=\"/drinks\">");
                        document.write("drinks");
                        document.write("</a></li>");

                        document.write("<li class=\"mylogo\"><a href=\"/home\"><img src=\"/static/images/logo.png\" alt=\"Smiley face\" width=\"42\" height=\"42\"></a></li>");
                    }

                </script>

            <#--<li class="mylogo"><a href="/home"><img src="/static/images/logo.png"  width="25" height="25" alt="Logo"></a></li>-->
                <li><a href="/location/1">location</a></li>
                <li><a href="/contact">contact</a></li>
                <#if currentUser??>
                    <li>
                        <a href="/user/${currentUser.id}">my account</a>
                    </li>
                    <li>
                        <form class="fix_this chromeOnly" name="formLogout" action="/logout" method="post">
                            <input class="fix_this" type="hidden" name="${_csrf.parameterName}"
                                   value="${_csrf.token}"/>
                            <a class="fix_this" href="#"
                               onclick="document.formLogout.submit(); return false;"><br>logout</a>
                        </form>
                    </li>
                <#else>
                    <li><a href="/login">login</a></li>
                </#if>

            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>


<div class="container nav_bar_space">
    <div class="row">
        <#nested>
    </div>
</div>

<div class="container">
    <hr>
    <!-- Footer -->
    <footer id="footer">
        <div class="container">
            <div class="row" style="color: #000;">
                <div class="grid_12">
                    <div class="socials">
                        <script>
                            if (!isChrome) {
                                document.write("<a href=\"#\" class=\"fa fa-twitter\"></a>")
                                document.write("<a href=\"#\" class=\"fa fa-facebook\"></a>")
                            } else {
                                document.write("<a href=\"#\" class=\"fa fa-facebook chromeOnly\"></a>")
                                document.write("<a href=\"#\" class=\"fa fa-twitter chromeOnly\"></a>")
                            }
                        </script>


                        <a href="#" class="fa fa-google-plus"></a>
                        <a href="#" class="fa fa-pinterest"></a>
                    </div>

                    <script>
                        if (!isChrome) {
                            document.write("<div class=\"copyright\"><span class=\"brand\">Testaholic Brewery</span> &copy; <span id=\"copyright-year\"></span> | <a href=\"#\">Privacy Policy</a></div>");
                        }
                    </script>

                </div>
            </div>
        </div>
    </footer>

</div>
</body>
</html>
</#macro>