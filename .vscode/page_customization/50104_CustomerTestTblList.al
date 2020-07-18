page 50104 "cutomer test List "
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;              // this is used to decide which type of page u want to create
    SourceTable = "customer test";
    //CardPageId = "Student Card";    // this is required in List page to know which card page we want to open when we click new, edit etc

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(customerno; customerno)
                {
                    ApplicationArea = All;      //i think used to show field values in List Page after save in List Page

                }
                field(customername; customername)
                {
                    ApplicationArea = All;    //i think used to show field values in List Page after save

                }
                field(address1; address1)
                {
                    ApplicationArea = All;          //i think used to show field values in List Page after save
                }
                field(city; city)
                {
                    ApplicationArea = All;          //i think used to show field values in List Page after save
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