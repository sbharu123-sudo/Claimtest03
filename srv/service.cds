using { claimtest03.db as db } from '../db/schema';
service claimtes03services {

    entity Claims as projection on db.Claims;
     entity claimtypes as projection on db.Claimtypes;
     entity Losstypes as projection on db.Losstypes

}