pageextension 50100 PostedSalInvExt extends "Posted Sales Invoice"      // for every different objects we can use 50100 again. But for 1 object only once.
{
    layout
    {
        // Add changes to page layout here
        addafter("Posting Date")
        {
            field(Reference_No; Reference_No)
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
        addafter(Print)                     //our intention was to add the button after  Print  Button
        {
            action(Print_SalesInvoice)      // Name of the button
            {
                Image = Report;             // Image of the page i think
                Promoted = true;            // yes we want to promote
                PromotedCategory = Process; // promoted to this button. U can see our button in this button
                PromotedIsBig = true;
                ApplicationArea = all;
                trigger OnAction()
                begin
                    salesInvHeader.Reset();
                    salesInvHeader.SetRange("No.", "No.");                  //No is PK is picked from where our cursor is - this is used to filter a record
                    Report.RunModal(50104, true, true, salesInvHeader);     // we are displaying report 50104
                end;
            }
        }
    }

    var
        myInt: Integer;
        salesInvHeader: Record "Sales Invoice Header";      //we need "Sales Invoice Header" type variable to create our report
}