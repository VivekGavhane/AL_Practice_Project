table 50100 "calculation Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; EntryNo; Integer)
        {
            AutoIncrement = true;
            DataClassification = ToBeClassified;

        }
        field(2; firstNo; Decimal)
        {
            trigger OnValidate()            // write ur logic here if u want to execute it irrespective of the page u open & edit (means for all type of pages it will work)
            begin
                /*
                if calculationtype = calculationtype::Addition then
                    Result := firstNo + secondno;

                if calculationtype = calculationtype::Substraction then
                    Result := firstNo - secondno;

                if calculationtype = calculationtype::Multiplication then
                    Result := firstNo * secondno;

                if calculationtype = calculationtype::Division then
                    Result := firstNo / secondno;
                    */
                CalculationData();          // function to calculate +, -, *, / 
            end;

            trigger OnLookup()
            begin

            end;
        }
        field(3; secondno; Decimal)
        {
            trigger OnValidate()
            begin
                /*
                if calculationtype = calculationtype::Addition then
                    Result := firstNo + secondno;

                if calculationtype = calculationtype::Substraction then
                    Result := firstNo - secondno;

                if calculationtype = calculationtype::Multiplication then
                    Result := firstNo * secondno;

                if calculationtype = calculationtype::Division then
                    Result := firstNo / secondno;
                    */
                CalculationData();          // function to calculate +, -, *, / 
            end;
        }
        field(5; calculationtype; Option)
        {
            OptionMembers = ,Addition,Substraction,Multiplication,Division;
            trigger OnValidate()
            begin
                /*
                if calculationtype = calculationtype::Addition then
                    Result := firstNo + secondno;

                if calculationtype = calculationtype::Substraction then
                    Result := firstNo - secondno;

                if calculationtype = calculationtype::Multiplication then
                    Result := firstNo * secondno;

                if calculationtype = calculationtype::Division then
                    Result := firstNo / secondno;
                    */
                CalculationData();      // function to calculate +, -, *, / 
            end;
        }
        field(6; Result; Decimal)
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

    procedure CalculationData()     // procedures are functions in AL
    begin
        if calculationtype = calculationtype::Addition then
            Result := firstNo + secondno;

        if calculationtype = calculationtype::Substraction then
            Result := firstNo - secondno;

        if calculationtype = calculationtype::Multiplication then
            Result := firstNo * secondno;

        if calculationtype = calculationtype::Division then
            Result := firstNo / secondno;

    end;

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