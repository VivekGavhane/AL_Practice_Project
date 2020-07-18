page 50103 "Student Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "student Table";


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(EntryNo; EntryNo)
                {
                    ApplicationArea = All;      // to see the field on page
                    Editable = false;           // this prevents user from wditing the field
                }
                field(firstName; firstName)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.SaveRecord();          // to save & show value in fields after saving it
                    end;
                }
                field(lastName; lastName)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.SaveRecord();              // to save & show value in fields after saving it
                    end;
                }
                field(RollNo; RollNo)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.SaveRecord();              // to save & show value in fields after saving it
                    end;
                }
                field(Marks; Marks)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.SaveRecord();              // to save & show value in fields after saving it
                    end;
                }
                field(Rank; Rank)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.SaveRecord();              // to save & show value in fields after saving it
                    end;
                }
                field(EntryCreatedBy; EntryCreatedBy)
                {
                    ApplicationArea = All;
                }
                field(EntryCratedDateTime; EntryCratedDateTime)
                {
                    ApplicationArea = All;
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
                    Message('hello');
                end;
            }
        }
    }

    var
        myInt: Integer;
}