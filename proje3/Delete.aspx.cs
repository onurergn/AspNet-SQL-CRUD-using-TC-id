using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace proje3
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            
            if (TextBox1.Text.Length == 11)
            {
                SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Contact;Integrated Security=True");
                cn.Open();
                string qr = "delete from contactperson where tc='" + TextBox1.Text + "' ";
                SqlCommand cmd = new SqlCommand(qr, cn);
                int x = cmd.ExecuteNonQuery();
                Label2.Text = "<font color='green'> Kayıt silindi....</font>";
                cn.Close();
            }
            else
                Label2.Text = "<font color='red'> Kayıt bulunamadı....</font>";

            
        }
    }
}