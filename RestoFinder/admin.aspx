<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
  Id: <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    City: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
Name: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        Location:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        Reviews:
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        ratings:
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
       <br />
        filenmae:
        <asp:FileUpload ID="FileUpload1" runat="server" />
<asp:Button ID="btnUpload" runat="server" Text="Upload"
OnClick="btnUpload_Click" />
<br />
<asp:Label ID="lblMessage" runat="server" Text=""
Font-Names = "Arial"></asp:Label>
    </div>
    </form>
</body>
</html>
