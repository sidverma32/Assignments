using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Slot_Booking : System.Web.UI.Page
{
    string txt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["teacher"] != null)
            txt = Request.QueryString["teacher"];

        Label1.Text = txt;
        Label1.Font.Size = FontUnit.XLarge;
        Label1.ForeColor = System.Drawing.Color.Cyan;
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}