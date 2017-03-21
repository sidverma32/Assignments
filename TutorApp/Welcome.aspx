<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>MyApp</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <link href="css/materialize.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/heroic-features.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

    <![endif]-->
      <style type="text/css">
  /*.divider{
    width:5px;
    height:auto;
    display:inline-block;
}*/
  .card {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
    
    border-radius: 5px;
}

.card:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.4);
}


   body, html {
    height: 100%;
    margin: 0;
}

.bg {
    /* The image used */
            background-image: url('pic1-min.jpeg');
         
    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

  .landscape {
        float:left;
        width:175px;     
        height:175px;    
        overflow:hidden; 
      
           }
 


        </style>
</head>

<body>



    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="index.aspx">MyApp</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
          
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <div class="container">
   <div class="card" style="background-color:aliceblue">
                <div class="col-md-12 col-sm-4 hero-feature">
                  
                      <%--  <asp:Image ID="Image1" runat="server" Width="100px" Height="100px"  ImageAlign="Left" CssClass="img-responsive"  ImageUrl= ></asp:Image>  
                      --%>  
                  
        <center><h3 style="font-family:Jokerman">Congratulations!</h3></center><br />
        <center><p style="font-family:'Courier New';font-size:medium">Level Welcomes You:)</p><center></div>
       <div class="divider"></div>
       <div class="section">
            <center><p style="font-family:'AR BERKLEY';font-size:large">Thanks</p><center></div>
      
     
    </div></div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>

