pageextension 50104 postedSalshpEX extends "Posted Sales Shipment"
{
    layout
    {
        // Add changes to page layout heref
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
    }

    var
        myInt: Integer;
}