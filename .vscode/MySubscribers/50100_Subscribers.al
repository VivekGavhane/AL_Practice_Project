codeunit 50100 MysubscriberCU
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::"calculation Table", 'OnAfterInsertEvent', '', false, false)]
    local procedure OnAFterInsertCalTable(var Rec: Record "calculation Table")
    begin
        rec."User Id" := UserId;
    end;



    [EventSubscriber(ObjectType::Page, Page::"Calculation Card", 'OnAfterActionEvent', 'TestButton', false, false)]
    local procedure OnAfterACtionEventPage(var Rec: Record "calculation Table")
    begin
        Message('Sorry! No authorize to click on this button');
    end;

    [EventSubscriber(ObjectType::Page, Page::"Calculation Card", 'OnModifyRecordEvent', '', false, false)]
    local procedure OnAfterModifyCardPage(var Rec: Record "calculation Table")
    begin
        Message('Hi Vivek!!!!');
    end;

    [EventSubscriber(ObjectType::Page, Page::"Calculation Card", 'OnBeforeValidateEvent', 'secondno', false, false)]
    local procedure OnBeforeValidateEventCardPage(var Rec: Record "calculation Table")
    begin
        Message('This is OnBeforeValidateEvent on second no');
    end;




    var
        myInt: Integer;
}

