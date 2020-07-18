report 50101 "Vendor Ledger Reports"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;

    dataset
    {
        dataitem("Vendor Ledger Entry"; "Vendor Ledger Entry")
        {
            column(Vendor_No_; "Vendor No.")
            {

            }
            column(Vendor_Name; "Vendor Name")
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
        }
    }

    /* requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Name; SourceExpression)
                    {
                        ApplicationArea = All;
                        
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
    } */

    /* var
        myInt: Integer; */
}