﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_S_User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!"true".Equals(Session["isAdmin"]))
        {
            Session["isLogin"] = "true";
            Session["isAdmin"] = "false";
            Response.Redirect("../Login.aspx");
        }
    }

   

}