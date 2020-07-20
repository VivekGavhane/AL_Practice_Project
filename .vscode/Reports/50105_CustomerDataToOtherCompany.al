report 50106 "Change Company use"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    ProcessingOnly = true;
    dataset
    {
        dataitem(Integer; Integer)
        {
            trigger OnPreDataItem()
            begin
                SetRange(Number, 1);
            end;

            trigger OnAfterGetRecord()
            begin
                secondaryComp := 'My Company';
                Message(CompanyName);
                customerRec.ChangeCompany(secondaryComp);
                Message(customerRec.CurrentCompany);
                if customerRec.get('C00010') then begin
                    CustName := customerRec.Name;
                    CustAdd := customerRec.Address;
                    Message(CustName);
                    Message(CustAdd);
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