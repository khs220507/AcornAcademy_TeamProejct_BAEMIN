<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<style>
        /* 태그 파트 */
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
        }

        section {}

        footer {}

        button {
            outline: none;
            cursor: pointer;
            /* 손가락모양 */
        }

        /* 해더 */
        .headerwrap {
            width: 1280px;
            border: 1px solid black;
            height: 100px;
            margin: 0 auto;
        }

        /* 세션 */
        /* 풋터 */

        ul,
        li {
            margin: 10px;
        }

        .section-cart-title {
            width: 1280px;
            border-bottom: 1px solid black;
            margin: 0 auto;
        }

        .section-cart-title-inner{
            margin-left: 100px;
        }



        .section-cart-box {
            width: 900px;
            border-bottom: 1px solid black;
            height: 400px;

        }

        .section-cart-inner {
            width: 700px;
            
            

            margin: 0 auto;

            display: flex;
            flex-direction: column;
            justify-content: space-between;

        }



        .section-cart-storeinfo-img {
            width: 100px;
        }

        .section-cart-menuname-wrap {
            display: flex;
            
        }

        .section-cart-menuname {
            display: flex;
            justify-content: space-between;

        }

        .section-cart-menuinfo-wrap {
            display: flex;
            
        }

        .section-cart-menuinfo-img {
            width: 125px;
        }

       

        .section-cart-change-number-wrap {
            position: relative;


        }



        .section-cart-change-number-inner {
            position: absolute;
            right: 0px;
            
        }

        .section-cart-orderprice {
            text-align: right;
        }


        .section-cart-change-number-input {
            display: flex;
            justify-content: right;
            align-items: center;
        }

        .section-cart-totalprice-wrap{
            display: flex;
            justify-content: space-between;
            border-top: 1px solid black;
            border-bottom: 1px solid black;
        }

        .section-cart-order-button{
            display: flex;
            justify-content: center;
        }
    </style>

</head>


<body>

    <header>
        <div class="headerwrap">해더</div>
    </header>

    <section>


        <div class="section-cart-box">
            <div class="section-cart-title">
                <div class="section-cart-title-inner"><h1>장바구니</h1></div>
                
            </div>

            <div class="section-cart-inner">

                <div class="section-cart-storeinfo">
                    <img class="section-cart-storeinfo-img" src="./쉑쉑버거.jpg"> shake shack
                </div>

                <div>
                    <div class="section-cart-menuname"><span>쉑버거</span><img src="./취소.png"></div>

                    <div class="section-cart-menuinfo-wrap">
                        <div><img class="section-cart-menuinfo-img" src="./쉑버거.jpg"></div>
                        <div>
                            <ul>
                                <li>A내용</li>
                                <li>B내용</li>
                            </ul>
                        </div>
                    </div>


                    <div class="section-cart-change-number-wrap">
                        <div class="section-cart-change-number-input">
                            <span> - </span>
                            <input type="text" placeholder=" 1 " style="width: 20px;">
                            <span> + </span>
                        </div>
                        <div class="section-cart-orderprice">
                            <span>주문금액:26000</span>
                        </div>
                    </div>





                </div>
                <div class="section-cart-totalprice-wrap">
                <div class="section-cart-totalprice-title">총 주문금액</div>
                <div class="section-cart-totalprice">26000원</div>
                </div>
                <div class="section-cart-order-button"><button>주문하기</button></div>
            </div>
        </div>

    </section>
    <footer>
    </footer>

</body>
</html>