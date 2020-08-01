table 50105 "sales Line new"
{
    Caption = 'sales Line new';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "document type"; Enum "Sales Document Type")
        {
            Caption = 'document type';
            DataClassification = ToBeClassified;
        }
        field(2; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = ToBeClassified;
        }
        field(3; "Line no."; Integer)
        {
            Caption = 'Line no.';
            DataClassification = ToBeClassified;
        }
        field(4; "customer No."; Code[20])
        {
            Caption = 'customer No.';
            DataClassification = ToBeClassified;
        }
        field(5; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = ToBeClassified;
        }
        field(7; type; Enum "Sales Line Type")
        {
            Caption = 'type';
            DataClassification = ToBeClassified;
        }
        field(8; "item No."; Code[20])
        {
            Caption = 'item No.';
            DataClassification = ToBeClassified;
        }
        field(10; description; Text[100])
        {
            Caption = 'description';
            DataClassification = ToBeClassified;
        }
        field(13; quantity; Decimal)
        {
            Caption = 'quantity';
            DataClassification = ToBeClassified;
        }
        field(16; "unit price"; Decimal)
        {
            Caption = 'unit price';
            DataClassification = ToBeClassified;
        }
        field(18; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = ToBeClassified;
        }
        field(20; "Gst percentage"; Decimal)
        {
            Caption = 'Gst percentage';
            DataClassification = ToBeClassified;
        }
        field(21; "Gst Amount"; Decimal)
        {
            Caption = 'Gst Amount';
            DataClassification = ToBeClassified;
        }
        field(25; "Amount to customer"; Decimal)
        {
            Caption = 'Amount to customer';
            DataClassification = ToBeClassified;
        }
        field(30; "Amount Incl gst"; Decimal)
        {
            Caption = 'Amount Incl gst';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "document type", "Document No.", "Line no.")
        {
            Clustered = true;
        }
    }

}
