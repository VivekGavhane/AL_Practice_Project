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


    var
        myInt: Integer;
}

