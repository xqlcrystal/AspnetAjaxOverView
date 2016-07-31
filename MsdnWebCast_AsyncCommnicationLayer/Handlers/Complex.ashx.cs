using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MsdnWebCast_AsyncCommnicationLayer.Handlers
{
    /// <summary>
    /// Complex 的摘要说明
    /// </summary>
    public class Complex : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string action = context.Request.Headers["action"];
            if (action == "normal")
            {
                context.Response.Write("You are send:" + context.Request.Params["data"]);
            }else if(action=="error"){
                throw new Exception();
            }
            else
            {
                System.Threading.Thread.Sleep(5000);
            }
           
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