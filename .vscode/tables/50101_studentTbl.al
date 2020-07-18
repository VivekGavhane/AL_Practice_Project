table 50101 "student Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; EntryNo; Integer)
        {
            AutoIncrement = true;
            DataClassification = ToBeClassified;

        }
        field(2; firstName; Text[30])
        {
            trigger OnValidate()            // write ur logic here if u want to execute it irrespective of the page u open & edit (means for all type of pages it will work)
            begin

            end;

            trigger OnLookup()
            begin

            end;
        }
        field(9; lastName; Text[30])
        {
            trigger OnValidate()            // write ur logic here if u want to execute it irrespective of the page u open & edit (means for all type of pages it will work)
            begin

            end;

            trigger OnLookup()
            begin

            end;
        }

        field(6; RollNo; Decimal)
        {


        }
        field(7; Marks; Decimal)
        {


        }
        field(8; Rank; Decimal)
        {


        }
        field(10; EntryCreatedBy; code[40])
        {

        }
        field(12; EntryCratedDateTime; DateTime)
        {

        }
    }

    keys
    {
        key(PK; EntryNo)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()      // on insert of new recordin table
    begin
        EntryCreatedBy := UserId;
        EntryCratedDateTime := CurrentDateTime;
    end;

    trigger OnModify()      // on modify of record of table
    begin

    end;

    trigger OnDelete()      // on delete of any record from table i.e. from database i think
    begin

    end;

    trigger OnRename()      // This triggers when we tr to modify table PK (Primary Key)
    begin

    end;

}