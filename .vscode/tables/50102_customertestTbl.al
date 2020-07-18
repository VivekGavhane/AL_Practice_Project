table 50102 "customer test"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; customerno; code[20])
        {
            //AutoIncrement = true;
            DataClassification = ToBeClassified;

        }
        field(2; customername; text[30])
        {
            trigger OnValidate()            // write ur logic here if u want to execute it irrespective of the page u open & edit (means for all type of pages it will work)
            begin
                
            end;

            trigger OnLookup()
            begin

            end;
        }
        field(3; address1; text[30])
        {
            trigger OnValidate()
            begin
                
            end;
        }
        field(5; city; Text[30])
        {
            
            trigger OnValidate()
            begin
                
            end;
        }
        
    }

    keys
    {
        key(PK; customerno)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    procedure CalculationData()
    begin
        

    end;

    trigger OnInsert()      // on insert of new recordin table
    begin
        
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