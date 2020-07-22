using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class AddDepartments : System.Web.UI.Page
    {

        Controller c;
        int hid = 2;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new Controller();
            Label4.Text = "";
            Label5.Text = "";
            Label6.Text = "";

            if (!IsPostBack)
            {
                initchecklist();
            }
        }
        protected void initchecklist()
        {
            CheckBoxList1.Items.Clear();
            CheckBoxList1.DataSource = c.SelectDept();
            CheckBoxList1.DataTextField = "name";
            CheckBoxList1.DataValueField = "code";
            CheckBoxList1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Label4.Text = "";
            Label5.Text = "";
            Label6.Text = "";

            if (TextBox1.Text == "")
            {
                Label4.Text = "You must enter this field";
                return;
            }
            if (TextBox2.Text == "")
            {
                Label5.Text = "You must enter this field";
                return;
            }
            int  x= c.AddDept(TextBox1.Text, Convert.ToInt32(TextBox2.Text));
            if (x == 0)
                Label6.Text = "Error while adding";
            initchecklist();
            TextBox1.Text = "";
            TextBox2.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          
            foreach(ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected)
                {
                    c.AddHosDept(Convert.ToInt32(li.Value), hid);
                }
            }
            initchecklist();
        }
    }
}