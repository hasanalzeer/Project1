using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;
using System.Data;

namespace PWMA_Application
{
    public partial class Login : System.Web.UI.Page
    {
        public string constr = "Data Source=SQL8002.site4now.net;Initial Catalog=db_a89c1f_pharmacian;User Id=db_a89c1f_pharmacian_admin;Password=1234567890aA";
        public string com = "select * from Users where UserName=@name and UserPassword=@pass";
        public SqlConnection con;
        public SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            con = new SqlConnection(constr);
            cmd = new SqlCommand(com, con);
            cmd.Parameters.AddWithValue("@name", Login1.UserName);
            cmd.Parameters.AddWithValue("@pass", Login1.Password);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if(dt.Rows.Count>0)
            {
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
            }
             

        }
    }
}