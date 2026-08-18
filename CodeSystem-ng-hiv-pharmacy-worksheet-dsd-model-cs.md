# NG HIV Pharmacy Worksheet DSD Models - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Pharmacy Worksheet DSD Models**

## CodeSystem: NG HIV Pharmacy Worksheet DSD Models 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-pharmacy-worksheet-dsd-model-cs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivPharmacyWorksheetDsdModelCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.62 | |

 
DSD models represented by W9 and W10. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Pharmacy Worksheet DSD Model](ValueSet-ng-hiv-pharmacy-worksheet-dsd-model-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-pharmacy-worksheet-dsd-model-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-pharmacy-worksheet-dsd-model-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.62"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPharmacyWorksheetDsdModelCS",
  "title" : "NG HIV Pharmacy Worksheet DSD Models",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-29",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "DSD models represented by W9 and W10.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "facility-based",
    "display" : "Facility-based"
  },
  {
    "code" : "community-based",
    "display" : "Community-based"
  }]
}

```
