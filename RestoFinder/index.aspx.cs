using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    string txt;
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //selected value from list and sending through url.
      if(RadioButton1.Checked)
      {
          txt = RadioButton1.Text;
          Response.Redirect("resturant.aspx?city=" + Server.UrlEncode(txt));
      
      }
      else
          txt=RadioButton2.Text;
         Response.Redirect("resturant.aspx?city=" + Server.UrlEncode(txt));
      
        
    }
}