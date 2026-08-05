using claimtes03services as service from '../../srv/service';
annotate service.Claims with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'claimNo',
                Value : claimNo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'policyNo',
                Value : policyNo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'losstype',
                Value : losstype,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount',
                Value : amount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'country',
                Value : country,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Claim',
            Value : claimNo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Policy',
            Value : policyNo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Loss Type',
            Value : losstype,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Amount',
            Value : amount,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Status',
            Value : Status,
        },
        {
            $Type : 'UI.DataField',
            Value : createdBy,
        },
    ],
    UI.SelectionFields : [
        losstype,
        claimType.cltype,
        amount,
    ],
);

annotate service.Claims with {
    claimType @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'claimtypes',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : claimType_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'cltype',
            },
        ],
    }
};

annotate service.Claims with {
    losstype @Common.Label : 'losstype'
};

annotate service.claimtypes with {
    cltype @Common.Label : 'claimType/cltype'
};

annotate service.Claims with {
    amount @Common.Label : 'amount'
};

