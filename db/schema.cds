using {
    cuid,
    managed
} from '@sap/cds/common';

namespace claimtest03.db;

entity Claims : cuid, managed {
    claimNo   : String(20);
    policyNo  : String(20);
    claimType : Association to Claimtypes;
    losstype  : String(20);
    Status    : String(20);
    amount    : Integer;
    country   : String(20);
    Losstypes : Composition of many Losstypes
                    on Losstypes.claim = $self;
     policystatus  : Association to Policy;
}

entity Policy {
       key Plystscode : String(1) enum {
        active = 'A';
        closed = 'C';
        suspended = 'S';
       
    }
    Criticality: String(1);
 statustext : String;
}

entity Claimtypes : cuid, managed {
    cltype : String(15);
    claims : Association to many Claims
                 on claims.claimType = $self;

}

entity Losstypes : cuid, managed {
    key losstype  : String(20);
        claim     : Association to Claims;
        losscause : String(10);
        lossdesc  : String(30);
        lossCode  : String(20);
        severity  : String(20);
        category  : String(30);
}
