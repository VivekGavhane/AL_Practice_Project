report 50106 "Change Company use"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    ProcessingOnly = true;
    dataset
    {
        dataitem(Integer; Integer)                              //Integer is i think a virtual table 
        {
            trigger OnPreDataItem()
            begin
                SetRange(Number, 1);                            // we need to set count as 1 otherwise it iterate till infinity
            end;

            trigger OnAfterGetRecord()
            begin
                secondaryComp := 'My Company';                  //My Company   is exact name of 2nd company from which we are bringing datra to current company
                Message(CompanyName);                           //CompanyName   by default contains current company's name. this is just a test message to display
                customerRec.ChangeCompany(secondaryComp);       //ChangeCompany   changes company to 2nd company i.e. My Company
                Message(customerRec.CurrentCompany);            // this is just a test message to display
                if customerRec.get('C00010') then begin
                    CustName := customerRec.Name;               // we are taking fields from My company & storing it in variables
                    CustAdd := customerRec.Address;             // we are taking fields from My company & storing it in variables
                    Message(CustName);                          // we are displaying above fields in current company
                    Message(CustAdd);                           // we are displaying above fields in current company
                end;
            end;
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
        secondaryComp: Text;
        customerRec: Record Customer;
        CustName: Text;
        CustAdd: Text;
}