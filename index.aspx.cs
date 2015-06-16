using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            loginform.Visible = false;
            loginlabel.Visible = true;
            loginlabel.Text = "欢迎你，" + Session["username"];
        }
    }
    protected void login_btn_Click(object sender, EventArgs e)
    {
        string username = username_text.Text;
        string password = password_text.Text;
        string strCon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\Feng\Documents\Visual Studio 2013\WebSites\TrainBootStrap\App_Data\traindb.mdf';Integrated Security=True";
        string sqlstr = "select * from [user] where username='"+username+"' and password='"+password+"'";
        SqlConnection con = new SqlConnection(strCon);//创建数据库连接对象
        SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);//创建数据适配器
        DataTable dt = new DataTable();
        da.Fill(dt);//填充数据集
        if (dt.Rows.Count == 0)
        {
            Response.Write("<Script>alert('用户名或密码错误')</Script>");
            //用户名密码错误
        }
        else
        {
            loginform.Visible = false;
            loginlabel.Visible = true;
            loginlabel.Text = "欢迎你，" + username;
            Session["username"] = username;
            //登陆成功
        }

    }

}