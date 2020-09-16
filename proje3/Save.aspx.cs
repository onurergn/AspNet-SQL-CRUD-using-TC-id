using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace proje3
{
    public partial class Save : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            if (TxtTC.Text.Length == 11 && TxtName.Text.Length != 0 && TxtSurname.Text.Length != 0)
            {
                
                SqlConnection cn = new SqlConnection(Session["cs"].ToString());
                cn.Open();

                
                string qr = "select * from contactperson where tc='" + TxtTC.Text + "' ";
                SqlCommand cmd = new SqlCommand(qr, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                bool recordfound = dr.Read();

                if (recordfound)
                {
                    Label5.Text = "<font color='red'> AYNI TC İLE KAYIT YAPILAMAZ</font>";
                    cn.Close();
                }
                else if(!recordfound)
                {
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Contact;Integrated Security=True");
                    con.Open();
                    string qrr = "insert into contactperson values ('" + TxtTC.Text + "','" + TxtName.Text + "','" + TxtSurname.Text + "','" + TxtMail.Text + "','" + TxtAdress.Text + "','" + TxtMessage.Text + "') ";
                    SqlCommand cmdd = new SqlCommand(qrr, con);
                    cmdd.ExecuteNonQuery();

                    Label5.Text = "<font color='green'>Kayıt Yapıldı</font>";

                    con.Close();
                }
              
                
            }
            else
            {
                Label5.Text = "<font color='red'> TC-ISIM-SOYISIM bilgilerini kontrol edin</font>";
            }

            
        }
    }
}