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

    [EventSubscriber(ObjectType::Codeunit, Codeunit::MyPublisherCodeunit, 'CheckRef_SalesOrderLenght', '', false, false)]
    local procedure checklengRefNo(RefNo: Code[10])
    begin
        if StrLen(RefNo) <> 10 then
            Message('Reference no. lenght should be 10');
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforeSalesInvHeaderInsert', '', false, false)]
    local procedure OnbeforesalesInvInsert(var SalesInvHeader: Record "Sales Invoice Header"; salesHeader: Record "Sales Header")

    begin
        SalesInvHeader.Reference_No := salesHeader."Reference_No.";
    end;





    var
        myInt: Integer;
}

