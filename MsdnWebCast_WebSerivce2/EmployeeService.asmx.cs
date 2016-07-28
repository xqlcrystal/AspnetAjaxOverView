using MsdnWebCast_WebSerivce2.ComplexType;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

namespace MsdnWebCast_WebSerivce2
{
    /// <summary>
    /// EmployeeService 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    [System.Web.Script.Services.ScriptService]
    public class EmployeeService : System.Web.Services.WebService
    {

        [WebMethod]
        [GenerateScriptType(typeof(Intern))]
        [GenerateScriptType(typeof(Vendor))]
        [GenerateScriptType(typeof(FulltimeEmployee))]
        public string CalculateSalary(Employee employee)
        {
            return "I am "+employee.RealStatus+" my salary is "+employee.CalculateSalary()+".";
        }
    }
}
