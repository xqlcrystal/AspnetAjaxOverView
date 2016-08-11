using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI;

[assembly:WebResource("Demo.FocusBehavior.js", "application/x-javascript")]
namespace FocusExtender
{
    [TargetControlType(typeof(Control))]
    public class FocusExtender : ExtenderControl
    {
        public string HighlightCssClass { get; set; }

        public string NoHighlightCssClass { get; set; }
        protected override IEnumerable<ScriptDescriptor> GetScriptDescriptors(System.Web.UI.Control targetControl)
        {
            ScriptBehaviorDescriptor descriptor = new ScriptBehaviorDescriptor("Demo.FocusBehavior", targetControl.ClientID);
            descriptor.AddProperty("highlightCssClass", this.HighlightCssClass);
            descriptor.AddProperty("nohighlightCssClass",this.NoHighlightCssClass);
            yield return descriptor;
        }

        protected override IEnumerable<ScriptReference> GetScriptReferences()
        {
            ScriptReference reference = new ScriptReference();
            reference.Assembly = "FocusExtender";
            reference.Name = "Demo.FocusBehavior.js";
            yield return reference;
        }
    }
}
