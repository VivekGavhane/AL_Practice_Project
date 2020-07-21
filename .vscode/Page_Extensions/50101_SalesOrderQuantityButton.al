pageextension 50102 SalesOrderQuantityButton extends "Sales Order"      // for every different objects we can use 50100 again. But for 1 object only once.
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addafter("Work Order")                     //This adds our button after "Work Order" which is in Actions tab i think
        {
            action(Quantity)      // Name of the button
            {
                Image = Report;             // Image of the page i think
                Promoted = true;            // yes we want to promote
                PromotedCategory = Process; // promoted to this button. U can see our button in this button
                PromotedIsBig = true;
                ApplicationArea = all;
                trigger OnAction()
                begin
                    Message('Hello');
                    saleslIneRec.Reset();               // every time we need to reset the record before use
                    saleslIneRec.SetRange("Document Type", "Document Type");  // "Document Type"  is of sales line table
                    saleslIneRec.SetRange("Document No.", "No.");  // here  "No."   is from Header page  & "Document No."  is from  sales line which should be equal as we r fetching line items for that sales order
                    if saleslIneRec.FindFirst() then
                        repeat
                            saleslIneRec."Qty. to Ship" := saleslIneRec.Quantity;      // transfer field from Quantity to "Qty. to Ship" on press of button Quantity which we created above 
                            saleslIneRec.Modify();              // this acts like update function in CRM
                        until saleslIneRec.Next() = 0;
                    //customerRec.ModifyAll("Salesperson Code", 'BD');          // modify all

                end;
            }
        }
    }

    var
        myInt: Integer;
        saleslIneRec: Record "Sales Line";
        customerRec: Record Customer;
}