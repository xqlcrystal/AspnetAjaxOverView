using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Xml;

namespace MsdnWebCast_WebSerivce3
{
    /// <summary>
    /// ReturnXmlService 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    [System.Web.Script.Services.ScriptService]
    public class ReturnXmlService : System.Web.Services.WebService
    {

        [WebMethod]
        [ScriptMethod(ResponseFormat =ResponseFormat.Xml)]
        public XmlNode GetXmlDocument()
        {
            XmlDocument document = new XmlDocument();

            document.LoadXml("<Employee><Name>Jeffrey Zhao</Name><Salary>1000</Salary></Employee>");

            return document;
        }
    }
}
