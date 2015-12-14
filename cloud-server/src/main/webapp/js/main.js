$(document).ready(function () {
    $("a[href^='#']").click(function (e) {
        e.preventDefault();
    });

    $("#fb-login-custom-btn").click(fb_login);
    $("#gg-login-custom-btn").click(function (e) {
        $(".abcRioButtonContentWrapper").click();
    });
});