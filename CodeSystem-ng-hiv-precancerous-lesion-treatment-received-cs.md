# HIV-Precancerous Lesion Treatment Received CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV-Precancerous Lesion Treatment Received CodeSystem**

## CodeSystem: HIV-Precancerous Lesion Treatment Received CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-precancerous-lesion-treatment-received-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivPrecancerousLesionTreatmentReceivedCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.67 | |

 
A list of codes describing the precancerous lesion treatment received 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HIV-Cervical Cancer Treatment Received ValueSet](ValueSet-ng-hiv-cervical-cancer-treatment-received-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-precancerous-lesion-treatment-received-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-precancerous-lesion-treatment-received-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.67"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPrecancerousLesionTreatmentReceivedCS",
  "title" : "HIV-Precancerous Lesion Treatment Received CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T07:55:48+01:00",
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
  "description" : "A list of codes describing the precancerous lesion treatment received",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "no-treatment",
    "display" : "No Treatment"
  },
  {
    "code" : "cryotherapy",
    "display" : "Cryotherapy"
  },
  {
    "code" : "thermo-coagulation",
    "display" : "Thermo-Coagulation"
  },
  {
    "code" : "leep",
    "display" : "LEEP"
  },
  {
    "code" : "referred-for-leep",
    "display" : "Referred for LEEP"
  },
  {
    "code" : "referred-for-suspicious-cancer-evaluation",
    "display" : "Referred for Suspicious cancer evaluation"
  }]
}

```
