using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Log : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_Click(object sender, EventArgs s)
    {
        string conStr = ConfigurationManager.AppSettings["conStr"];
        SqlConnection scon = new SqlConnection(conStr);
        DataSet ds = new DataSet();
        string sqlStr = "select * from login where empid='"+userID.Text+"'and passwd='"+userPW.Text+"'";
        SqlDataAdapter dbAdapter = new SqlDataAdapter(sqlStr,scon);
        dbAdapter.Fill(ds, "login");
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Redirect("http://dbd.ihyt.net/");
        }
        else
        {
            Response.Write("<script language=javascript>alert('用户名或密码错误！')</script>");
        }
    }
}