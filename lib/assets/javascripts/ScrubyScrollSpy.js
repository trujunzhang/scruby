/* ========================================================================
 * Bootstrap: ScrubyScrollSpy.js v3.2.0
 * http://getbootstrap.com/javascript/#ScrubyScrollSpy
 * ========================================================================
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */


+function ($) {
    'use strict';

    // ScrubyScrollSpy CLASS DEFINITION
    // ==========================

    function ScrubyScrollSpy(element, options) {
        var process = $.proxy(this.process, this);

        this.$body = $('body');
        this.$scrollElement = $(element).is('body') ? $(window) : $(element);
        this.options = $.extend({}, ScrubyScrollSpy.DEFAULTS, options);
        this.selector = (this.options.target || '') + '  a';
        this.offsets = [];
        this.targets = [];
        this.activeTarget = null;
        this.scrollHeight = 0;

        this.$scrollElement.on('scroll.bs.ScrubyScrollSpy', process);
        this.refresh();
        this.process();
    }

    ScrubyScrollSpy.VERSION = '3.2.0';

    ScrubyScrollSpy.DEFAULTS = {
        offset: 10
    };

    ScrubyScrollSpy.prototype.getScrollHeight = function () {
        return this.$scrollElement[0].scrollHeight || Math.max(this.$body[0].scrollHeight, document.documentElement.scrollHeight)
    };

    ScrubyScrollSpy.prototype.refresh = function () {
        var offsetMethod = 'offset';
        var offsetBase = 0;

        if (!$.isWindow(this.$scrollElement[0])) {
            offsetMethod = 'position';
            offsetBase = this.$scrollElement.scrollTop();
        }

        this.offsets = [];
        this.targets = [];
        this.scrollHeight = this.getScrollHeight();

        var self = this;

        this.$body
            .find(this.selector)
            .map(function () {
                var $el = $(this);
                var href = $el.attr('target') || $el.attr('href');
                var $href = /^#./.test(href) && $(href);

                return ($href
                    && $href.length
                    && $href.is(':visible')
                    && [[$href[offsetMethod]().top + offsetBase, href]]) || null
            })
            .sort(function (a, b) {
                return a[0] - b[0]
            })
            .each(function () {
                self.offsets.push(this[0])
                self.targets.push(this[1])
            })
    };

    ScrubyScrollSpy.prototype.process = function () {
        var scrollTop = this.$scrollElement.scrollTop() + this.options.offset;
        var scrollHeight = this.getScrollHeight();
        var maxScroll = this.options.offset + scrollHeight - this.$scrollElement.height();
        var offsets = this.offsets;
        var targets = this.targets;
        var activeTarget = this.activeTarget;
        var i;

        if (this.scrollHeight != scrollHeight) {
            this.refresh()
        }

        if (scrollTop >= maxScroll) {
            return activeTarget != (i = targets[targets.length - 1]) && this.activate(i)
        }

        if (activeTarget && scrollTop <= offsets[0]) {
            return activeTarget != (i = targets[0]) && this.activate(i)
        }

        for (i = offsets.length; i--;) {
            activeTarget != targets[i]
            && scrollTop >= offsets[i]
            && (!offsets[i + 1] || scrollTop <= offsets[i + 1])
            && this.activate(targets[i])
        }
    };

    ScrubyScrollSpy.prototype.activate = function (target) {
        this.activeTarget = target;

        $(this.selector)
            .removeClass("spy");

        var selector = this.selector + '[target="' + target + '"]';

        var active = $(selector).addClass('spy');

        active.trigger('activate.bs.ScrubyScrollSpy')
    };


    // ScrubyScrollSpy PLUGIN DEFINITION
    // ===========================

    function Plugin(option) {
        return this.each(function () {
            var $this = $(this)
            var data = $this.data('bs.ScrubyScrollSpy');
            var options = typeof option == 'object' && option;

            if (!data) $this.data('bs.ScrubyScrollSpy', (data = new ScrubyScrollSpy(this, options)))
            if (typeof option == 'string') data[option]()
        })
    }

    var old = $.fn.ScrubyScrollSpy;

    $.fn.ScrubyScrollSpy = Plugin;
    $.fn.ScrubyScrollSpy.Constructor = ScrubyScrollSpy;


    // ScrubyScrollSpy NO CONFLICT
    // =====================

    $.fn.ScrubyScrollSpy.noConflict = function () {
        $.fn.ScrubyScrollSpy = old;
        return this
    };


    // ScrubyScrollSpy DATA-API
    // ==================

    $(window).on('load.bs.ScrubyScrollSpy.data-api', function () {
        $('[data-spy="scroll"]').each(function () {
            var $spy = $(this);
            Plugin.call($spy, $spy.data())
        })
    })

}(jQuery);
