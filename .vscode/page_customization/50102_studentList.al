page 50102 "student list "
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;              // this is used to decide which type of page u want to create
    SourceTable = "student Table";
    CardPageId = "Student Card";    // this is required in List page to know which card page we want to open when we click new, edit etc

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
                field(firstName; firstName)
                {
                    ApplicationArea = All;    //i think used to show field values in List Page after save

                }
                field(lastName; lastName)
                {
                    ApplicationArea = All;          //i think used to show field values in List Page after save
                }
                field(RollNo; RollNo)
                {
                    ApplicationArea = All;          //i think used to show field values in List Page after save
                }
                field(Marks; Marks)
                {
                    ApplicationArea = All;          //i think used to show field values in List Page after save
                }
                field(Rank; Rank)
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