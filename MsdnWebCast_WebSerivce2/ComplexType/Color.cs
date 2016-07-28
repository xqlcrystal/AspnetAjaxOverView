using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MsdnWebCast_WebSerivce2.ComplexType
{
    public class Color
    {

        public Color()
        {

        }

        public Color(byte red,byte green,byte blue)
        {
            this.Red = red;
            this.Green = green;
            this.Blue = blue;

        }

        public byte Red;

        public byte Green;

        public byte Blue;
    }
}