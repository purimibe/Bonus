page 50106 "MNB Bonus Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "MNB Bonus Setup";
    Caption = 'Bonus Setup';
    DeleteAllowed = false;
    InsertAllowed = false;

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Bonus Nos"; "Bonus Nos")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies number series what will be used for bonus numbers';

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
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Reset();
        if not Get() then begin
            Init();
            Insert();
        end;

    end;

    var
        myInt: Integer;
}