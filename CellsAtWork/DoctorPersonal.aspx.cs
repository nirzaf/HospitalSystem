using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CellsAtWork
{
    public partial class DoctorPersonal : System.Web.UI.Page
    {

        Controller c;
        public static string did = login.id;
        public static string pid;
        
    protected void Page_Load(object sender, EventArgs e)
        {
            c = new Controller();
            Label19.Text = "";
            Label20.Text = "";
            Label21.Text = "";
            Label22.Text = "";
            Label23.Text = "";
            Label17.Text = "";
            Label18.Text = "";
            Label25.Text = "";
            Label24.Text = "";
            Label26.Text = "";

            if (did == null || did == "-1")
            {
                Response.Redirect("login.aspx");
            }


            DislayAppointments();

            UpdateCardInfo();
            if (!IsPostBack)
            {
                Label24.Text = "";
                DropDownList4.SelectedValue = "48";
                DropDownList5.SelectedValue = "48";
                initlists();
            }

        }
        protected void UpdateCardInfo()
        {
            string Name = "Name: ";
            string Email = "Email: ";
            string Phone = "Phone: ";
            string LastDegree = "LastDegree: ";
            string Department = "Department: ";
            if (did != "-1")
            {
                DataTable d = c.GetDoctor(did);
                doctornm.InnerHtml = Name + d.Rows[0][0] + " " + d.Rows[0][1];
                doctorEmail.InnerHtml = Email + d.Rows[0][2];
                doctorPhone.InnerHtml = Phone + d.Rows[0][3];
                doctorDept.InnerHtml = Department + d.Rows[0][4];
                docLastDegree.InnerHtml = LastDegree + d.Rows[0][5];
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }

        void DislayAppointments()
        {

            GridView1.DataSource = c.Appointments(did);
            if (GridView1.DataSource != null)
            {

                Label5.Text = "";
                GridView1.DataBind();

                foreach (TableCell cell in GridView1.HeaderRow.Cells)
                {
                    cell.Attributes.CssStyle["text-align"] = "center";
                }
            }
            else
            {
                DataTable dt = c.GetDoctorClinic(did);
                if (dt == null) {
                    Label16.Visible = false;
                    Button3.Text = "Add Clinic";
                    Label5.Text = "You have no clinic Right Now,You can add one below";
                    phoneclinic.Visible = false;
                }
                else
                {
                    Button3.Text = "Update Clinic";
                    Label5.Text = "No Current Appointment";
                }
            }
            foreach (GridViewRow row in GridView1.Rows)
            {
                foreach (TableCell cell in row.Cells)
                {
                    cell.Attributes.CssStyle["text-align"] = "center";
                }
            }
        }
        void initlists()
        {
            //DROPDOWN LIST FOR CURRENT CLINIC PHONES
            DropDownList1.Items.Clear();
            DropDownList1.DataTextField = "ClinicPhone";
            DropDownList1.DataValueField = "ClinicPhone";
            DropDownList1.DataSource = c.getclinicphones(did);
           
            
                DropDownList1.DataBind();
                ListItem promptphone = new ListItem("Select Phone", "-1");

                DropDownList1.Items.Insert(0, promptphone);
            DropDownList2.Items.Clear();
            //DROPDOWN LIST FOR CURRENT HOSPITAL THE DOCTOR IS WORKING AT
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "HospitalID";
            DropDownList2.DataSource = c.getdocHospitals(did);
            
                DropDownList2.DataBind();
                ListItem prompthospital = new ListItem("Select hospital", "-1");
                DropDownList2.Items.Insert(0, prompthospital);
          
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable d = c.GetDoctor(did);
            Label6.Text = "";
            if (TextBox1.Text == "")
            {
                TextBox1.Text = d.Rows[0][2].ToString();

            }
            if (TextBox2.Text == "")
            {
                TextBox2.Text = d.Rows[0][3].ToString();

            }
            if (DropDownList3.SelectedIndex == 0)
            {
                DropDownList3.SelectedItem.Text = d.Rows[0][5].ToString();

            }

            if( c.UpdateDrInfo(TextBox1.Text, TextBox2.Text, DropDownList3.SelectedItem.Text, did) != 0)
            {
                UpdateCardInfo();
            }
            else
            {
                Label6.Text = "There was an error while Updating those values Please Check them again";
            }
           
            TextBox1.Text = "";
            TextBox2.Text = "";
            DropDownList3.SelectedIndex = 0;
        }


        protected void Button5_Click(object sender, EventArgs e)
        {

            if (DropDownList2.SelectedIndex == 0)
            {
              Label18.Text="You didn't choose a Hospital to delete" ;
                return;
            }
            else
            {
                Label18.Text = "";
                c.deletehospital(did, Convert.ToInt32(DropDownList2.SelectedItem.Value));
                initlists();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (TextBox15.Text == "") {
                return;
            }
            int check = c.doctorhospital(did, Convert.ToInt32(TextBox15.Text));
            TextBox15.Text = "";
            if (check == 0)
            {
               Label25.Text=  "Error inserting this value, you work here or hospital key not correct";
            }
            else
            {
                initlists();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                Label26.Text = "You didn't choose a number to delete";
              
            }
            else
            {
                c.deleteclinicphone(DropDownList1.SelectedItem.Text);
                initlists();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int check = c.addclinicphone(did, TextBox9.Text);
            TextBox9.Text = "";
            if (check == 0)
            {
                Label27.Text="this number already exists";
            }
            else
            {
                initlists();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            GridViewRow gr = GridView1.SelectedRow;
            pid = gr.Cells[1].Text;
            Response.Redirect("DoctorDiagnose.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label19.Text = "";
            Label20.Text = "";
            Label21.Text = "";
            Label22.Text = "";
            Label23.Text = "";
            if (Button3.Text == "Update Clinic")
            {
                DataTable d = c.GetDoctorClinic(did);
                Label6.Text = "";
                if (TextBox11.Text == "")
                {
                    TextBox11.Text = d.Rows[0][1].ToString();
                }
                int valid = Convert.ToInt32(TextBox11.Text);
                if (valid < 0)
                {

                    Label19.Text = "invalid field";
                    return;
                }
                if (TextBox10.Text == "")
                {
                    TextBox10.Text = d.Rows[0][2].ToString();
                }
                if (TextBox12.Text == "")
                {
                    TextBox12.Text = d.Rows[0][3].ToString();
                }
                valid = Convert.ToInt32(TextBox12.Text);
                if (valid < 0)
                {

                    Label21.Text = "invalid field";
                    return;
                }
                if (DropDownList4.SelectedValue == "48")
                {
                    Label22.Text = "You must enter this field";
                    return;
                }
                if (DropDownList5.SelectedValue == "48")
                {
                    Label23.Text = "You must enter this field";
                    return;
                }
             

                string st1 = DropDownList4.SelectedItem.Text;
                string st2 = DropDownList5.SelectedItem.Text;
                st1 = st1.Substring(0, 2);
                st2 = st2.Substring(0, 2);
                int t1 = Convert.ToInt32(st1);
                int t2 = Convert.ToInt32(st2);

                if (!(Math.Abs(t1 - t2) <= 10 && Math.Abs(t1 - t2) > 0))
                {
                    Label23.Text = "the hours values are not logical check the again";
                    return;
                }
               

                if (c.UpdateClinic(did, Convert.ToInt32(TextBox11.Text), TextBox10.Text, Convert.ToInt32(TextBox12.Text), DropDownList4.SelectedItem.Text, DropDownList5.SelectedItem.Text) == 0)
                {
                    Label17.Text = "There was an error while Updating those values Please Check them again";

                }
                DropDownList4.SelectedValue = "48";
                DropDownList5.SelectedValue = "48";
            }
            else
            {
                if (TextBox11.Text == "")
                {
                   
                    Label19.Text = "You must enter this field";
                    return;
                }
                int valid = Convert.ToInt32(TextBox11.Text);
                if(valid<0)
                {

                    Label20.Text = "invalid field";
                    return;
                }
                if (TextBox10.Text == "")
                {
                    Label20.Text = "You must enter this field";
                    return;
                   
                }
                if (TextBox12.Text == "")
                {
                    Label21.Text = "You must enter this field";
                    return;
                }
                valid = Convert.ToInt32(TextBox12.Text);
                if (valid < 0)
                {

                    Label21.Text = "invalid field";
                    return;
                }
                if (DropDownList4.SelectedValue == "48")
                {
                    Label22.Text = "You must enter this field";
                    return;
                }
                if (DropDownList5.SelectedValue == "48")
                {
                    Label23.Text = "You must enter this field";
                    return;
                }
                string st1 = DropDownList4.SelectedItem.Text;
                string st2 = DropDownList5.SelectedItem.Text;
                st1 = st1.Substring(0, 2);
                st2 = st2.Substring(0, 2);
                int t1 = Convert.ToInt32(st1);
                int t2 = Convert.ToInt32(st2);

                if((t1-t2 <=10 && t1-t2>0) || (t2 - t1 < 0 && t2 - t1 >= -10))
                {  
                    Label23.Text = "the hours values are not logical check the again";
                    return;
                }

                int x=c.AddClinic(did, Convert.ToInt32(TextBox11.Text), TextBox10.Text, Convert.ToInt32(TextBox12.Text), DropDownList4.SelectedItem.Text, DropDownList5.SelectedItem.Text);
                if(x==0)
                {
                    Label17.Text = "there was an error during addition";
                    return;
                }
                phoneclinic.Visible = true;
                DislayAppointments();
            }
            
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            DropDownList4.SelectedValue = "48";
            DropDownList5.SelectedValue = "48";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {

           int x= c.DeleteClinic(did);
            if (x == -1)
            {
                Label24.Text = "you dont have a clinic delete";
            }
            DislayAppointments();

        }
    }
}