page 50110 "MNB Bonus Card"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "MNB Bonus Header";

    layout
    {
        area(Content)
        {
            part(Lines; "MNB Bonus Subform")
            {
                ApplicationArea = All;
                SubPageLink = "Document No" = field("No");
            }
            group(General)
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
        area(Processing)
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