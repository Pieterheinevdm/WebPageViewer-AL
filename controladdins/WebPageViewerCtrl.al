controladdin WebPageViewerCtrl
{
    Scripts = 
        'scripts/WebPageViewerHelper.js',
        'scripts/WebPageViewer.js';
    StartupScript = 'scripts/start.js';
    
    RequestedHeight = 320;
    RequestedWidth = 300;
    MinimumHeight = 180;
    MinimumWidth = 200;
    MaximumHeight = 500;
    MaximumWidth = 500;
    VerticalShrink = true;
    HorizontalShrink = true;
    VerticalStretch = true;
    HorizontalStretch = true;

    event ControlReady();
    procedure ShowAddress(Address: Text);
}
