using MsdnWebCast_WebSerivce1.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace MsdnWebCast_WebSerivce1
{
    /// <summary>
    /// ComplexType 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    [System.Web.Script.Services.ScriptService]
    public class ComplexType : System.Web.Services.WebService
    {

        [WebMethod]
        public Employee DoubleSalary(Employee employee)
        {
            employee.Salary *= 2;
            return employee;
        }

        [WebMethod]
        public List<int> Reverse(List<int> list)
        {
             list.Reverse();
             return list;
        }

        [WebMethod]
        public IDictionary<string,Employee> GetEmployees()
        {
            IDictionary<string, Employee> employees = new Dictionary<string, Employee>();
            Employee employ1 = new Employee();
            employ1.FirstName = "zhang";
            employ1.LastName = "san";
            employ1.Salary = 2000;
            employees.Add(employ1.FullName, employ1);


            Employee employ2 = new Employee();
            employ2.FirstName = "li";
            employ2.LastName = "si";
            employ2.Salary = 4000;
            employees.Add(employ2.FullName, employ2);


            return employees;
        }
    }
}
