using AspnetAjaxOverView.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;
using System.Web.Script.Serialization;
namespace AspnetAjaxOverView
{
    /// <summary>
    /// GetEmployee 的摘要说明
    /// </summary>
    public class GetEmployee : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string firstname = context.Request.Params["firstname"];
            string lastname = context.Request.Params["lastname"];
            string title = context.Request.Params["title"];
            Employee employee = new Employee(firstname, lastname, title);

            JavaScriptSerializer ser = new JavaScriptSerializer();
            String jsonEmp=ser.Serialize(employee);
            context.Response.Write(jsonEmp);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}