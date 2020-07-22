using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class DoctorDiagnose : System.Web.UI.Page
    {
        Controller c;
        string pid = DoctorPersonal.pid;
        string did = DoctorPersonal.did;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new Controller();
            Label11.Text = "";
            Label12.Text = "";
            Label13.Text = "";
            Label14.Text = "";
            Label15.Text = "";
            Label16.Text = "";
            if (!IsPostBack)
            {
                DislayGrids();
            }

        }
        void DislayGrids()
        {

            GridView1.DataSource = c.GeneralPatientInfo(pid);
            if (GridView1.DataSource != null)
            {
                Label1.Text = "";
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
            else
            {
                Label1.Text = "No Personal Info";
            }
            GridView2.DataSource = c.prediagnosis(pid);
            if (GridView2.DataSource != null)
            {
                Label2.Text = "";
                GridView2.DataBind();
                foreach (TableCell cell in GridView2.HeaderRow.Cells)
                {
                    cell.Attributes.CssStyle["text-align"] = "center";
                }

                foreach (GridViewRow row in GridView2.Rows)
                {
                    foreach (TableCell cell in row.Cells)
                    {
                        cell.Attributes.CssStyle["text-align"] = "center";
                    }
                }
            }
            else
            {
                Label2.Text = "No Previos Diagnosis";
            }
            GridView3.DataSource = c.getsurgeries(pid);
            if (GridView3.DataSource != null)
            {
                Label3.Text = "";
                GridView3.DataBind();
                foreach (TableCell cell in GridView3.HeaderRow.Cells)
                {
                    cell.Attributes.CssStyle["text-align"] = "center";
                }

                foreach (GridViewRow row in GridView3.Rows)
                {
                    foreach (TableCell cell in row.Cells)
                    {
                        cell.Attributes.CssStyle["text-align"] = "center";
                    }
                }
            }
            else
            {
                Label3.Text = "No Previous Surgeries";
            }
            GridView4.DataSource = c.bloodtransfer(pid);
            if (GridView4.DataSource != null)
            {
                Label4.Text = "";
                GridView4.DataBind();
                foreach (TableCell cell in GridView4.HeaderRow.Cells)
                {
                    cell.Attributes.CssStyle["text-align"] = "center";
                }

                foreach (GridViewRow row in GridView4.Rows)
                {
                    foreach (TableCell cell in row.Cells)
                    {
                        cell.Attributes.CssStyle["text-align"] = "center";
                    }
                }
            }
            else
            {
                Label4.Text = "No Previous BloodTransfusions";
            }
            GridView5.DataSource = c.Getallergies(pid);
            if (GridView5.DataSource != null)
            {
                Label5.Text = "";
                GridView5.DataBind();
                foreach (TableCell cell in GridView5.HeaderRow.Cells)
                {
                    cell.Attributes.CssStyle["text-align"] = "center";
                }

                foreach (GridViewRow row in GridView5.Rows)
                {
                    foreach (TableCell cell in row.Cells)
                    {
                        cell.Attributes.CssStyle["text-align"] = "center";
                    }
                }
            }
            else
            {
                Label5.Text = "No Allergies";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label14.Text = "";
            Label15.Text = "";
            Label16.Text = "";
            if (TextBox1.Text=="")
            {
                Label14.Text = "Enter this field";
                return;
            }
            if (TextBox2.Text == "")
            {
                Label15.Text = "Enter this field";
                return;
            }
            if (TextBox3.Text == "")
            {
                Label16.Text = "Enter this field";
                return;
            }
            c.adddiagnosis(did, pid, TextBox1.Text, TextBox2.Text, TextBox3.Text);
            DislayGrids();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label11.Text = "";
            Label12.Text = "";
            Label13.Text = "";
            if (DropDownList2.SelectedIndex == 0)
            {
                Label12.Text = "You Should Select the Allergy Type";
                return;
            }
            if (DropDownList1.SelectedIndex == 0)
            {
                Label11.Text = "You Should Select Allergy Name";
                return;
            }
           
            int x= c.addallergy(pid,DropDownList1.SelectedItem.Text,DropDownList2.SelectedItem.Text);
            if (x == 0)
                Label13.Text = "There was an error while inserting those values";

            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            DislayGrids();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }

}