table 50105 "MNB Bonus Line"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Document No"; code[20])
        {
            Caption = 'document no';
            DataClassification = CustomerContent;
            TableRelation = "MNB Bonus Header";
        }
        field(2; Type; Enum "MNB Bonus Type")
        {
            Caption = 'type';
            DataClassification = CustomerContent;
        }
        field(3; "Item No"; code[20])
        {
            Caption = 'Item no';
            DataClassification = ToBeClassified;
            TableRelation = if (type = filter(Item)) Item;
        }
        field(4; "Bonus Perc"; Integer)
        {
            Caption = 'Bonus Perc';
            DataClassification = ToBeClassified;
            MinValue = 0;
            MaxValue = 100;
        }
    }

    keys
    {
        key(PK; "Document No", Type, "Item No")
        {
            Clustered = true;
        }
    }


}