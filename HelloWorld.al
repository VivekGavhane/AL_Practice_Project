// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding! 

pageextension 50101 CustomerListExt extends "Customer List"
{


    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addafter(PaymentRegistration)
        {
            action(InsertInNewTables)
            {
                Image = Action;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                ApplicationArea = Basic, Suite;
                trigger OnAction()
                begin
                    if FindFirst() then
                        repeat
                                    // to insert data using code
                            customerTest.Init();        // to insert data using code starts here
                            customerTest.customerno := "No.";
                            customerTest.customername := Name;
                            customerTest.address1 := Address;
                            customerTest.city := City;
                            customerTest.Insert();          // to insert data using code completes here
                        // Message('data inserted successfully'

                        //   Message('hello');
                        until Next() = 0;
                end;
            }
        }

    }

    var
        myInt: Integer;
        customerTest: Record "customer test";

    trigger OnModifyRecord(): Boolean;
    begin
        Message('App published: Hello world');
    end;



}