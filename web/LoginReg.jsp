<%-- 
    Document   : LoginReg
    Created on : Mar 25, 2018, 7:35:59 PM
    Author     : sbk11
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/form-elements.css">
        <link rel="stylesheet" href="css/style.css">
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#">Admission Portal</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item ">
                            <a class="nav-link" href="index.html">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Services</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact</a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="LoginReg.jsp">Login/Register</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Top content -->
        <div class="container">
            <div class="row">
                <div class="col-sm-5">
                    <div class="form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Login to our site</h3>
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form role="form" action="loginProcess" method="post" class="login-form">
                                <label class="radio-inline"><input type="radio" name="rolerd" style="margin-right:  5px; " checked >Student</label>
                                <label class="radio-inline" style="margin-left: 15px;"><input type="radio" name="rolerd" style="margin-right:  5px;" >Agent</label>
                                <div class="form-group">
                                    <label class="sr-only" for="form-username">Username</label>
                                    <input type="text" name="form-username" placeholder="Username..." class="form-username form-control" id="form-username">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="form-password">Password</label>
                                    <input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="form-password">
                                </div>
                                <h4><% 
    if(null!=request.getAttribute("errorMessage"))
    {
        out.println(request.getAttribute("errorMessage"));
    }
    else{
                                    %> <%
    }
    
                                    %> </h4>  
                                <button type="submit" class="btn">Sign in!</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-sm-1 middle-border"></div>
                <div class="col-sm-1"></div>

                <div class="col-sm-5">

                    <div class="form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Sign up now</h3>
                            </div>
                        </div>
                        <div class="form-bottom">
                            <label class="radio-inline"><input type="radio" name="rolerd" style="margin-right:  5px; " checked >Student</label>
                            <label class="radio-inline" style="margin-left: 15px;"><input type="radio" name="rolerd" style="margin-right:  5px;" >Agent</label>
                            <ul class="nav nav-tabs">
                                <li><a class="nav-link active" data-toggle="tab" href="#pd">Personal Details</a></li>
                                <li><a class="nav-link" data-toggle="tab" href="#ad">Academic Details</a></li>
                                <li><a class="nav-link" data-toggle="tab" href="#pr">Preview</a></li>
                            </ul>
                            <form role="form" action="" method="post" class="registration-form">
                                <div class="tab-content">
                                    <div style="margin-top: 10px" id="pd" class="tab-pane in active">
                                        <div class="form-group">
                                            <div class="form-inline">
                                                <input type="text" name="form-first-name" placeholder="First name..." class="form-first-name form-control" id="form-first-name" style="width: 33%; ">
                                                <input type="text" name="form-first-name" placeholder="Middle name..." class="form-first-name form-control" id="form-first-name" style="width:33%;">
                                                <input type="text" name="form-first-name" placeholder="Last name..." class="form-first-name form-control" id="form-first-name" style="width: 33%;">
                                            </div> 
                                        </div>
                                        <div class="form-group">
                                            <div class="form-inline">
                                                <input type="text" name="form-formar-Lname" placeholder="Formar Last Name" id="form-formar-last-name" style="width: 50%; ">
                                                <input type="text" name="form-pref-Fname" placeholder="Prefered First Name" id="form-formar-last-name" style="width: 50%; ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="radio-inline" style="margin-right:  15px;">Gender :</label>
                                            <label class="radio-inline"><input type="radio" name="gender" style="margin-right:  5px; " >Male</label>
                                            <label class="radio-inline" style="margin-left: 15px;"><input type="radio" name="gender" style="margin-right:  5px;" >Female</label>
                                            <label class="radio-inline" style="margin-left: 15px;"><input type="radio" name="gender" style="margin-right:  5px;" >Other</label>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-inline">
                                                <input type="text" name="form-lang" placeholder="First Spoken Language " id="form-lang" style="width: 40%; "/>
                                                <label style="margin-left: 15px;"> D.o.B. : </label> 
                                                <input type="date" name="form-dob" id="form-dob" style="width: 44%; "/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-inline">
                                                <input type="text" name="form-email" placeholder="Email..." class="form-email form-control" id="form-email" style="width: 50%; ">
                                                <input type="text" name="form-contact" pattern="[0-9]*" maxlength="10" placeholder="Contact No..." id="form-contact" style="width: 50%; ">
                                            </div>
                                        </div>
                                        <div class="form-address"><div class="form-inline">
                                                <textarea name="form-address" placeholder="Current Address..." 
                                                          id="form-address" style="width: 50%"></textarea>
                                                <textarea name="form-address" placeholder="Permenant Address..." 
                                                          id="form-address" style="width: 50%"></textarea>
                                            </div> </div>
                                        <div class="form-group">
                                            <input type="text" name="form-nationality" placeholder="Nationality" id="form-nationality" style="width: 100%;margin-top: 5%">
                                        </div>
                                    </div>
                                    <div style="margin-top: 10px" id="ad" class="tab-pane fade in active">

                                        <div id="accordion">
                                            <div class="card">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0">
                                                        <input type="button" value="Highschool Details" class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                    </h5>
                                                </div>
                                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        <input type="text" name="form-hs-name" placeholder="Name..." class="form-hs-name form-control" id="form-hs-name">
                                                        <input type="text" name="form-hs-address" placeholder="Address..." class="form-address form-control" id="form-hs-address" >
                                                        <input type="text" name="form-hs-year" placeholder="Year of Completion ..." class="form-hs-year form-control" id="form-hs-year">
                                                        <input type="text" name="form-hs-score" placeholder="Score..." class="form-hs-score form-control" id="form-hs-score">
                                                        <input type="text" name="form-hs-board" placeholder="Board..." class="form-hs-board form-control" id="form-hs-board">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0">
                                                        <input type="button" value="Undergraduate Details" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        <input type="text" name="form-ug-name" placeholder="Name..." class="form-ug-name form-control" id="form-ug-name">
                                                        <input type="text" name="form-ug-address" placeholder="Address..." class="form-ug-address form-control" id="form-ug-address" >
                                                        <input type="text" name="form-ug-year" placeholder="Year of Completion ..." class="form-ug-year form-control" id="form-ug-year">
                                                        <input type="text" name="form-ug-score" placeholder="Score..." class="form-ug-score form-control" id="form-ug-score">
                                                        <input type="text" name="form-ug-univ" placeholder="University Name..." class="form-ug-univ form-control" id="form-ug-univ">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0">
                                                        <input type="button" value="Masters Details" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                        <input type="text" name="form-pg-name" placeholder="Name..." class="form-pg-name form-control" id="form-pg-name">
                                                        <input type="text" name="form-pg-address" placeholder="Address..." class="form-pg-address form-control" id="form-pg-address" >
                                                        <input type="text" name="form-pg-year" placeholder="Year of Completion ..." class="form-ug-year form-control" id="form-pg-year">
                                                        <input type="text" name="form-pg-score" placeholder="Score..." class="form-pg-score form-control" id="form-pg-score">
                                                        <input type="text" name="form-pg-univ" placeholder="University Name..." class="form-pg-univ form-control" id="form-pg-univ">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0">
                                                        <input type="button" value="Ph.D. Details" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                                    </h5>
                                                </div>
                                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                                    <div class="card-body">
                                                        <input type="text" name="form-phd-name" placeholder="Name..." class="form-phd-name form-control" id="form-phd-name">
                                                        <input type="text" name="form-phd-address" placeholder="Address..." class="form-phd-address form-control" id="form-phd-address" >
                                                        <input type="text" name="form-phd-year" placeholder="Year of Completion ..." class="form-phd-year form-control" id="form-phd-year">
                                                        <input type="text" name="form-phd-score" placeholder="Score..." class="form-phd-score form-control" id="form-phd-score">
                                                        <input type="text" name="form-phd-univ" placeholder="University Name..." class="form-phd-board form-control" id="form-phd-board">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="pr" class="tab-pane fade in active">
                                        <label>Verify all the data you entered before submitting...</label>
                                        <button type="submit" class="btn">Sign Up!</button>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>

                </div>

            </div>
        </div>


        <!-- Footer -->
        <footer class="py-2 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Admission Portal 2018</p>
            </div>
            <!-- /.container -->
        </footer>


    </body>

</html>
