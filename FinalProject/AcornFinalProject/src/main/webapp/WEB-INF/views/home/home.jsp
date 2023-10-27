<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* reset css */
	a{
		text-decoration: none;
	}
		
	button{
		outline: none;	
		cursor: pointer;	/* 손가락모양 */
	}
    *{
      margin: 0;
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body{
      display: flex;
      flex-direction: column;
      align-items: center;
      height: 100vh;
    }
    header{
      display: flex;
      flex: 1.5;
      justify-content:center;
      align-items: center;
      width: 1280px;
      border: 1px solid black;

	  background-color: #48D1CC;
    }
    header .logo{
     
      border: 1px solid black;
      flex: 2.5;
      display: flex;
      justify-content: center;
      align-items: center;
      
    }
    header .logo p{
    	color: white;
    	font-size: 40px;
    }
    header .info-wrap{
      border: 1px solid black;
      flex: 5;
    }
    header .info-wrap .address-wrap{
    	display: flex;
    	justify-content: center;
    	align-items: center;
    }
    header .info-wrap .address-wrap p{
    	color: white;
    	font-size: 20px;
    }
    
    header .info-wrap .address-wrap img{
     	width: 20px;
     	height: 20px;
     }
     header .info-wrap .search-wrap{
     	width: 400px;
     	height: 35px;
     	background-color: white;
     	border-radius: 10px;
     	margin: 0 auto;
     }
     header .info-wrap .search-wrap input{
     	width: 350px;
     	height: 30px;
     	margin-left: 10px;
     	margin-top: 5px;
     	/*border: none;*/
     	outline:none;
     }
      header .info-wrap .search-wrap img{
      	width: 25px;
      	height: 25px;
      	margin-top: 10px;
      }
    
    header .login-btn{
      border: 1px solid black;
      flex: 2.5;
      display: flex;
      justify-content: center;
      align-items: center;
    }
    header .login-btn a{
    	color: white;
    	font-size: 30px;
    }
    section{
      flex: 7;
      width: 1280px;
      border: 1px solid black;
    }
    footer{
      flex: 1.5;
      width: 1280px;
      border: 1px solid black;
    }
  </style>
</head>
<body>
 <header>
    <div class="logo">
		<p>배달의민족</p>
	</div>
      <div class="info-wrap">
      	<div class="address-wrap">
      		<p>인천 서구 가좌동</p>
      		<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEMAAABDCAYAAADHyrhzAAAACXBIWXMAAAsTAAALEwEAmpwYAAACFUlEQVR4nO3aS6iMYRzH8cchtyMWCpHYkEhu2ZIiyWVhY2FDOolkY2shnYRkYWNLOoSykJ0kFnIpSwq5lGzkFuXuo+mcKYvpeGfmzDvv+7zPp2Y5m2/N9OvfE0KSJEmSJEmSH4zBeVyv4GdNoyA7VM8DjG4UYxRuqI5fWD7cz2U+vqmGE1n+P/rF7xUmZYkxAc/Ebct/Q9RhvXhdDs3CJfH5hFmtxJiBD+Kyr+kQddgvHvcbboqs0IO7yu8nlrUcog4rhgZKmR0PIwWnxL4pmogxGa+V0+YRC1GHbcrnYugUXBP7psgKc/BFOewNnYaDiu9eW5siK4zFI8XeFEtDXrAKfxTT0dxC1OGM4nmJ3pA3TMVbxbIp9xB16FMcF0I3GTwi3yzIppjZ1Rg1WIQfXY6xOxQFjnUxRO3E0BOKAhPxvEubYkkoGmzoQowjoahwJccQL7qyKbLCbHzOKcbGUHQ4kEOIgVCi5w0POxjiYyE2RVZYid8ditEXygano98UWWEK3kS/KbLC9hGM0R/KzuC7qXY9rT2VCGWHefjaZox1IRY41EaIcyEmGIfHLYR4h2khNljdwhF5V4gVBpoIcbt2SQuxwnS8zxDiOxaG2GFPhhiHQxUYfA10Z5gQTzA+VAUWD3NEXhuqBicbhDgbqgi9Q6e7uDdFVtj6T4ydoepwFbei3hRZYS4WZP5CkiRJkiShBP4C7su4G0s4YJkAAAAASUVORK5CYII=">
      		<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAACrklEQVR4nO2Zv2sUQRTHN/6IEEliVESNdTRip51c0FYQo8FgY5NWEIREWws5LVRQRJLGwtKAYOslgn9BLAzGRkliIUZFo14sNB8ZfZhF7m7fzM3ObCRfWDjY/b55n72ZeTOzSbKm/1zAXuASMAG8AL7KZX5XgItAT1JUAYeASfQyoAeTogjYCNwBlrGX8dwGNsSG6AKeOADU+ne2xPwnbLpSlp4CrTFATHfyrVsxBrbLmMjSctAJwHOX+leVUBD7yF89IUBMsdNoDhgA2uXqB2aU3pEQIBUlxNY607W5l6XHIUBeKhIZaOA/rfDPhABZVCTS3sDfofAvhgCpNgnSqfBXQ4C8USTS38A/qPDPhQDRrK3M7NRVw7sNmFf4J0KA3FQk8vutysDukGtQCWF0PQTIcfLXsRAgm4HvOUJUgbbcQQTmYY4gD4JACMipHEFOhN5UzeYAMW9iBwMRmOEcQC4EhRAQM6V+8gjx2VT94CACc8MjyLUoEAKyG/jmAeILsDMaiMBc8QByOSqEkez+3jYB8c6Mt6QIAs43AXIuKYqAVmDaAeJ57nUDaAFeZSRyJPV8yfKsyzx7NOU/nOE3BbjFBaSkfKN/D6CB+xYg91K+9cAzhafkAjIq5rKFZwfwQZHQArDdIm5ZfKMuff69mA9Yes8qQM5YxuwV30dgk43RHKYZTdk0qFzmP3KMOWW9OgbGxTTs2OiuOl1swbWCs7JIHbdZDJpd2k9gj0ujEuekz70Gf5ZDP4Al1UchYEganXRtNBVrLAVx1+NXgCG/D2fHapNCOe1jH472JQPd0qWWfO0NZMbp9RSrU3IzOXY3enDEakBFEJqJKFVd6x55xhZZpQHY71R0AousYg1clZtjScHFymxYrrXSfc3q0yywLg3Sx+pVX4ROsaYkS78A4C8IokWKTaoAAAAASUVORK5CYII=">
      	</div>
      	<div class="search-wrap">
      		<input type="text">
      		<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAADBElEQVR4nO1YzWsTQRQfFb1Z1Ioaj+rJq1Q9W8281NpaMOhB6sG/olUQeq34PwiibW+1Z7+gaJJ5m30vhsZPBKFFb3qsVSJvE7Q7u5UknU0b2R8MISTz2/dm3sfvrVIpUqRI0bMYXCr258iMA5tZIIPAZlmTWZXP5vdZ+T1bfXlAbSdkq94JzWYGGNeAsd7CWtOMj+A1Ht9Sw/PV6h5NeA8Yf7RoeGg1bgfvnkLcvSXhAoxPOzE84gjj4gWiQ10zfhjxIJB5H2sQoacJJ6BcGtCIGTld+cz65rRmnNSM5XhHzDvh7VLYmBcxhr8B8i61wqG5NKIZ38Y48izxcGrGvG38/EhtcW87PPJ/YLMQDScznWi1iSQs4fyden1nJ3yyz3ZCk1m9WCkdc299cPVBqQyFTbsnbwMKhT6Jf4v3oUqo6oTqfJZw2AW3ZjNq94nBpWK/colGhw1XG5f8kerke9dd8qtAHoRiFScc89+yknnGJb9qaJl1J1QuDbjkHyI8Y91wzSW/AsaV9Q84V3l12CX/ec87anXn7y75VVO3/HmANDSX/MIHViIrxzG6HDohxEySNwCEXxLNAdE2ieYAYzXZKsQ46ZJfs7ltdeQHvdMH6vUdQIbC/OamcgkZA+1OLKrSBTf4OGbroaFq8YhKWgsFkrhQ6NsM56jv79OEHyze+yoJyAxrl1PN5nGnajQ/N7dL9tunD+XySZUUZIaNmaYW2r2J4OQt46GxplSSCEZEwudxI2GugpdbSlgfxzThx7jRMkdmXHVlJrY1/N/49UWYSV2X5hSMoIgZYDwbCDa72kT3/wQqXUvcCdHrms2TfxnT6dLihGs5vWE4sZm2E7tlQxv7poDxRmA0h7VQV25CIDOsjIGtvpkTw6VUrq82YixE93fPiYYjlf1y9UG/IKwB4zdN5hew+SraRuSBdNiNmhRsByc2C6hgPtrxu5QTrgD/hRNsrvS+ExSfE/IaRvUKcuRdjThB+Fn1EnJRJ1ZUr0EHb+/MJzl9V3NIihQpUijn+A1qcPW2rNhwowAAAABJRU5ErkJggg==">
      	</div>
      </div>
      <div class="login-btn"><a href="">로그인</a></div>
  </header>
  <section></section>
  <footer></footer>
</body>
</html>