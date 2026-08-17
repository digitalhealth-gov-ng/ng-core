# Encounter Type Code For Entry From Outside Facility - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter Type Code For Entry From Outside Facility**

## CodeSystem: Encounter Type Code For Entry From Outside Facility 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-encounter-type-for-entry-from-outside-facility-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivEncounterTypeForEntryFromOutsideFacilityCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.48 | |

 
Code used for indicating that an encounter was captured to represent an entry point from outside the facility. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-encounter-type-for-entry-from-outside-facility-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-encounter-type-for-entry-from-outside-facility-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.48"
  }],
  "version" : "0.0.0",
  "name" : "NgHivEncounterTypeForEntryFromOutsideFacilityCS",
  "title" : "Encounter Type Code For Entry From Outside Facility",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T13:27:53+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    },
    {
      "system" : "email",
      "value" : "emeka2015@gmail.com"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "lekeojewale@gmail.com",
      "use" : "work"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "emeka2015@gmail.com",
      "use" : "work"
    }]
  }],
  "description" : "Code used for indicating that an encounter was captured to represent an entry point from outside the facility.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "ReferToCurrentFacilityEncounter",
    "display" : "Refer To Current Facility Encounter"
  }]
}

```
