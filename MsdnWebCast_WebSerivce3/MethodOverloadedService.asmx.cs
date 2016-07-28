using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace MsdnWebCast_WebSerivce3
{
    /// <summary>
    /// MethodOverloadedService 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    [System.Web.Script.Services.ScriptService]
    public class MethodOverloadedService : System.Web.Services.WebService
    {

        [WebMethod]
        public int GetRandom()
        {
            return new Random(DateTime.Now.Millisecond).Next();
        }


        [WebMethod(MessageName="GetRangeRandom")]
        public int GetRandom(int minvalue,int maxvalue)
        {
            return new Random(DateTime.Now.Millisecond).Next(minvalue, maxvalue);
        }
    }
}
