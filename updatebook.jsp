<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%
  Integer empid = (Integer) session.getAttribute("empid");
  if(empid == null) {
    response.sendRedirect("emplogin");
  }
%>
    
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <style>
     body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      background-color: #eee;
    }
     .login-form button[type="submit"] {
      border: none;
      outline: 0;
      display: inline-block;
      padding: 12px;
      color: white;
      background-color: rgb(87, 87, 113);
      text-align: center;
      cursor: pointer;
      width: 100%;
      border-radius: 40px;
      transition: background-color 0.3s ease, transform 0.3s ease;
    }

    .login-form button[type="submit"]:hover {
      background-color: rgb(29, 101, 125);
      transform: scale(1.05);
    }


    .additional-links {
      text-align: center;
      margin-top: 20px;
      color: #000000;
    }

    .centered {
      position: absolute;
      top: 62%;
      left: 50%;
      transform: translate(-50%, -50%);
    }

    .login-container {
      width: 350px;
      margin: 100px auto;
      padding: 20px;
      background-color: rgba(255, 255, 255, 0.3);
      border-radius: 10px;
      backdrop-filter: blur(10px);
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    }
    .login-form label {
  margin-bottom: 5px; /* You can adjust this value as needed */
}
.login-form .form-group {
  margin-bottom: 15px; /* You can adjust this value as needed */
}


    .login-form input[type="password"]  input[type="text"],
    input[type="month"], input[type="text"],
    input[type="number"]{
      width: 100%;
      margin-bottom: -15px;
      padding:10px;
      border: none;
      border-radius: 5px;
      background-color: rgba(255, 255, 255, 0.8);
      outline: none;
    }
  .login-form input[type="file"]::-webkit-file-upload-button {
    background-color: 	black;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.login-form input[type="file"]::-webkit-file-upload-button:hover {
    background-color: grey;
}
  



  </style>
  <meta charset="UTF-8">
  <title>Let's learn Request Book</title>
  <link rel="stylesheet" href="/css/empstyle.css">
  <link rel="shortcut icon" type="image/png" href="/images/book.png"/>

</head>
<body>
  <nav>
    <div class="nav-content">
      <div class="logo">
        <a href="employeehome" class="" target="_top"style="color: brown;"> 𝒍𝒆𝒕'𝒔 𝒍𝒆𝒂𝒓𝒏!
   <img src="/images/book.png" width="30px" height="30" />
</a>
      </div>
      <ul class="nav-links">
           <li><a href="employeehome">Home</a></li>
        <li><a href="viewallrequests">Book Requests</a></li>
        
         <li><a href="addabook">Add Book</a></li>
                  
         
        <li><a href="updateemployee">Update Profile</a></li>
        <li><a href="updatebook">Update Book</a></li>
        <li><a href="emplogout">Logout</a></li>

      </ul>
    </div>
  </nav>
  <section class="home"></section>
 
  <div class="centered">
    <div class="login-container">
<h3 id="errorMessage"><font color="green">${message}</font></h3><br>
      <a href="updatebook" class="" target="_top" style="color: darkpink;"> 𝒍𝒆𝒕'𝒔 𝒍𝒆𝒂𝒓𝒏 !  𝑼𝒑𝒅𝒂𝒕𝒆 𝑩𝒐𝒐𝒌
   <img src="/images/book.png" width="20px" height="20" /><br>
</a>
      <br>
<form class="login-form" method="post" enctype="multipart/form-data" action="updatebookdata">
        <div class="input-row">
        
        <div class="form-group">
            <label for="bookId">Book Id:</label><br>
            <input type="text" id="bookID" placeholder="Book Id" name="bookId"  required>
            <br>
        </div>
          
          <div class="form-group">
            <label for="bookName">Book Name:</label><br>
            <input type="text" id="bookName" placeholder="Book Name" name="bookName" required>
            <br>
        </div>
       
          <div class="form-group">
            <label for="year">Year:</label><br>
            <input type="month" id="year" name="year" required><br>
          </div>
           </div>
            <div class="input-row">
           <div class="form-group">
            <label for="author">Author:</label><br>
            <input type="text" id="author" name="author" required><br>
          </div>
       
        
          <div class="form-group">
            <label for="publisher">Publisher:</label>
            <input type="text" id="publisher" name="publisher" required>
          </div>
          
        </div>
        <br>
         
        <button type="submit">Update Book</button>
      </form>
    </div>
  </div>
  <script>
    let nav = document.querySelector("nav");
    window.onscroll = function() {
      if(document.documentElement.scrollTop > 20){
        nav.classList.add("sticky");
      } else {
        nav.classList.remove("sticky");
      }
    }
  </script>
  <script type="text/javascript">
    // Wait for 3 seconds (3000 milliseconds) and then hide the error message
    setTimeout(function() {
        document.getElementById("errorMessage").style.display = "none";
    }, 3000);
</script>
</body>
</html>
