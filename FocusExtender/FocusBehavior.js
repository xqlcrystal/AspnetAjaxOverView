﻿Type.registerNamespace('Demo');

Demo.FocusBehavior = function(element)
{ 
    Demo.FocusBehavior.initializeBase(this, [element]);

    this._highlightCssClass = null;
    this._nohighlightCssClass = null;
}
Demo.FocusBehavior.prototype =
{
    get_highlightCssClass : function() {
        return this._highlightCssClass;
    },

    set_highlightCssClass : function(value) {
        if (this._highlightCssClass !== value) {
            this._highlightCssClass = value;
            this.raisePropertyChanged('highlightCssClass');
        }
    },

    get_nohighlightCssClass : function() {
        return this._nohighlightCssClass;
    },

    set_nohighlightCssClass : function(value) {
        if (this._nohighlightCssClass !== value) {
            this._nohighlightCssClass = value;
            this.raisePropertyChanged('nohighlightCssClass');
        }
    },
    
    initialize : function()
    {
        Demo.FocusBehavior.callBaseMethod(this, 'initialize');

        $addHandlers(this.get_element(), 
            {'focus' : this._onFocus, 'blur' : this._onBlur },
            this);

        this.get_element().className = this._nohighlightCssClass;
    },

    dispose : function()
    {
        $clearHandlers(this.get_element());

        Demo.FocusBehavior.callBaseMethod(this, 'dispose');
    },

    _onFocus : function(e)
    {
        if (this.get_element() && !this.get_element().disabled) {
            this.get_element().className = this._highlightCssClass;          
        }
    },

    _onBlur : function(e) {
        if (this.get_element() && !this.get_element().disabled) {
            this.get_element().className = this._nohighlightCssClass;          
        }
    }
}
Demo.FocusBehavior.registerClass('Demo.FocusBehavior', Sys.UI.Behavior);
