using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class ClinicAppointment : System.Web.UI.Page
    {
        Controller c;
        public static int dcount;
        public static string drid;
        string id = login.id;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new Controller();
            Label2.Text = "";
            if (!IsPostBack)
            {
                initlist();
            }
            PatientName.InnerHtml = c.GetPatientName(id);
        }
        protected void initlist()
        {
            dcount=0;
            DropDownList1.Items.Clear();
            ListItem promptphone = new ListItem("choose date", "-1");

            DropDownList1.Items.Insert(0, promptphone);
            DateTime dt = DateTime.Now;
            for (int i = 0; i < 7; i++)
            {
                ListItem dates = new ListItem(dt.ToString(), i.ToString());
                int curcount = c.getcountapp(drid, dt.ToString());
                int maxcount = c.getmaxapp(drid);
                if (curcount == maxcount)
                {
                    dt = dt.AddDays(1);


                }
                else
                {
                    dcount++;
                    DropDownList1.Items.Insert(dcount, dates);


                    dt = dt.AddDays(1);
                }
            }
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (dcount == 0)
            {
                Label2.Text = "Sorry this clinic is booked for the next seven days check it out tommorow";
                DropDownList1.Visible = false;
                return;
            }
            else
            {
                Label2.Text = "";
                DropDownList1.Visible = true;
                if (DropDownList1.SelectedIndex != 0)
                {
                    
                    if (c.makeapp(drid, id, DropDownList1.SelectedItem.Text) ==0)
                    {
                        Label2.Text = "there was an error";
                        DropDownList1.SelectedIndex = 0;
                    }
                    else
                    {
                        
                        initlist();
                    }
                }
                else
                {
                    Label2.Text = "choose a date first";
                    return;
                }
            }
        }
    }
}