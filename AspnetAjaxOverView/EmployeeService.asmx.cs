using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using AspnetAjaxOverView.App_Code;
using System.Web.Script.Services;
namespace AspnetAjaxOverView
{
    /// <summary>
    /// EmployeeService 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ScriptService]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    // [System.Web.Script.Services.ScriptService]
    public class EmployeeService : System.Web.Services.WebService
    {

        [WebMethod]
        [ScriptMethod]
        public Employee GetEmployee(string firstname,string lastname,string title)
        {
            return new Employee(firstname, lastname, title);
        }
    }
}
