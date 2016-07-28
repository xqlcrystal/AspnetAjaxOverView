using MsdnWebCast_WebSerivce2.ComplexType;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace MsdnWebCast_WebSerivce2
{
    /// <summary>
    /// BoyGirlService 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    [System.Web.Script.Services.ScriptService]
    public class BoyGirlService : System.Web.Services.WebService
    {

        [WebMethod]
        public Boy GetBoyWithGirlFriend()
        {
            Boy boy = new Boy();
            boy.Name = "Terry";

            Girl girl = new Girl();
            girl.Name = "Marry";

            boy.GirlFriend = girl;
            girl.BoyFriend = boy;

            return boy;
        }
    }
}
