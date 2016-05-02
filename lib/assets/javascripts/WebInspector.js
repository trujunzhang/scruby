
"use strict";

function WebInspector() {
    
}

WebInspector.prototype.toggle = function(options) {
    if (!window.selector_gadget) {
        window.selector_gadget = new SelectorGadget();
        window.selector_gadget.makeInterface();
        window.selector_gadget.clearEverything();
        window.selector_gadget.setMode('interactive');
        if ((options != null ? options.analytics : void 0) !== false) {
            window.selector_gadget.analytics();
        }
    } else if (window.selector_gadget.unbound) {
        window.selector_gadget.rebindAndMakeInterface();
    } else {
        window.selector_gadget.unbindAndRemoveInterface();
    }
    return jQuerySG('.selector_gadget_loading').remove();
};