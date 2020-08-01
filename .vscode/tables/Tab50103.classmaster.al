table 50103 "class master"
{
    Caption = 'class master';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "class code"; Code[20])
        {
            Caption = 'class code';
            DataClassification = ToBeClassified;
        }
        field(2; "class Name"; Text[50])
        {
            Caption = 'class Name';
            DataClassification = ToBeClassified;
        }
        field(3; "Class fees"; Decimal)
        {
            Caption = 'Class fees';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "class code")
        {
            Clustered = true;
             
        }
    }
    var
    salesHeader:Record "Sales Header";

}
