report 50100 "Customer Ledger Reports"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '50100_CustLedReprot.rdl';

    dataset
    {
        dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
        {
            column(Customer_No_; "Customer No.")
            {

            }
            column(Customer_Name; "Customer Name")
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(Document_No_; "Document No.")
            {

            }
            column(customerAmount; Amount)
            {

            }
            column(Debit_Amount; "Debit Amount")
            {

            }
            column(Credit_Amount; "Credit Amount")
            {

            }
            column(customerName; customerName)
            {

            }

            trigger OnPreDataItem()
            begin
                if startdate <> 0D then
                    SetRange("Posting Date", startdate, enddate);       // for filtering purpose
                if cusotmerNo <> '' then
                    SetRange("Customer No.", cusotmerNo);               // for filtering purpose
            end;

            trigger OnAfterGetRecord()
            begin

                if customerRec.Get("Customer No.") then
                    customerName := customerRec.Name;
            end;

            trigger OnPostDataItem()
            begin

            end;


        }

    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(filters)
                {

                    field(startdate; startdate)
                    {

                    }
                    field(enddate; enddate)
                    {

                    }
                    field(cusotmerNo; cusotmerNo)
                    {
                        TableRelation = Customer;
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
    trigger OnInitReport()
    begin

    end;

    trigger OnPreReport()
    begin

    end;

    trigger OnPostReport()
    begin

    end;


    var
        myInt: Integer;
        startdate: Date;
        enddate: Date;
        cusotmerNo: Code[30];
        customerRec: Record Customer;
        customerName: Text;
}