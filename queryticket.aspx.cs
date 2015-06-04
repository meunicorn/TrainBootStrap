using System;
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

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        #region 读取下拉菜单选项，连接数据库查车票，时间未查询        
        
        //get from and to
        string from = DropDownList1.SelectedValue;
        string to = DropDownList2.SelectedValue;
        //
        string strCon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\Feng\Documents\Visual Studio 2013\WebSites\TrainBootStrap\App_Data\traindb.mdf';Integrated Security=True";
        string sqlstr = "select * from ticket where 出发点="+"N'"+from+"' and 终点站="+"N'"+to+"'";//定义执行查询操作的SQL语句 N' 为代表改字符为nvarchar

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
}