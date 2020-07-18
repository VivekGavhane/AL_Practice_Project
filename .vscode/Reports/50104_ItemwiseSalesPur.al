report 50105 "Item wise sales_PUrchase"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = '50104_ItemwiseSalesPur.rdl';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(item; Item)
        {
            column(No_; "No.")
            {

            }
            column(Description; Description)
            {

            }
            column(salesqty; salesqty)
            {

            }
            column(SalesAmt; SalesAmt)
            {

            }
            trigger OnPreDataItem()
            begin

            end;

            trigger OnAfterGetRecord()
            begin
                SalesAmt := 0;      //variable initialisation 
                salesqty := 0;      //variable initialisation
                ile.Reset();        // variable names r not case sensitive
                ILE.SetRange("Item No.", item."No.");           // used for filters i think
                ILE.SetRange("Entry Type", ile."Entry Type"::Sale);     // used for filters i think
                ILE.SetFilter("Posting Date", '<%1', startdate);        // filtering items till startdate
                if ile.FindFirst() then
                    repeat
                        ILE.CalcFields("Sales Amount (Actual)");    //Sales Amount (Actual)  is a flow field of "Item Ledger Entry"
                        SalesAmt += ile."Sales Amount (Actual)";       //Total sales amount based on above filters on ILE
                        salesqty += ile.Quantity;                   //Total Sales Quantity based on above filters on ILE
                    until ILE.Next() = 0;
            end;

            trigger OnPostDataItem()
            begin

            end;
        }
    }

    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(filters)
                {
                    field(startDate; startDate)
                    {
                        ApplicationArea = All;

                    }
                    field(enddate; enddate)
                    {
                        ApplicationArea = ALL;
                    }
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
        startDate: Date;
        enddate: Date;
        ILE: Record "Item Ledger Entry";
        salesqty: Decimal;
        SalesAmt: Decimal;
        PurchQty: Decimal;
        PurchAmt: Decimal;
}