"use strict";

function MobileNavController() {
    this.tog = 1;
    this.menuOpen = !1;
    this.subNavPosition = "0";
    this.submitting = !1;
    this.$form = $(".nav-email-form form");

    this.$mobileNavContainer = $(".mobile-nav-container");
    this.$mobileMenu = $(".mobile-menu");

    this.$menuButton = $('.menu-button');
    this.$menuX = $('.menu-x');

    var ctrl = this;
    this.$menuButton.click(function () {
        ctrl.toggleMenu();
    });
    this.$menuX.click(function () {
        ctrl.toggleMenu();
    });

    $('#programList').click(function () {
        ctrl.toggleProgramList();
    });
    $('#aboutList').click(function () {
        ctrl.toggleAboutList();
    });
    $('#contactList').click(function () {
        ctrl.toggleContactList();
    });
}

MobileNavController.prototype.init = function () {
    this.$menuButton.show();
    this.$menuX.hide();
};

MobileNavController.prototype.toggleMenu = function () {
    this.menuOpen = !this.menuOpen;
    var isShowingMobileNav = this.menuOpen;

    if (isShowingMobileNav) {
        this.$menuButton.hide();
        this.$menuX.show();
    } else {
        this.$menuButton.show();
        this.$menuX.hide();
    }

    this.$mobileNavContainer.toggleClass("full-height");
};

MobileNavController.prototype.isOpen = function () {
    return this.menuOpen
};

MobileNavController.prototype.toggleProgramList = function () {
    this.tog = 1;
    this.subNavPosition = "0";
    this.tabOnSelected(this.tog, this.subNavPosition);
};

MobileNavController.prototype.toggleAboutList = function () {
    this.tog = 2;
    this.subNavPosition = "-100";
    this.tabOnSelected(this.tog, this.subNavPosition);
};

MobileNavController.prototype.toggleContactList = function () {
    this.tog = 3;
    this.subNavPosition = "-200";
    this.tabOnSelected(this.tog, this.subNavPosition);
};

MobileNavController.prototype.tabOnSelected = function (tog, subNavPosition) {
    var $mobileSubNavList = $('.mobile-subnav-list');
    $mobileSubNavList.css({"left": subNavPosition + "%"});

    var $activedEle = $('ul.mobile-list-nav .active');
    $activedEle.removeClass('active');

    var $currentEle = $("ul.mobile-list-nav").children().eq((tog - 1));
    $currentEle.addClass('active');
};

MobileNavController.prototype.submit = function () {
    // return this.nav_email_capture.$valid ? (r.submitting = !0, r.subscription.subscribe().success(function () {
    //   var e;
    //   return e = $("<h3 class='contact'> Thanks for subscribing! </h3>"), r.$form.before(e), r.$form.fadeOut(300, function () {
    //     return e.fadeIn()
    //   })
    // })["finally"](function (e) {
    //   return r.submitting = !1
    // })) : !1
};

MobileNavController.prototype.isSubmitDisabled = function () {
    return this.submitting || !this.subscription.email
};

MobileNavController.prototype.message = function () {
    alert("message from MobileNavCtrl.js");
};
