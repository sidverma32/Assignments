using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Subject_selection : System.Web.UI.Page
{
    
    protected void Page_PreInit(object sender, EventArgs e)
    {
        List<string> keysQ = Request.Form.AllKeys.Where(key => key.Contains("txtQ")).ToList();
        if (keysQ.Count > 0)
        {
            foreach (string key in keysQ)
            {
                int txtId = Convert.ToInt16(key.Substring(4));
                this.CreateTextBoxQ("txtQ" + txtId, txtId);
                txtId++;
            }
        }

        List<string> keysA = Request.Form.AllKeys.Where(key => key.Contains("txtA")).ToList();
        if (keysA.Count > 0)
        {
            foreach (string key in keysA)
            {
                int txtId = Convert.ToInt16(key.Substring(4));
                this.CreateTextBoxA("txtA" + txtId, txtId);
                txtId++;
            }
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            pnlQuestion.Controls.Clear();
            pnlAnswer.Controls.Clear();
        }
        //getting data from previous page
        if (Request.QueryString["Data"] != null)
            label1.Text = Request.QueryString["Data"];

    }
    //Creating dynamic textboxes
    private void InitializeDynamicText()
    {
        int index = pnlQuestion.Controls.OfType<TextBox>().ToList().Count + 1;
        int index1 = pnlAnswer.Controls.OfType<TextBox>().ToList().Count + 1;
        this.CreateTextBoxQ("txtQ" + index, index);
        this.CreateTextBoxA("txtA" + index1, index1);
    }

    protected void AddTextBox(object sender, EventArgs e)
    {
        int indexQ = pnlQuestion.Controls.OfType<TextBox>().ToList().Count + 1;
        int indexA = pnlAnswer.Controls.OfType<TextBox>().ToList().Count + 1;
        this.CreateTextBoxQ("txtQ" + indexQ, indexQ);
        this.CreateTextBoxA("txtA" + indexA, indexA);
    }

    private void CreateTextBoxQ(string id, int i)
    {
        TextBox txt = new TextBox { ID = id, Width = 120 };
        txt.CssClass = "input-lg";
        txt.ToolTip = "Team Name(1)";
        Label lbl = new Label { Text = "Question " + i + ": " };
        Literal lt = new Literal { Text = "<br />" };
        pnlQuestion.Controls.Add(txt);
        pnlQuestion.Controls.Add(lt);
    }

    private void CreateTextBoxA(string id, int i)
    {
        TextBox txt = new TextBox { ID = id, Width = 120 };
        Label lbl = new Label { Text = "Answer " + ": " };
        Literal lt = new Literal { Text = "<br />" };
        txt.CssClass = "input-lg";
        txt.ToolTip = "Team Name(2)";
       
        Button btnRemove = new Button { ID = "bttn" + i.ToString(), Text = "x" };
        btnRemove.Click += new EventHandler(Remove_Click);
        btnRemove.Visible = i != 1;

        pnlAnswer.Controls.Add(txt);
        pnlAnswer.Controls.Add(btnRemove);
        pnlAnswer.Controls.Add(lt);
    }
    //storing all value of textboxes into database
    protected void GetTextBoxValues(object sender, EventArgs e)
    {
        try
        {
          //aggregating all textboxes into a string
            string resultQ = pnlQuestion.Controls.OfType<TextBox>().Aggregate("", (current, textBox) => current + (textBox.ID + ": " + textBox.Text + ", "));
            string resultA = pnlAnswer.Controls.OfType<TextBox>().Aggregate("", (current, textBox) => current + (textBox.ID + ": " + textBox.Text + ", "));
            lblResult.Text = resultQ + resultA;
            //using (SqlConnection con = new SqlConnection("user id=sa;pwd=123;database=sports"))//
            
             using( SqlConnection con = new SqlConnection("Data Source=SQL5017.myASP.NET;Initial Catalog=DB_A0C1FC_sports;User Id=DB_A0C1FC_sports_admin;Password=sid7106375"))
            {
                con.Open();
                foreach (TextBox textBox in pnlQuestion.Controls.OfType<TextBox>())
                {
                    using (SqlCommand cmd = new SqlCommand("insert into tour values('" + label1.Text + "','"+textBox.Text+"')", con))
                    {
                        cmd.ExecuteNonQuery();
                        cmd.Dispose();
                    }
                }
                    foreach (TextBox textBoxes in pnlAnswer.Controls.OfType<TextBox>())
                    {

                        using (SqlCommand cmd = new SqlCommand("insert into tour values('" + label1.Text + "','" + textBoxes.Text + "')", con))
                        {
                            cmd.ExecuteNonQuery();
                            cmd.Dispose();
                        }
                    }
                
                con.Close();
            }
        }
        catch (Exception)
        {
            throw;
        }
    }
    //adding new textbox to panel
    protected void btnAddNew_Click(object sender, EventArgs e)
    {
        divAdd.Visible = true;
        InitializeDynamicText();
    }

    // add cancel button to panel 
    protected void Cancel_Click(object sender, EventArgs e)
    {
        divAdd.Visible = false;
        pnlQuestion.Controls.Clear();
        pnlAnswer.Controls.Clear();
        lblResult.Text = string.Empty;
    }
    //add remove button which is associated with each textbox
    protected void btnRemove_Click(object sender, EventArgs e)
    {
        List<string> keysQ = Request.Form.AllKeys.Where(key => key.Contains("txtQ")).ToList();
        List<string> keysA = Request.Form.AllKeys.Where(key => key.Contains("txtA")).ToList();
        int countQ = keysQ.Count; int countA = keysA.Count;
        if (countQ > 1 && countA > 1)
        {
            pnlQuestion.Controls.Remove(pnlQuestion.FindControl("txtQ" + countQ + ""));
            pnlAnswer.Controls.Remove(pnlAnswer.FindControl("txtA" + countA + ""));
        }
    }

    void Remove_Click(object sender, EventArgs e)
    {
        Button ib = sender as Button;
        if (ib != null)
        {
            string btnId = ib.ID;
            string txtId = btnId.Substring(4);

            string deltxtQ = "txtQ" + txtId;
            foreach (Control c in pnlQuestion.Controls)
            {
                if (c.ID == deltxtQ)
                {
                    pnlQuestion.Controls.Remove(c);

                    break;
                }
            }

            string deltxtA = "txtA" + txtId;
            foreach (Control a in pnlAnswer.Controls)
            {
                if (a.ID == deltxtA)
                {
                    pnlAnswer.Controls.Remove(a);
                    pnlAnswer.Controls.Remove(ib);
                    break;
                }
            }
        }
    }
  
    }


    


