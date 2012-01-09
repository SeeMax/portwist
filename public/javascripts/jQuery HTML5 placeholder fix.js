// Released under MIT license: http://www.opensource.org/licenses/mit-license.php

// good javascript
(function ($) {
    'use strict';
    $(function () {
        $('[placeholder]')
.focus(function () {
var input = $(this);
if (input.val() === input.attr('placeholder')) {
input.val('').removeClass('placeholder');
}
})
.blur(function () {
var input = $(this);
if (input.val() === '' || input.val() === input.attr('placeholder')) {
input.addClass('placeholder').val(input.attr('placeholder'));
}
})
.blur()
.parents('form').submit(function () {
$(this).find('[placeholder]').each(function () {
var input = $(this);
if (input.val() === input.attr('placeholder')) {
input.val('');
}
});
});
    });
})(jQuery);

// minified javascript
(function(j,p){j(function(){j("["+p+"]").focus(function(){var i=j(this);if(i.val()===i.attr(p)){i.val("").removeClass(p)}}).blur(function(){var i=j(this);if(i.val()===""||i.val()===i.attr(p)){i.addClass(p).val(c.attr(p))}}).blur().parents("form").submit(function(){j(this).find(p).each(function(){var i=j(this);if(i.val()===i.attr(p)){i.val("")}})})})})(jQuery,"placeholder");