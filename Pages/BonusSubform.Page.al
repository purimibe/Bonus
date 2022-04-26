page 50111 "MNB Bonus Subform"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "MNB Bonus Line";
    Caption = 'Lines';

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field(Type; Type)
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the type of bonus assigned';

                }
                field("Item No"; "Item No")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the number for which bonus is assigned';

                }
                field("Bonus Perc"; "Bonus Perc")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies bonus percent';
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

    var
        myInt: Integer;
}