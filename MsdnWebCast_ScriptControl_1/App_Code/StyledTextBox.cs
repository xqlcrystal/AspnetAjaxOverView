using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public class StyledTextBox : TextBox, IScriptControl
    {
        public string HighlightCss { get; set; }
        public string NoHighlightCss { get; set; }

        public IEnumerable<ScriptDescriptor> GetScriptDescriptors()
        {
            ScriptControlDescriptor descriptor = new ScriptControlDescriptor("Demo.StyledTextBox",this.ClientID);
            descriptor.AddProperty("highlightCssClass", this.HighlightCss);
            descriptor.AddProperty("nohighlightCssClass", this.NoHighlightCss);

            yield return descriptor;
        }

        public IEnumerable<ScriptReference> GetScriptReferences()
        {
            ScriptReference reference = new ScriptReference();
            reference.Path = this.ResolveClientUrl("~/StyledTextBox.js");
            yield return reference;
        }

        protected override void OnPreRender(EventArgs e)
        {
            if(!this.DesignMode)
            {
                ScriptManager.GetCurrent(this.Page).RegisterScriptControl<StyledTextBox>(this);
            }
            base.OnPreRender(e);
        }

        protected override void Render(HtmlTextWriter writer)
        {
            if (!this.DesignMode)
            {
                ScriptManager.GetCurrent(this.Page).RegisterScriptDescriptors(this);
            }

            base.Render(writer);
        }
    }
}