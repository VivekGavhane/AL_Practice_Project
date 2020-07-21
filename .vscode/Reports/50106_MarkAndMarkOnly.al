report 50107 MarkAndMarkOnly
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;
    dataset
    {
        dataitem(Integer; Integer)
        {
            column(Number; Number)
            {

            }
            trigger OnPreDataItem()
            begin
                SetRange(Number, 1);
            end;

            trigger OnAfterGetRecord()
            begin
                if customerRec.Get('30000') then begin
                    customerRec.Mark(true);                                         // this just marks the button
                    Message('No. of customers before mark %1', customerRec.Count);  // this shows all customers count in List e.g. 5
                    customerRec.MarkedOnly(true);                                   // this actually marks the button
                    Message('No. of customers after marked only %1', customerRec.Count);//this shows reords count that are marked.. here 1
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
        customerRec: Record Customer;
}