report 50103 "Location wise inventory"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '50102_Item_Inv_Locationwise.rdl';

    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            column(Item_No_; "Item No.")
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(Location_Code; "Location Code")
            {

            }
            column(Quantity; Quantity)
            {

            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        myInt: Integer;
}