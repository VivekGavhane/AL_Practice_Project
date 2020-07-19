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

                field(Amount; Amount)   // this is a flow field we can directly use like this. This is taken from  "customer test"  table.  But to use flow field in reports we need to use calc function n all
                {

                    ApplicationArea = all;
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