using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MsdnWebCast_WebSerivce2.ComplexType
{
    public class Boy
    {
        public string Name;

        public Girl GirlFriend;
    }


    public class Girl
    {
        public string Name;

        public Boy BoyFriend;
    }
}