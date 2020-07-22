using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class BloodBank : System.Web.UI.Page
    {
        Controller c;
        string wid = "6";
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new Controller();
            Label4.Text = "";
            Label5.Text = "";
            Label6.Text = "";
            DislayGrids();
            if (!IsPostBack)
            {
                initlists();
            }
        }
        void DislayGrids()
        {

            GridView1.DataSource = c.ViewBloodBank(wid);
            if (GridView1.DataSource != null)
            {
                GridView1.DataBind();
                foreach (TableCell cell in GridView1.HeaderRow.Cells)
                {
                    cell.Attributes.CssStyle["text-align"] = "center";
                }

                foreach (GridViewRow row in GridView1.Rows)
                {
                    foreach (TableCell cell in row.Cells)
                    {
                        cell.Attributes.CssStyle["text-align"] = "center";
                    }
                }
            }
        }
        void initlists()
        {
            //DROPDOWN LIST FOR CURRENT CLINIC PHONES
            DropDownList1.DataTextField = "PatientID";
            DropDownList1.DataValueField = "PatientID";
            DropDownList1.DataSource = c.GetPatient();
            DropDownList1.DataBind();
            ListItem promptphone = new ListItem("Select Patient", "-1");
            DropDownList1.Items.Insert(0, promptphone);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label4.Text = "";
            Label5.Text = "";
            Label6.Text = "";
            if (DropDownList1.SelectedIndex == 0)
            {
                Label4.Text = "You Should choose the patient ID";
                return;
            }
            if (DropDownList2.SelectedIndex == 0)
            {
                Label5.Text = "You Should Select the Amount required";
                return;
            }
            if (DropDownList3.SelectedIndex == 0)
            {
                Label6.Text = "You Should a type of action";
                return;
            }
            string x = c.CheckBloodType(DropDownList1.SelectedItem.Text);
            if (x==null)
            {
                Label4.Text = "This Patient hasn't done a bloodtype test update his info with his BloodType First";
                return;
            }
            if (DropDownList3.SelectedItem.Text == "Take")
            {
                if (Convert.ToInt32(DropDownList2.SelectedItem.Text) > Convert.ToInt32(c.CheckBloodAmount(wid,x)) )
                {
                    Label6.Text = "No enough Blood from this type";
                    return;
                }

            }
            c.BloodBankTransaction(DropDownList1.SelectedItem.Text, wid, Convert.ToInt32(DropDownList2.SelectedItem.Text), DropDownList3.SelectedItem.Text);
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            DropDownList3.SelectedIndex = 0;
            DislayGrids();



        }
    }
}