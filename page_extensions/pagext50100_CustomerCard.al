pageextension 50100 "ad_Customer Card Ext." extends "Customer Card"
{
    layout
    {
        addafter(General)
        {
            part("Web Viewer"; "ad_Web Page Viewer Part")
            {
                ApplicationArea = All;
            }
        }
    }
}