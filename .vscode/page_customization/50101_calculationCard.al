page 50101 "Calculation Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "calculation Table";


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
                field(firstNo; firstNo)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.SaveRecord();          // to save & show value in fields after saving it
                    end;
                }
                field(secondno; secondno)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.SaveRecord();              // to save & show value in fields after saving it
                    end;
                }
                field(calculationtype; calculationtype)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.SaveRecord();              // to save & show value in fields after saving it
                    end;
                }
                field(Result; Result)
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