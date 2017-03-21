<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html lang="en">

<head runat="server">
    	<title>RestoFinder</title>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

           <script src="js/jquery.js" type="text/javascript"></script>
    <link type="text/css"  rel="stylesheet" href="css/materialize.min.css"/>
     
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}


.active {
    background-color: #4CAF50;
}
</style>
    </head>
    <body style="overflow:hidden">
 <form runat="server">
     
<ul>
    <br />
    <li style="float:right"><asp:Button ID="Button1" runat="server" Text="Search" CssClass="btn" OnClick="Button1_Click" /></li>
  <li style="float:right">   <asp:RadioButton ID="RadioButton1" runat="server" Text="Dehradun" GroupName="g1" />&nbsp;&nbsp;&nbsp;
               </li>
  <li style="float:right"><asp:RadioButton ID="RadioButton2" runat="server" Text="Haridwar"  GroupName="g1"/>
</li>
    
  <li style="float:right">  Choose Your City&nbsp;</li>
</ul>           
				 
     </form>  
       <div class="slider"> 
              
        <ul class="slides">
      
           
       <li>
     <%--   <img src="images/img1.jpg" style="width:100%;height:100%">--%> <!-- random image -->
    <img src="images/pexels-photo.jpg" style="width:100%"> <!-- random image -->
            
        <div class="caption center-align">
          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">“There are advantages to being a star though – you can always get a table in a full restaurant".</h5>
              
             </div>
        
      </li>
      <li>
      <%--  <img src="images/img2.jpg" style="width:100%;height:100%"> --%><!-- random image -->
             <img src="https://ununsplash.imgix.net/photo-1414849424631-8b18529a81ca?q=75&fm=jpg&s=0e993004a2f3704e8f2ad5469315ccb7"  style="width:100%" > <!-- random image -->
              
        <div class="caption left-align">
          <h3>Left Aligned Caption</h3>
          <h5 class="light grey-text text-lighten-3">"You must do the things you think you cannot do"</h5>
        </div>
      </li>
      <li>
        <%--<img src="http://lorempixel.com/580/250/nature/3" style="width:100%"> <!-- random image -->
 --%>        <img src="https://ununsplash.imgix.net/uploads/1413259835094dcdeb9d3/6e609595?q=75&fm=jpg&s=6a4fc66161293fc4a43a6ca6f073d1c5"  style="width:100%"> <!-- random image -->
            
          <div class="caption right-align">
          <h3>Right Aligned Caption</h3>
          <h5 class="light grey-text text-lighten-3">"Life is really simple, but we insist on making it complicated".</h5>
        </div>
      </li>
      <li>
        <img src="images/food-salad-restaurant-person.jpg"  style="width:100%"> <!-- random image -->
        
        <div class="caption center-align">
          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">"A restaurant is a fantasy-a kind of living fantasy in which diners are the most important members of the cast."</h5>
        </div>
      </li>
  </ul>  </div>  
            

        

    	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      	<script type="text/javascript" src="js/materialize.min.js"></script>
       	<script type="text/javascript">
       	    //$(document).ready(function () {
       	    //    $('.carousel.carousel-slider').carousel({ full_width: true });
       	    //});
       	    $(function () { $('.slider').slider({ full_width:true, height: 600 }); });

       	
       	    
			</script>
        
       	
    </body>
</html>