<%@ Page Language="C#" AutoEventWireup="true" CodeFile="individual.aspx.cs" Inherits="individual" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html lang="en">

<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">


    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <link href="css/materialize.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/heroic-features.css" rel="stylesheet">
     <style type="text/css">
         
 
   body, html {
    height: 100%;
    margin: 0;
}
    .card {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
    
    border-radius: 5px;
}

.card:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.4);
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

.blankstar
{
background-image: url(images/blank_star.png);
width: 16px;
height: 16px;
}
.waitingstar
{
background-image: url(images/half_star.png);
width: 16px;
height: 16px;
}
.shiningstar
{
background-image: url(images/shining_star.png);
width: 16px;
height: 16px;
}
</style>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

    <![endif]-->
   
</head>

<body>


    
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                   <a class="navbar-brand" href="index.aspx">RestoFinder</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
           
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
     <div class="bg" >  <h3 style="text-align:center;padding-top:250px;margin-top:0px; font-family: 'AR BERKLEY';font-size:xx-large">       <asp:Label ID="Label7" runat="server"  Font-Bold="true"/></h3>
        </div>
  
    <!-- Page Content -->
    <div class="container">
        
        <!-- Jumbotron Header -->
       
        <hr>

        <!-- Title -->
        <div class="row">
            <div class="col-lg-12">
               
            </div>
        </div>
        <!-- /.row -->
         <form runat="server">

        <!-- Page Features -->
        <div class="row text-center">
           
                <div class="col-md-10 col-sm-4 hero-feature">
                            
          <div class="card" >             
<center>
     <div class="row">
                 <div class="col s12 m6 l3"><p>  Resturants Name:
     <asp:Label ID="Label1" runat="server"  Font-Bold="true"/></p></div>
     <div class="col s12 m6 l3"><p>   Address: 
    <asp:Label ID="Label2" runat="server"  Font-Bold="true"/></p></div>
  <div class="col s12 m6 l3"><p>  Reviews:
   <asp:Label ID="Label3" runat="server"  Font-Bold="true"/>
   </p></div>
       <div class="col s12 m6 l3"><p>
      Ratings:
   <asp:Label ID="Label4" runat="server"  Font-Bold="true"/></p></div>
   
    
             
<asp:ScriptManager ID="ScriptManager1" runat="server" ></asp:ScriptManager>
     <cc1:Rating ID="Rating1" runat="server" AutoPostBack="true" StarCssClass="blankstar"
        WaitingStarCssClass="waitingstar" FilledStarCssClass="shiningstar"
        EmptyStarCssClass="blankstar" OnChanged="Rating1_Changed">
    </cc1:Rating>
         </div>
       <div class="divider"></div>
                    <div class="section">
             <p>
<asp:Label ID="Label5" runat="server" Text="Label" ></asp:Label>,
<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label> 
    </p></div>
    </center></div>
                        </div>
               
        </div>
        <!-- /.row -->
         </form>
        <hr>
       

        <!-- Footer -->
      
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
