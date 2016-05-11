// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require lodash
//= require jquery
//= require jquery_ujs
//= require owl.carousel
//= require bootstrap-sprockets
//= require bootstrap-datepicker

//= require tinymce-jquery

//= require number_helpers
//= require MobileNavController
//= require NavbarController
//= require ScrubyScrollSpy

//= require selectorgadget/selectorgadget_combined

//= require FrameController
//= require WebInspector

//= require_tree .


$(function () {

    jQuery.fn.exists = function () {
        return this.length > 0;
    };

    if ($("#task_run_button").exists()) {
        $("#task_run_button").click(function () {
            $.ajax({
                type: "GET",
                data: {
                    "commander": $("#task_commander").html()
                },
                url: "/application/run_task",
                success: function (data) {
                    return false;
                },
                error: function (data) {
                    return false;
                }
            });
        });
    }


    if ($("#WebInspector").exists()) {
        // new FrameController().resizeIframeHeight();
        new WebInspector().toggle();
    }

    if ($("#HomeController").exists()) {
        $(".full-page-base-style").css({"background-color": "#333333"});
        var navHeight = $(".sub-navigation").height();

        // Menu items event on the navbar,when clicking,scroll to it's target.
        new NavbarController(navHeight).setup();

        // Scrollspy
        $('body').ScrubyScrollSpy({target: '#sticky_header', offset: navHeight});
        $('[data-spy="scroll"]').each(function () {
            var $spy = $(this).scrollspy('refresh');
        });

        // top navigation smooth scroll settings
        $(window).scroll(function () {
            if ($(window).scrollTop() > $(".sub-navigation").height()) {
                // position: fixed; top: 0px; z-index: 1000;
                $(".sub-navigation").css({"position": "fixed", "top": "0px", "z-index": "1000"});
            } else {
                $(".sub-navigation").removeAttr("style");
            }
        });


        //Testimonials Slider (owl carousel settings)
        $("#testimonial-carousel").owlCarousel({
            items: 1,
            itemsDesktop: [1199, 1],
            itemsDesktopSmall: [980, 1],
            itemsTablet: [768, 1],
            itemsTabletSmall: [590, 1],
            itemsMobile: [479, 1],
            autoPlay: true,
            stopOnHover: true,
            pagination: false,
            transitionStyle: 'fadeUp'
        });

        //faq accordian settings
        $('.panel-heading').click(function () {
            if ($(this).find('i').hasClass('fa-angle-up fa')) {
                $(this).find('i').removeClass('fa-angle-up fa').addClass('fa-angle-down fa');
            } else if ($(this).find('i').hasClass('fa-angle-down fa')) {
                $('.panel-heading').find('i').removeClass(' a-angle-up fa').addClass('fa-angle-down fa');
                $(this).find('i').removeClass('fa-angle-down fa').addClass('fa-angle-up fa');
            }
        });
    }

    new MobileNavController().init();

    var dropdown = $('div.landing-navigation div.dropdown');
    dropdown.hover(function () {
        var menu = $(this).find('.course-dropdown-menu');
        menu.toggleClass("toggle");
    }, function () {
        var menu = $(this).find('.course-dropdown-menu');
        menu.toggleClass("toggle");
    });

    if ($("#export_Button").exists()) {
        $('#export_Button').click(function () {
            showSendEmailPanel();
        });
    }
});

var showSendEmailPanel = function () {
    $.ajax({
        type: "GET",
        url: "application/user_email",
        success: function (data) {
            appendEmailPanel(data.email);
            return false;
        },
        error: function (data) {
            appendEmailPanel("");
            return false;
        }
    });
};

var appendEmailPanel = function (email) {
    var html =
        '<div class="send_email_panel fade in">' +
        '<h1>INFORMATION</h1>' +
        '<label>EMAIL:</label>' +
        '<input class="form-control" id="send_form_email" placeholder="Email" type="email" autocomplete="off" value="' + email + '">' +
        '<br>' +
        '<input id="send_email_btn" class="btn btn-orange" data-loading-text="Exporting..." value="Send">' +
        '</div>';

    $("#email_panel").html(html);

    $('#send_email_btn').click(function () {
        var $btn = $(this);
        $btn.button('loading');
        export_to_excel($btn);
    });

    $('html, body').animate({
        scrollTop: $("#email_panel")
    }, 500);
};

var export_to_excel = function ($btn) {
    var _email = $("#send_form_email").val();
    if (_email == "") {
        $btn.button('reset');
        $("#messagePanel").append('<div class="alert alert-danger fade in"><button class="close" data-dismiss="alert">×</button><strong>Oh snap!</strong> Please type an email</a>?</div>');
        return;
    }
    $.ajax({
        type: "POST",
        url: "/application/export_to_excel",
        data: {
            "type": $("#showcases").attr("data-ctrl"),
            "email": _email
        },
        success: function (data) {
            $btn.button('reset');
            $("#messagePanel").append('<div class="alert alert-success fade in"><button class="close" data-dismiss="alert">×</button><strong>Well done!</strong> You export to Excel successfully and sent the download url to your email</a>.</div>');
            return false;
        },
        error: function (data) {
            $btn.button('reset');
            $("#messagePanel").append('<div class="alert alert-danger fade in"><button class="close" data-dismiss="alert">×</button><strong>Oh snap!</strong> Export to Excel failed, you can export it again.</a>.</div>');
            return false;
        }
    });
};

var fetchCrawledCount = function () {
    var ctrl = $("#showcases").attr("data-ctrl");
    $.ajax({
        type: "GET",
        url: "/application/crawled_count",
        data: {
            "type": $("#showcases").attr("data-ctrl")
        }
    }).done(function (json) {
        var newValue = NumberHelpers.number_with_delimiter(json.count, {delimiter: ','});
        $("#crawledItemCount").html(newValue);
    });
};

