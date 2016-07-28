﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace MsdnWebCast_WebSerivce2
{
    /// <summary>
    /// DataTableService 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    [System.Web.Script.Services.ScriptService]
    public class DataTableService : System.Web.Services.WebService
    {

        [WebMethod]
        public DataTable GetDataTable()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("ID", typeof(int));
            dt.Columns.Add("Text", typeof(string));
            for (int i = 0; i < 10; i++)
            {
                dt.Rows.Add(i, "Text" + i.ToString());
            }
            return dt;
        }
    }
}
