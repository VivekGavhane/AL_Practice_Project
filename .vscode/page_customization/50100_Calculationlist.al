page 50100 "Calculation list "
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;              // this is used to decide which type of page u want to create
    SourceTable = "calculation Table";
    CardPageId = "Calculation Card";    // this is required in List page to know which card page we want to open when we click new, edit etc

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(EntryNo; EntryNo)
                {
                    ApplicationArea = All;      //i think used to show field values in List Page after save in List Page

                }
                field(firstNo; firstNo)
                {
                    ApplicationArea = All;    //i think used to show field values in List Page after save

                }
                field(secondno; secondno)
                {
                    ApplicationArea = All;          //i think used to show field values in List Page after save
                }
                field(calculationtype; calculationtype)
                {
                    ApplicationArea = All;          //i think used to show field values in List Page after save
                }
                field(Result; Result)
                {
                    ApplicationArea = All;          //i think used to show field values in List Page after save
                }
                field(EntryCreatedBy; EntryCreatedBy)
                {
                    ApplicationArea = All;          //i think used to show field values in List Page after save
                }
                field(EntryCratedDateTime; EntryCratedDateTime)
                {
                    ApplicationArea = All;              //i think used to show field values in List Page after save
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}