<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="<c:url value="/WEB-INF/content/css/login.css" />"
	rel="stylesheet">
	<style>
	@media (min-width: 768px) {
    .omb_row-sm-offset-3 div:first-child[class*="col-"] {
        margin-left: 25%;
    }
}

.omb_login .omb_authTitle {
    text-align: center;
	line-height: 300%;
}
	
.omb_login .omb_socialButtons a {
	color: white; // In yourUse @body-bg 
	opacity:0.9;
}
.omb_login .omb_socialButtons a:hover {
    color: white;
	opacity:1;    	
}
.omb_login .omb_socialButtons .omb_btn-facebook {background: #3b5998;}
.omb_login .omb_socialButtons .omb_btn-twitter {background: #00aced;}
.omb_login .omb_socialButtons .omb_btn-google {background: #c32f10;}


.omb_login .omb_loginOr {
	position: relative;
	font-size: 1.5em;
	color: #aaa;
	margin-top: 1em;
	margin-bottom: 1em;
	padding-top: 0.5em;
	padding-bottom: 0.5em;
}
.omb_login .omb_loginOr .omb_hrOr {
	background-color: #cdcdcd;
	height: 1px;
	margin-top: 0px !important;
	margin-bottom: 0px !important;
}
.omb_login .omb_loginOr .omb_spanOr {
	display: block;
	position: absolute;
	left: 50%;
	top: -0.6em;
	margin-left: -1.5em;
	background-color: white;
	width: 3em;
	text-align: center;
}			

.omb_login .omb_loginForm .input-group.i {
	width: 2em;
}
.omb_login .omb_loginForm  .help-block {
    color: red;
}

	
@media (min-width: 768px) {
    .omb_login .omb_forgotPwd {
        text-align: right;
		margin-top:10px;
 	}		
}
	</style>
</head>
<body style="padding-top: 75px">
	<div class="container">
		<div class="omb_login">
			<div class="row omb_row-sm-offset-3">
				<div class="col-xs-12 col-sm-6">
					<section id="content">
						<form action="perform_login" method="post">
							<h1>GET LOGGED IN</h1>
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user"></i></span>
								<input type="text" class="form-control" name="username"
									placeholder="email address or username"  pattern = ".{5,10}" title ="minimum name length is 5"/>
							</div>
							<span class="help-block"></span>

							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-lock"></i></span>
								<input type="password" class="form-control" name="password"
									placeholder="Password" pattern = ".{5,10}" title ="minimum name length is 5"/>
							</div>
							
							<div class="form-actions">
								<button class="btn btn-lg btn-primary btn-block" type="submit" >Login</button>
							</div>
						</form>
						<!-- form -->
				</div>
				</section>
				<!-- content -->
			</div>
			<!-- container -->
			<div class="row omb_row-sm-offset-3">
				<div class="col-xs-12 col-sm-3">
					<label class="checkbox"> <input type="checkbox"
						value="remember-me">Remember Me
					</label>
				</div>
				<div class="col-xs-12 col-sm-3">
					<p class="omb_forgotPwd">
						<a href="#">Forgot password?</a>
					</p>
				</div>
			</div>
		</div>
		<div class="row omb_row-sm-offset-3 omb_loginOr">
			<div class="col-xs-12 col-sm-6">
				<hr class="omb_hrOr">
				<span class="omb_spanOr"></span>
			</div>
		</div>
		<div class="row omb_row-sm-offset-3 omb_socialButtons">
			<div class="col-xs-4 col-sm-2">
				<a href="#" class="btn btn-lg btn-block omb_btn-facebook"> <i
					class="fa fa-facebook visible-xs"></i> <span class="hidden-xs">Facebook</span>
				</a>
			</div>
			<div class="col-xs-4 col-sm-2">
				<a href="#" class="btn btn-lg btn-block omb_btn-twitter"> <i
					class="fa fa-twitter visible-xs"></i> <span class="hidden-xs">Twitter</span>
				</a>
			</div>
			<div class="col-xs-4 col-sm-2">
				<a href="#" class="btn btn-lg btn-block omb_btn-google"> <i
					class="fa fa-google-plus visible-xs"></i> <span class="hidden-xs">Google+</span>
				</a>
			</div>
		</div>
	</div>

</body>
</html>
