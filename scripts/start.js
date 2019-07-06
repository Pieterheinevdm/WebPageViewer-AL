(function ($) {
    $(document).ready(function () {
        var url = Microsoft.Dynamics.NAV.GetImageResource("images/Callback.html");
        $("#controlAddIn").load(url);
    });
})(jQuery);

Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnControlAddInReady');