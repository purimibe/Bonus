table 50100 "MNB Bonus Setup"
{
    DataClassification = CustomerContent;
    Caption = 'Bonus setup';
    fields
    {
        field(1; "Primary key"; code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Primary key';
        }
        field(2; "Bonus Nos"; code[20])
        {
            TableRelation = "No. Series";
            DataClassification = CustomerContent;
            Caption = 'Bonus Nos';
        }
    }

    keys
    {
        key(Key1; "Primary key")
        {
            Clustered = true;
        }
    }

}