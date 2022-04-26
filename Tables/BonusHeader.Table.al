table 50101 "MNB Bonus Header"
{
    DataClassification = ToBeClassified;
    DrillDownPageId = "MNB Bonus List";
    LookupPageId = "MNB Bonus List";
    fields
    {
        field(1; No; code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No';

        }
        field(2; "Customer No"; code[20])
        {
            TableRelation = "Customer";
            DataClassification = ToBeClassified;
            Caption = 'Customer No';
        }
        field(3; "starting Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Starting Date';
        }
        field(4; "Ending Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Ending Date';
        }
        field(5; Status; Enum "MNB Bonus status")
        {
            DataClassification = CustomerContent;
            Caption = 'Status';
        }
    }

    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }



}