using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class AdminViewe : System.Web.UI.Page
    {
        Controller c;
        public static int a_id = AdminLogin.admin_id;
        public static string a_name;
        public static int h_id;
        public static string h_name;
        public static string h_adress;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new Controller();

            if (a_id == -1)
            {
                Response.Redirect("AdminLogin.aspx");
            }

            Adminnm.InnerHtml = c.GetAdminName(a_id);
            AdminName.InnerHtml= c.GetAdminName(a_id);
            UpdateInfo();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            a_name = TextBox1.Text;
            a_id =Convert.ToInt32( TextBox2.Text);
            c.Add_Admin(a_id,a_name);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            h_name = TextBox3.Text;
            h_id = Convert.ToInt32(TextBox4.Text);
            h_adress = TextBox5.Text;
            c.Add_Hospital(h_id, h_name, h_adress);
            int A=0, Acost=0, B=0, Bcost=0, AB=0, ABcost=0, O=0, Ocost=0, AP=0, APcost=0, BP=0, BPcost=0, ABP=0, ABPcost=0, OP=0, OPcost=0;
            if(TextBox6.Text!="")
            A =Convert.ToInt32( TextBox6.Text.ToString());
            if(TextBox14.Text!="")
             Acost = Convert.ToInt32(TextBox14.Text.ToString());
            if (TextBox7.Text != "")
                B = Convert.ToInt32(TextBox7.Text.ToString());
            if (TextBox15.Text != "")
                Bcost = Convert.ToInt32(TextBox15.Text.ToString());
            if (TextBox8.Text != "")
                AB = Convert.ToInt32(TextBox8.Text.ToString());
            if (TextBox16.Text != "")
                ABcost = Convert.ToInt32(TextBox16.Text.ToString());
            if (TextBox9.Text != "")
                O = Convert.ToInt32(TextBox9.Text.ToString());
            if (TextBox17.Text != "")
                Ocost = Convert.ToInt32(TextBox17.Text.ToString());
            if (TextBox10.Text != "")
                AP = Convert.ToInt32(TextBox10.Text.ToString());
            if (TextBox18.Text != "")
                APcost = Convert.ToInt32(TextBox18.Text.ToString());
            if (TextBox11.Text != "")
                BP = Convert.ToInt32(TextBox11.Text.ToString());
            if (TextBox19.Text != "")
                BPcost = Convert.ToInt32(TextBox19.Text.ToString());
            if (TextBox12.Text != "")
                ABP = Convert.ToInt32(TextBox12.Text.ToString());
            if (TextBox20.Text != "")
                ABPcost = Convert.ToInt32(TextBox20.Text.ToString());
            if (TextBox13.Text != "")
                OP = Convert.ToInt32(TextBox13.Text.ToString());
            if (TextBox21.Text != "")
                OPcost = Convert.ToInt32(TextBox21.Text.ToString());

            c.AddBloodBankAdmin(h_id,A,Acost,B,Bcost,AB,ABcost,O,Ocost,AP,APcost,BP,BPcost,ABP,ABPcost,OP,OPcost);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Monthly_Report.aspx");
        }
        protected void UpdateInfo()
        {
            Adminnm.InnerHtml = c.GetAdminName(a_id);
        }
    }
}