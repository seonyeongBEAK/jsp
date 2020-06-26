<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>회원가입</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
 
<script type="text/javascript">
    // F12 버튼 방지
    $(document).ready(function(){
        $(document).bind('keydown',function(e){
            if ( e.keyCode == 123 /* F12 */) {
                e.preventDefault();
                e.returnValue = false;
            }
        });
    });
    
    // 우측 클릭 방지
    document.onmousedown=disableclick;
    status="우클릭 금지 사이트입니다.";
    
    function disableclick(event){
        if (event.button==2) {
            alert(status);
            return false;
        }
    }
</script>
</head>
<body oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/farm2-1.png');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-49">
						SIGN UP
					</span>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "아이디를 입력하세요.">
						<input class="input100" type="text" name="id" placeholder="아이디">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
						
									
					<div class="wrap-input100 validate-input" data-validate="비밀번호를 입력하세요.">
						<input class="input100" type="password" name="pwd" placeholder="비밀번호">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input m-b-23" data-validate = "이름을 입력하세요.">
						<input class="input100" type="text" name="name" placeholder="이름">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="주소를 입력하세요.">
						<input class="input100" type="text" name="addr" placeholder="주소">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
					
			
					<div class="wrap-input100 validate-input" data-validate="휴대폰번호를 입력하세요.">
						<input class="input100" type="text" name="phone" placeholder="휴대폰">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
					
					

					
					
					
					<br>
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								SIGN UP
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>