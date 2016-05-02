"use strict";

function NavbarController(navHeight) {
    this.navHeight = navHeight - 1
}

NavbarController.prototype.setup = function () {
    var ctrl = this;
    $('a[target="#course-hero"]').click(function () {
        $('html, body').animate({
            scrollTop: 0
        }, 700);
    });

    $('a[target="#home"]').click(function () {
        var $el = $(this);
        var target = $el.attr("target");
        ctrl.scrollToTarget(target);
    });

    $('a[target="#learning"]').click(function () {
        var $el = $(this);
        var target = $el.attr("target");
        ctrl.scrollToTarget(target);
    });

    $('a[target="#testimonials"]').click(function () {
        var $el = $(this);
        var target = $el.attr("target");
        ctrl.scrollToTarget(target);
    });

    $('a[target="#faq"]').click(function () {
        var $el = $(this);
        var target = $el.attr("target");
        ctrl.scrollToTarget(target);
    });
};

NavbarController.prototype.scrollToTarget = function (target) {
    var mainMenuHeight = $("div#main_menu.landing-navigation").outerHeight();
    var offset = this.navHeight + mainMenuHeight - 12;
    if ($(".sub-navigation").attr("style"))
        offset = this.navHeight;

    $('html, body').animate({
        scrollTop: ($(target).offset().top - offset)
    }, 700);
};