<@layout>
<title xmlns="http://www.w3.org/1999/html">Testaholic.net Acme</title>


</@layout>
<body>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <img src="/static/images/acme_logo.png" width="50" height="50" alt="">
            <a class="navbar-brand" href="index.html">Acme Corporation</a>

        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#">About</a>
                </li>
                <li>
                    <a href="#">Services</a>
                </li>
                <li class="active">
                    <a href="#">Feedback</a>

                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tools <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="portfolio-1-col.html">Disintegrating pistol</a>
                        </li>
                        <li>
                            <a href="portfolio-2-col.html">Turbo Rocket</a>
                        </li>
                        <li>
                            <a href="portfolio-3-col.html">High Velocity Skates</a>
                        </li>
                        <li>
                            <a href="portfolio-4-col.html">Super Elastic Rope</a>
                        </li>
                        <li>
                            <a href="portfolio-item.html">Ground Spikes</a>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<!-- Page Content -->
<div class="container">

    <br>
    <br>
    <!-- Page Heading/Breadcrumbs -->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Feedback
                <small>Us</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="index.html">Home</a>
                </li>
                <li class="active">Feedback</li>
            </ol>
        </div>

        <br>
        <br>
    </div>
    <!-- /.row -->


    <!-- Content Row -->
    <div id="result"/>


    <div class="row">
        <!-- Map Column -->
        <!-- Feedback Details Column -->
        <h4>Here at Acme Corporation we strive for customer excelence. Our satisfaction comes from seeing Road Runners
            from around the world evaporate with our 100% Coyote safe tools. </h4>
        <div class="col-md-4">

            <h3>Contact Details</h3>
            <p>
                <strong> Wile E. Coyote </strong>
                <br>
                1600 Pennsylvania Ave NW<br>Washington, DC 20500<br>
            </p>
            <p><i class="fa fa-phone"></i>
                <abbr title="Phone">P</abbr>: +1-8 55-867- 5309 </p>
            <p><i class="fa fa-envelope-o"></i>
                <abbr title="Email">E</abbr>: <a href="mailto:wile-support@acmecorp.com">support@acmecorp.com</a>
            </p>
            <p><i class="fa fa-clock-o"></i>
                <abbr title="Hours">D</abbr>: Friday - Friday: 9:00 AM to 5:00 AM, 5 days a week.</p>
            <ul class="list-unstyled list-inline list-social-icons">
                <li>
                    <a href="https://twitter.com/testaholicNet"><i class="fa fa-facebook-square fa-2x"></i></a>
                </li>
                <li>
                    <a href="https://twitter.com/testaholicNet" target="_blank"><i
                            class="fa fa-twitter-square fa-2x"></i></a>
                </li>
                <li>
                    <a href="https://plus.google.com/113875247201476302372?hl=en"><i
                            class="fa fa-google-plus-square fa-2x"></i></a>
                </li>
            </ul>
        </div>
    </div>

    <h1>Feedback Form</h1>

    <div class="row">
        <div class="col-sm-offset-1 col-sm-8">
            <form method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="form-group">
                    <label for="validate-text">First Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="validate-text" id="validate-text"
                               placeholder="Please enter your last name..." required>
                        <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="validate-optional">Last Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="validate-optional" id="validate-optional"
                               placeholder="Please enter your last name...">
                        <span class="input-group-addon info"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>

                <div class="form-group">
                    <label for="validate-email">Email</label>
                    <div class="input-group" data-validate="email">
                        <input type="text" class="form-control" name="validate-email" id="validate-email"
                               placeholder="Please enter your email..." required>
                        <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
                    </div>
                </div>

                <div class="form-group">
                    <label for="validate-length">Product Feedback </label>

                    <div class="input-group" data-validate="length" data-length="15">
                        <input class="col-sm-1" id="checkbox1" type="checkbox" name="feedback_box"
                               onclick="if (this.checked){ document.getElementById('validate-length').removeAttribute('disabled');}"/>
                                <textarea rows="5" cols="75" class="form-control" id="validate-length" disabled required
                                          data-validation-required-message="Please enter your message" maxlength="999"
                                          style="resize:none"></textarea>
                        <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>


                    </div>
                </div>

                <label><strong>Which product would you like to complain about?</strong></label>
                </select>
                <div class="form-group">
                    <label for="validate-select">Product</label>
                    <div class="input-group">
                        <select class="form-control" name="validate-select" id="validate-select"
                                placeholder="Validate Select" required>

                            <option value="one">Disintegrating pistol</option>
                            <option value="">Select an item</option>
                            <option value="two">Turbo Rocket</option>
                            <option value="three">High Velocity Skates</option>
                            <option value="four">Super Elastic Rope</option>
                            <option value="four">Ground Spikes</option>
                        </select>
                        <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
                    </div>
                </div>

                <div class="form-group">
                    <label for="validate-phone">Primary Phone Number</label>
                    <div class="input-group" data-validate="phone">
                        <input type="text" class="form-control" name="validate-phone" id="validate-phone"
                               placeholder="(814) 555-1234" required>
                        <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
                    </div>
                </div>


                <div class="form-group">
                    <label for="validate-optional">Secondary Phone Number</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="validate-text" id="validate-text"
                               placeholder="(555) 687-5309" required>
                        <span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
                    </div>
                </div>

                <label><strong>How did you hear about Acme Corporation?</strong></label>
                <div class="btn-group" data-toggle="buttons">
                    <label class="btn btn-default"><input type="radio" name="optradio">Radio</label>
                    <label class="btn btn-default"><input type="radio" name="optradio">Search Engine</label>
                    <label class="btn btn-default"><input type="radio" name="optradio">Social Media</label>
                    <label class="btn btn-default"><input type="radio" name="optradio">National Coyote
                        Association</label>
                    <label class="btn btn-default"><input type="radio" name="optradio"><input type="number"
                                                                                              placeholder="other..."></input></label>
                </div>

            </form>
            <button type="submit" class="btn btn-primary col-xs-12" onclick="myFunction(2)" enabled>Submit
                Feedback
            </button>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <br>
        <br>
        <div class="row">
            <div class="col-lg-12">
                <p>Copyright &copy; Testaholic 2016</p>
            </div>
        </div>
    </footer>

</div>


</body>

</html>
