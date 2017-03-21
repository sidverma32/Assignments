<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html>
    <head>
    	<title>MyApp</title>
    	<meta name="viewport" content="width=device-width, initial-scale=1"/>
      	<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
      	<link type="text/css" rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <form runat="server">
        <div class="section">  </div>
        <center>
      <img class="responsive-img" style="width: 250px;" src="http://i.imgur.com/ax0NCsK.gif" />
      <div class="section"></div>
            
      <h5 class="indigo-text">Please, Register into your account</h5>
      <div class="section"></div>
<asp:Label ID="Label1" runat="server" CssClass="indicator"></asp:Label>
        <div class="container">
	      <div class="col s12 m4 l4">
		      	<div class="widget-item z-depth-1" style="display: inline-block; padding: 32px 48px 0px 48px; border: 1px solid #EEE;">

		      		<div>
		      			<div class="row">
			      		
			      				<div class="row">
							      	<div class="input-field col s12">
							      		
							        	<%--<input id="username" type="text" class="validate">--%>
                                          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
							        	<label>First Name</label>
							      	</div>

                                      	<div class="input-field col s12">
							      		
							        	<%--<input id="username" type="text" class="validate">--%>
                                          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
							        	<label>Last Name</label>
							      	</div>
                                      	<div class="input-field col s12">
							      									        	<%--<input id="username" type="text" class="validate">--%>
                                          <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
							        	<label>Email ID</label>
							      	</div>
							      	<div class="input-field col s12">
							      
							        	<%--<input id="password" type="text" class="validate">--%>
                                               <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
							        	<label>Phone Number</label>
							      	</div>
                                      <center>
                                          <div class="row">
                                        <asp:Button ID="Button1" CssClass="btn waves-effect waves-light"  runat="server" Text="NEXT"></asp:Button>
							    	<%--<button class="btn waves-effect waves-light" type="submit" >Login<i class="mdi-action-lock-open right"></i></button>--%>
							    </div></center>
                                  <br />
			      				</div>

			     
			      		</div>
		      		</div>
		      	</div>
		      	</div>
  	  	</div>
               <a href="Login.aspx">Already have an Account?</a>
        </center>
        
            <div class="section"></div>
    <div class="section"></div>
            </form>
    	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      	<script type="text/javascript" src="js/materialize.min.js"></script>
      	
    </body>
