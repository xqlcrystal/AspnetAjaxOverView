/// <reference name="MicrosoftAjax.js"/>

Type.registerNamespace('Demo');

Demo.StyledTextBox = function(element)
{ 
    Demo.StyledTextBox.initializeBase(this, [element]);

    this._highlightCssClass = null;
    this._nohighlightCssClass = null;
    
    this._onfocusHandler = null;
    this._onblurHandler = null;
}
Demo.StyledTextBox.prototype =
{
    get_highlightCssClass : function()
    {
        return this._highlightCssClass;
    },
    set_highlightCssClass : function(value)
    {
        if (this._highlightCssClass !== value)
        {
            this._highlightCssClass = value;
            this.raisePropertyChanged('highlightCssClass');
        }
    },

    get_nohighlightCssClass : function()
    {
        return this._nohighlightCssClass;
    },
    set_nohighlightCssClass : function(value)
    {
        if (this._nohighlightCssClass !== value)
        {
            this._nohighlightCssClass = value;
            this.raisePropertyChanged('nohighlightCssClass');
        }
    },

    initialize : function()
    {
        Demo.StyledTextBox.callBaseMethod(this, 'initialize');

        this._onfocusHandler = Function.createDelegate(this, this._onFocus);
        this._onblurHandler = Function.createDelegate(this, this._onBlur);

        $addHandlers(this.get_element(), 
            { 'focus' : this._onFocus, 'blur' : this._onBlur },
            this);

        this.get_element().className = this._nohighlightCssClass;
    },

    dispose : function()
    {
        $clearHandlers(this.get_element());

        Demo.StyledTextBox.callBaseMethod(this, 'dispose');
    },

    _onFocus : function(e)
    {
        if (this.get_element() && !this.get_element().disabled)
        {
            this.get_element().className = this._highlightCssClass;          
        }
    },

    _onBlur : function(e)
    {
        if (this.get_element() && !this.get_element().disabled)
        {
            this.get_element().className = this._nohighlightCssClass;          
        }
    }    
}

Demo.StyledTextBox.registerClass('Demo.StyledTextBox', Sys.UI.Control);
