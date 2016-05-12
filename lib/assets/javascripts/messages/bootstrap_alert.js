"use strict";

var BootstrapAlert = (function () {
    function BootstrapAlert() {
    }

    BootstrapAlert.prototype.setup = function () {
        return this.$messagePanel = $("#messagePanel");
    };

    BootstrapAlert.prototype.message_for_task = function (success) {
        if (success) {
            return $messagePanel.append('<div class="alert alert-success fade in"><button class="close" data-dismiss="alert">×</button><strong>Well done!</strong> Running the commander!</a>.</div>');
        } else {
            return $messagePanel.append('<div class="alert alert-danger fade in"><button class="close" data-dismiss="alert">×</button><strong>Oh snap!</strong> Run the commander failed, you can run it again.</a>.</div>');
        }
    };

    BootstrapAlert.prototype.get_export_excel_panel = function () {
        return '<div class="send_email_panel fade in">' +
            '<h1>INFORMATION</h1>' +
            '<label>EMAIL:</label>' +
            '<input class="form-control" id="send_form_email" placeholder="Email" type="email" autocomplete="off" value="' + email + '">' +
            '<br>' +
            '<input id="send_email_btn" class="btn btn-orange" data-loading-text="Exporting..." value="Send">' +
            '</div>';
    };


    return BootstrapAlert;

})();

