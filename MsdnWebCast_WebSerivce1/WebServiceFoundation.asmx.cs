using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace MsdnWebCast_WebSerivce1
{
    /// <summary>
    /// WebServiceFoundation 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    [System.Web.Script.Services.ScriptService]
    public class WebServiceFoundation : System.Web.Services.WebService
    {

        [WebMethod]
        public int GetRandom()
        {
            return new Random(DateTime.Now.Millisecond).Next();
        }

        [WebMethod]
        public int GetRangeRandom(int minvalue, int maxvalue)
        {
            return new Random(DateTime.Now.Millisecond).Next(minvalue, maxvalue);
        }
    }
}
