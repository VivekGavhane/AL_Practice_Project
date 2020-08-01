page 50107 "sales orders New"
{
    Caption = 'sales orders New';
    PageType = Document;
    SourceTable = "sales header new";
    RefreshOnActivate = true;
    SourceTableView = where("Document type" = filter(ORDER));
    PromotedActionCategories = 'New,Process,Report,Approve,Release,Posting,Prepare,Order,Request Approval,History,Print/Send,Navigate';


    layout
    {
        area(content)
        {
            group(General)
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
            part(salesLinenew; "Sales Order subform New")
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = "Document No." = field("No.");
                UpdatePropagation = Both;

            }





        }


    }
    var
        slaeorder: Page "Sales Order";
}
