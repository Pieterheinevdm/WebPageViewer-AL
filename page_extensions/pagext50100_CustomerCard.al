pageextension 50100 "ad_Customer Card Ext." extends "Customer Card"
{
    layout
    {
        addafter(General)
        {
            group(Addins)
            {
                Caption = 'Control AddIn';
                part("Web Viewer"; "ad_Web Page Viewer Part")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}