page 50100 "ad_Web Page Viewer Part"
{
    PageType = CardPart;
    Caption = 'Web Page Viewer';

    layout
    {
        area(Content)
        {
            usercontrol("Web Page Viewer"; ad_WebPageViewerCtrl)
            {
                ApplicationArea = All;
                trigger ControlAddInReady()
                begin
                    CurrPage."Web Page Viewer".Navigate(gURL);
                end;
            }
        }
    }

    procedure SetWebURL(url: text[1024])
    begin
        if not (url = '') then
            exit;
    end;

    var
        gURL: Text[1024];
}