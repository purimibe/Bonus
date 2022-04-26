tableextension 50111 "MNB Customer" extends Customer
{
    fields
    {
        field(50112; "MNB Bonuses"; Integer)
        {
            Caption = 'Bonuses';
            FieldClass = FlowField;
            CalcFormula = count("MNB Bonus Header" where("Customer No" = field("No.")));
            Editable = false;

        }  // Add changes to table fields here
    }

    var
        BonusExistsErr: Label 'You cannot delete customer %1 because there is atleast one bonus assigned';

    trigger OnBeforeDelete()
    var
        MNBBonusHeader: Record "MNB Bonus Header";
    begin
        MNBBonusHeader.SetRange("Customer No", "No.");
        if not MNBBonusHeader.IsEmpty() then
            Error(BonusExistsErr, ("No."));

    end;

}