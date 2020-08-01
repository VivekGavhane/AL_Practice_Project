page 50105 "Sales Order New"
{

    ApplicationArea = All;
    Caption = 'Sales Order New';
    PageType = List;
    SourceTable = "sales header new";
    UsageCategory = Lists;
    CardPageId = "sales orders New";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Customer Name"; "Customer Name")
                {
                    ApplicationArea = All;
                }
                field("customer No."; "customer No.")
                {
                    ApplicationArea = All;
                }
                field("Document type"; "Document type")
                {
                    ApplicationArea = All;
                }
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field("Order date"; "Order date")
                {
                    ApplicationArea = All;
                }
                field("Posting date"; "Posting date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
