using MsdnWebCast_WebSerivce2.ComplexType;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;

namespace MsdnWebCast_WebSerivce2.Converter
{
    public class BoyConverter : JavaScriptConverter
    {

        public override object Deserialize(IDictionary<string, object> dictionary, Type type, JavaScriptSerializer serializer)
        {
            Boy boy = new Boy();
            boy.Name = (string)dictionary["Name"];
            boy.GirlFriend = serializer.ConvertToType<Girl>(dictionary["GirlFriend"]);
            boy.GirlFriend.BoyFriend = boy;
            return boy;
        }

        public override IDictionary<string, object> Serialize(object obj, JavaScriptSerializer serializer)
        {
            Boy boy = (Boy)obj;
            IDictionary<string, object> result = new Dictionary<string, object>();
            result["Name"] = boy.Name;
            boy.GirlFriend.BoyFriend = null;
            result["GirlFriend"] = boy.GirlFriend;
            return result;
        }

        public override IEnumerable<Type> SupportedTypes
        {
            get { yield return typeof(Boy); }
        }
    }
}