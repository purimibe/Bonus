pageextension 50113 "MNB Customer List" extends "Customer List"
{
    layout
    {
        addlast(Control1)
        {
            field("MNB Bonuses"; "MNB Bonuses")
            {
                ApplicationArea = All;
                ToolTip = 'shows number of assigned bonuses to customer';
            }
            // Add changes to page layout here
        }
    }


    actions
    {
        addlast(navigation)
        {
            action(MNBBonuses)
            {
                Caption = 'Bonuses';
                ApplicationArea = All;
                Image = Discount;
                RunObject = page "MNB Bonus List";
                RunPageLink = "Customer No" = field("No.");

            }


        } // Add changes to page actions here
    }


}


