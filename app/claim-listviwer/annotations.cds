using claimtes03services as service from '../../srv/service';
annotate service.Claims with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Claims additional details',
            ID : 'Claimsadditionaldetails',
            Target : '@UI.FieldGroup#Claimsadditionaldetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Losstypes',
            ID : 'Losstypes',
            Target : 'Losstypes/@UI.LineItem#Losstypes',
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
    UI.HeaderInfo : {
        TypeName : 'Claim header',
        TypeNamePlural : 'Claims',
        Title : {
            $Type : 'UI.DataField',
            Value : claimNo,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : 'Claim Details',
        },
        TypeImageUrl : 'sap-icon://insurance-life',
    },
    UI.FieldGroup #Claimsadditionaldetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : Status,
                Label : 'Status',
            },
        ],
    },
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
    losstype @Common.Label : 'Losstype'
};

annotate service.claimtypes with {
    cltype @Common.Label : 'Claim type'
};

annotate service.Claims with {
    amount @Common.Label : 'Amount'
};

annotate service.Losstypes with @(
    UI.LineItem #Losstypes : [
        {
            $Type : 'UI.DataField',
            Value : losstype,
            Label : 'Losstype',
        },
        {
            $Type : 'UI.DataField',
            Value : lossCode,
            Label : 'Loss code',
        },
        {
            $Type : 'UI.DataField',
            Value : losscause,
            Label : 'Cause of loss',
        },
        {
            $Type : 'UI.DataField',
            Value : lossdesc,
            Label : 'Descrption',
        },
        {
            $Type : 'UI.DataField',
            Value : severity,
            Label : 'Severity',
        },
        {
            $Type : 'UI.DataField',
            Value : category,
            Label : 'Category',
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Loss Data',
            ID : 'LossData',
            Target : '@UI.FieldGroup#LossData',
        },
    ],
    UI.FieldGroup #LossData : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : claim_ID,
                Label : 'Claim',
            },
            {
                $Type : 'UI.DataField',
                Value : losstype,
                Label : 'Losstype',
            },
            {
                $Type : 'UI.DataField',
                Value : lossdesc,
                Label : 'Description',
            },
            {
                $Type : 'UI.DataField',
                Value : losscause,
                Label : 'Cause of loss',
            },
            {
                $Type : 'UI.DataField',
                Value : lossCode,
                Label : 'Loss code',
            },
            {
                $Type : 'UI.DataField',
                Value : severity,
                Label : 'Severity',
            },
            {
                $Type : 'UI.DataField',
                Value : category,
                Label : 'Category',
            },
        ],
    },
    UI.HeaderInfo : {
        TypeName : 'Loss Data',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : losstype,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : 'Losstype details',
        },
        TypeImageUrl : 'sap-icon://detail-view',
    },
);

