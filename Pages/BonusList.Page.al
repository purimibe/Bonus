page 50109 "MNB Bonus List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "MNB Bonus Header";
    Caption = 'Bonuses';
    Editable = false;
    CardPageId = "MNB Bonus Card";

    layout
    {
        area(Content)
        {
            group(control)
            {
                field(No; No)
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the bonus numbers';

                }
                field("Customer no"; "Customer No")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the customer numbers';

                }
                field("starting Date"; "starting Date")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the Starting date';
                }
                field("Ending Date"; "Ending Date")
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the ending date';
                }
                field(Status; Status)
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the bonus status';
                }
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            action("Customer Card")
            {
                ApplicationArea = All;
                Caption = 'Customer Card';
                Image = Customer;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "Customer Card";
                RunPageLink = "No." = field("Customer No");
                ToolTip = 'Opens customer card.';

            }
            action(BonusEntries)
            {
                ApplicationArea = All;
                Caption = 'Bonus Entries';
                Image = Entry;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "MNB Bonus Entries";
                RunPageLink = "Bonus No." = field("No");
                ToolTip = 'Opens bonus entries.';
            }
        }
    }



}