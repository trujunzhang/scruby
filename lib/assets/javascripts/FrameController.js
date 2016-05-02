"use strict";

function FrameController(){

}

FrameController.prototype.resizeIframeHeight = function () {
    var buffer = 20; //scroll bar buffer
    var iframe = document.getElementById('ifm');

    function pageY(elem) {
        // var height = ele.getHeight();
        // alert(height);
        return elem.offsetParent ? (elem.offsetTop + pageY(elem.offsetParent)) : elem.offsetTop;
    }

    function resizeIframe() {
        var height = document.documentElement.clientHeight;
        height -= pageY(document.getElementById('ifm'))+ buffer ;
        height = (height < 0) ? 0 : height;
        document.getElementById('ifm').style.height = height + 'px';
    }

    // .onload doesn't work with IE8 and older.
    if (iframe.attachEvent) {
        iframe.attachEvent("onload", resizeIframe);
    } else {
        iframe.onload=resizeIframe;
    }

    window.onresize = resizeIframe;
};