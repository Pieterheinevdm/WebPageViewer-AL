page 50101 "ad_Web Page Viewer"
{
    PageType = Card;
    Caption = 'Web Page Viewer';

    layout
    {

        area(Content)
        {
            usercontrol("Web Page Viewer"; ad_WebPageViewerCtrl)
            {
                ApplicationArea = All;
                trigger OnControlAddInReady()
                begin
                    InitializeWebViewer();
                end;
            }
        }
    }

    procedure SetWebURL(url: text[1024])
    begin
        if not (url = '') then
            exit;
    end;

    local procedure InitializeWebViewer()
    var
        WebViewerSetup: Record "ad_Web Viewer Setup";
    begin
        WebViewerSetup.GetRecord();
        if WebViewerSetup."Web Viewer URL" = '' then
            Error(txtErrUrlIsMissing);
        CurrPage."Web Page Viewer".Navigate(WebViewerSetup."Web Viewer URL");
    end;

    var
        gURL: Text[1024];
        txtErrUrlIsMissing: Label 'Web Viewer URL is empty!';
}