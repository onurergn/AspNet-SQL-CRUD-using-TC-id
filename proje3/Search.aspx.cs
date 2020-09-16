using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.DynamicData;

namespace proje3
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnShow_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(Session["cs"].ToString());
            cn.Open();
            string qr = "select * from contactperson where tc='"+TextBox1.Text+"' ";
            SqlCommand cmd = new SqlCommand(qr, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            bool recordfound = dr.Read();
            if (!recordfound)
            {
                Label2.Text = "<font color='red'> Kayıt bulunamadı</font>";
            }
            else
            {
                Label2.Text = "<font color='green'> Kayıt bulundu</font>";
                StResult.Visible = true;
                Label4.Text = dr["tc"].ToString();
                Label6.Text = dr["name"].ToString();
                Label8.Text = dr["surname"].ToString();
                Label10.Text = dr["mail"].ToString();
                Label12.Text = dr["adress"].ToString();
                Label14.Text = dr["message"].ToString();
            }
            cn.Close();

        }
    }
}