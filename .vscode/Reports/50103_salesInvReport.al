report 50104 "Sales Invoice Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = '50103_salesInvReport.rdl';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            RequestFilterFields = "No.";    //hamesha baher nikale ke liye where we enter sales invoice number. Due to this no need to manually select "No" field again & again to run report against specific sales invoice
            column(No_; "No.")
            {

            }
            column(Sell_to_Customer_No_; "Sell-to Customer No.")
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(Sell_to_Customer_Name; "Sell-to Customer Name")
            {

            }
            column(Order_Date; "Order Date")
            {

            }
            column(Ship_to_Address; "Ship-to Address")
            {

            }
            column(taxAmount; taxAmount)
            {

            }
            column(companyName; compInf.Name)   // to make column available in report layout in report builder
            {

            }
            column(comAdd; compInf.Address)
            {

            }
            column(compic; compInf.Picture)
            {

            }

            //to calculate the total tax which was -ve, we converted it to +ve in report layout in report builder by multiplying by -1
            trigger OnAfterGetRecord()
            begin
                compInf.Get();
                compInf.CalcFields(Picture);        //
                TaxEntryRec.reset;                  // i think mostly we need to reset before applying filters
                TaxEntryRec.SetRange("Document No.", "No.");
                if TaxEntryRec.FindFirst() then
                    repeat
                        taxAmount += TaxEntryRec.Amount;        // total tax amount
                    until TaxEntryRec.Next() = 0;
            end;
        }
        dataitem("Sales Invoice Line"; "Sales Invoice Line")
        {
            //here we joine 2 tables  "Sales Invoice header"   &   current table ("Sales Invoice Line")
            DataItemLinkReference = "Sales Invoice header";
            DataItemLink = "Document No." = field("No.");      // properties used to join 2 tables
            column(Document_No_; "Document No.")
            {

            }
            column(ItemNo; "No.")
            {

            }
            column(Description; Description)
            {

            }
            column(Quantity; Quantity)
            {

            }
            column(Unit_Price; "Unit Price")
            {

            }
            column(Amount; Amount)
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
        TaxEntryRec: Record "VAT Entry";
        taxAmount: Decimal;
        compInf: Record "Company Information";  // to get company info e.g. logo ,name n all to print on header branding purpose 
}