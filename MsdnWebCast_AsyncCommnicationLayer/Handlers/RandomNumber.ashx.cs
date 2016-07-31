using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MsdnWebCast_AsyncCommnicationLayer.Handlers
{
    /// <summary>
    /// RandomNumber 的摘要说明
    /// </summary>
    public class RandomNumber : IHttpHandler
    {
        private static Random random = new Random(DateTime.Now.Millisecond);

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write(random.Next());
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