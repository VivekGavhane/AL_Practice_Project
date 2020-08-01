table 50104 "sales header new"
{
    Caption = 'sales header new';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document type"; Enum "Sales Document Type")
        {
            Caption = 'Document type';
            DataClassification = ToBeClassified;
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(3; "customer No."; Code[20])
        {
            Caption = 'customer No.';
            DataClassification = ToBeClassified;
        }
        field(4; "Customer Name"; Text[50])
        {
            Caption = 'Customer Name';
            DataClassification = ToBeClassified;
        }
        field(10; "Order date"; Date)
        {
            Caption = 'Order date';
            DataClassification = ToBeClassified;
        }
        field(13; "Posting date"; Date)
        {
            Caption = 'Posting date';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Document type", "No.")
        {
            Clustered = true;
        }
    }

}
