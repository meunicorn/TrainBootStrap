﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class queryticket : System.Web.UI.Page
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        #region 读取下拉菜单选项，连接数据库查车票，时间未查询        
        
        //get from , to and date
        string from = DropDownList1.SelectedValue;
        string to = DropDownList2.SelectedValue;
        string date = dateText.Text.ToString();//date 为时间控件的name属性
        string d = dateText.Text;
        //
        string strCon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\Feng\Documents\Visual Studio 2013\WebSites\TrainBootStrap\App_Data\traindb.mdf';Integrated Security=True";
        //string sqlstr = "select * from ticket where 出发点="+"N'"+from+"' and 终点站="+"N'"+to+"'";//定义执行查询操作的SQL语句 N' 为代表改字符为nvarchar
        string sqlstr = "select * from ticket where 出发点=" + "N'" + from + "' and 终点站=" + "N'" + to + "' and 出发日期 like '"+date+"'";//定义执行查询操作的SQL语句 N' 为代表改字符为nvarchar
        SqlConnection con = new SqlConnection(strCon);//创建数据库连接对象
        SqlDataAdapter da = new SqlDataAdapter(sqlstr, con);//创建数据适配器
        DataSet ds = new DataSet();//创建数据集
        da.Fill(ds);//填充数据集
        //设置GridView控件的数据源为创建的数据集ds
        GridView1.DataSource = ds;
        //将数据库表中的主键字段放入GridView控件的DataKeyNames属性中
        GridView1.DataKeyNames = new string[] { "车次" };
        GridView1.DataBind();//绑定数据库表中数据
        //string s = Request["from"].ToString();
        #endregion

    }

    protected void login_btn_Click(object sender, EventArgs e)
    {
        string username = username_text.Text;
        string password = password_text.Text;
        string strCon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\Feng\Documents\Visual Studio 2013\WebSites\TrainBootStrap\App_Data\traindb.mdf';Integrated Security=True";
        string sqlstr = "select * from [user] where username='" + username + "' and password='" + password + "'";
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
            Session["username"] = username;
            loginform.Visible = false;
            loginlabel.Visible = true;
            loginlabel.Text = "欢迎你，" + Session["username"];
            
            //登陆成功
        }
        

    }


    protected void buy_btn_Click(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<Script>alert('asdasd')</Script>");
            Response.Redirect("index.aspx");
        }
        string number=((Button)sender).CommandArgument.ToString();//获取button对应的车次

        //创建数据库连接对象
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\Feng\Documents\Visual Studio 2013\WebSites\TrainBootStrap\App_Data\traindb.mdf';Integrated Security=True");
        string strsql = "insert into utTable(username,车次) values('" + Session["username"] + "','" + number + "');update ticket set 票数=票数-1 where 车次="+number;
        //string delsql = "update ticket set 票数=票数-1 where 车次="+number;
        //创建SqlCommand对象
        SqlCommand comm = new SqlCommand(strsql, conn);
        //打开数据库连接

        if (conn.State.Equals(ConnectionState.Closed))
        { conn.Open(); }
        //判断ExecuteNonQuery方法返回的参数是否大于0，大于0表示添加成功
        
        if (Convert.ToInt32(comm.ExecuteNonQuery()) > 0)
        {
            Response.Write("<Script>alert('购买成功')</Script>");
        }
        else
        {
            Response.Write("信息提示：添加失败！");
        }
        //关闭数据库连接
        if (conn.State.Equals(ConnectionState.Open))
            conn.Close();

    }
}