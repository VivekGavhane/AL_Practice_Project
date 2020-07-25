tableextension 50101 SaleInvHeaderExt extends "Sales Invoice Header"
{
    fields
    {
        // Add changes to table fields here
        field(50101; Reference_No; Code[12])
        {
            
        }
    }

    var
        myInt: Integer;
        salesordercu: Codeunit 80;
}