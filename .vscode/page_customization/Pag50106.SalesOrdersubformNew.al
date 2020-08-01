page 50106 "Sales Order subform New"
{

    Caption = 'Sales Order subform New';
    PageType = ListPart;
    SourceTable = "sales Line new";
    MultipleNewLines = true;
    UsageCategory = Administration;
    ApplicationArea = all;
    DelayedInsert = true;
    AutoSplitKey = true;
    SourceTableView = where("document type" = filter(ORDER));
    PopulateAllFields = true;
    LinksAllowed = false;


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(type; type)
                {
                    ApplicationArea = All;
                }
                field("item No."; "item No.")
                {
                    ApplicationArea = All;
                }
                field(description; description)
                {
                    ApplicationArea = All;
                }
                field(quantity; quantity)
                {
                    ApplicationArea = All;
                }
                field("unit price"; "unit price")
                {
                    ApplicationArea = All;
                }
                field(Amount; Amount)
                {
                    ApplicationArea = All;
                }
                field("Amount Incl gst"; "Amount Incl gst")
                {
                    ApplicationArea = All;
                }
                field("Amount to customer"; "Amount to customer")
                {
                    ApplicationArea = All;
                }
                field("customer No."; "customer No.")
                {
                    ApplicationArea = All;
                }
                field("Document No."; "Document No.")
                {
                    ApplicationArea = All;
                }
                field("document type"; "document type")
                {
                    ApplicationArea = All;
                }
                field("Gst Amount"; "Gst Amount")
                {
                    ApplicationArea = All;
                }
                field("Gst percentage"; "Gst percentage")
                {
                    ApplicationArea = All;
                }
                field("Line no."; "Line no.")
                {
                    ApplicationArea = All;
                }
                field("Posting Date"; "Posting Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    var
       // salesordersubform: Page "Sales Order Subform";
}
