(function($) {

    $(function() {
        $('a[href=\"' + window.location.pathname + '\"]').first().addClass('active');
        $('a[href=\"' + window.location.pathname + '\"]').eq(1).addClass('semi-active');
    })



})(jQuery)