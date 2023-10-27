<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Login Result</title>
    <style>
        /* CSS 스타일 정의 */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        a {
            text-decoration: none;
        }

        header {
            background-color: #48D1CC;
            height: 100px;
            margin-bottom: 50px;
        }

        section {}

        footer {}

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .login-title {
            text-align: center;
            padding: 20px;
        }

        h1 {
            color: #333;
        }

        p {
            font-size: 18px;
            color: #555;
        }

        .login-form {
            background-color: #fff;
            padding: 20px;
            max-width: 350px;
            /* 폼의 최대 너비 설정 */
            width: 100%;
            border: 3px solid #48D1CC;
            box-shadow: 0px 0px 5px #ccc;
            border-radius: 10px;
        }

        span {
            display: block;
            margin-bottom: 10px;
            font-weight: bolder;
        }

        input[type="text"],
        input[type="password"] {
            width: 99%;
            height: 30px;
            padding: 10px;
            font-size: 20px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .vertical-center {
            line-height: 30px;
            /* 이 값을 조정해서 세로 중앙 정렬의 높이를 조절할 수 있음 */
        }

        input:focus {
            border-color: #0982f0;
            /* 포커스 시 테두리 색상 설정 */
            outline: none;
            /* 포커스 아웃라인 제거 */
        }

        input[type="submit"] {
            font-weight: bolder;
            font-size: 18px;
            background-color: #48D1CC;
            color: white;
            height: 50px;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 250px;
            display: block;
            margin: 0 auto;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        .options {
            position: relative;
            align-items: center;
            height: 20px;
        }

        .optlab1 {
            left: 0px;
        }

        .optlab2 {
            right: 0px;
        }

        .options label {
            margin-right: 20px;
            /* 각 옵션 사이의 간격 조절 */
            position: absolute;
        }

        .remember-me {
            display: flex;
            align-items: center;
            font-size: 12px;
        }

        .remember-links {
            font-size: 12px;
            left: 0px;
        }

        .signup-link {
            margin-top: 10px;
            text-align: right;
            font-size: 12px;
        }

        .right-links {
            text-align: right;
        }

        .kakao {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>

<body>
    <header>
        <div class="headerwrap">해더</div>
    </header>
    <section>


        <div class="container">

            <!-- 로그인 폼 -->
            <form class="login-form" action="<%=request.getContextPath()%>/login" method="post">
                <div class="login-title">
                    <h1>로그인</h1>
                    <!-- 회원옵션 미선택시 출력되는 메시지  -->
                    <p> ${message}</p>

                </div>
                <div class="options">
                    <label class="optlab1"><input type="radio" name="option" value="buyer"> 손님</label>
                    <label class="optlab2"><input type="radio" name="option" value="seller"> 사장님</label>
                </div>

                <span></span>
                <input type="text" name="Id" placeholder="아이디" class="vertical-center">
                <br>
                <span></span>
                <input type="password" name="Pw" placeholder="비밀번호" class="vertical-center">
                <br>
                <!-- 아이디 저장 (Remember Me) 체크박스 -->
                <label class="remember-me">
                    <input type="checkbox" name="rememberMe"> 아이디 저장
                </label>
                <!-- 아이디 찾기와 비밀번호 찾기 링크 -->
                <div class="remember-links right-links">
                    <a href="<%=request.getContextPath()%>/findId">아이디 찾기</a> |
                    <a href="<%=request.getContextPath()%>/forgotPassword">비밀번호 찾기</a>
                </div>
                <p class="signup-link"><a href="<%=request.getContextPath() %>/signup">회원가입</a></p>


                <input type="submit" value="로그인">
                <div class="kakao">
                    <label class="kakao_login"><input type="radio" name="option" value="kakao"> 카카오로 간편 로그인</label>

                </div>
            </form>


            <p><a href="<%=request.getContextPath()%>/home">홈으로 돌아가기</a></p>
        </div>

    </section>
    <footer>
    </footer>


</body>

</html>