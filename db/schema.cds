using { cuid, managed } from '@sap/cds/common';

namespace claimtest03.db;

entity Claims : cuid, managed {
    claimNo     : String(20);
    policyNo    : String(20);
    claimType   : Association to Claimtypes;
    losstype    : String(20);
    Status      : String(20);
    amount      : Integer;
    country     : String(20);
    Losstypes   : Composition of many Losstypes on  Losstypes.losstype = $self;
} 
entity Claimtypes : cuid, managed {
    cltype : String(15);
    claims : Association to many Claims on claims.claimType = $self;  
    
}
entity Losstypes : cuid , managed {  
     key losstype : Association to Claims;
         losscause : String(10);
         lossdesc : String(30);
}