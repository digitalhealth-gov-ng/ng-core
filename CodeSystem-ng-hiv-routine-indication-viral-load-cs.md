# NG HIV Routine Indication Viral Load - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Routine Indication Viral Load**

## CodeSystem: NG HIV Routine Indication Viral Load 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-routine-indication-viral-load-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHivRoutineIndicationViralLoadCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.70 | |

 
Codes used for representing routine indication for viral load. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Viral Load Indication](ValueSet-ng-hiv-vl-indication-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-routine-indication-viral-load-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-routine-indication-viral-load-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.70"
  }],
  "version" : "0.0.0",
  "name" : "NgHivRoutineIndicationViralLoadCS",
  "title" : "NG HIV Routine Indication Viral Load",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T06:18:50+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Codes used for representing routine indication for viral load.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "1st-VL-Test-3-months-Post-ART",
    "display" : "First viral load test at 3 months or longer post ART"
  },
  {
    "code" : "2nd-VL-Test-6-months-Post-ART",
    "display" : "First viral load test at 6 months or longer post ART"
  },
  {
    "code" : "2nd-VL-Test-12-months-Post-ART",
    "display" : "2nd VL at 12 month post ART"
  },
  {
    "code" : "Annual-VL-Test",
    "display" : "Annual VL Test"
  },
  {
    "code" : "First-ANC-visit",
    "display" : "At the first ANC visit"
  },
  {
    "code" : "34-36-weeks-of-gestation",
    "display" : "At 34-36 weeks of gestation"
  },
  {
    "code" : "3-months-after-delivery",
    "display" : "Three months after delivery"
  },
  {
    "code" : "6-months-after-first-VL-at-postnatal-period",
    "display" : "Six months after the first VL at postnatal period"
  },
  {
    "code" : "Every-6-months-until-MTCT-ends",
    "display" : "Every six months until MTCT ends"
  },
  {
    "code" : "VL-after-EAC-Repeat-VL-50-to-1000",
    "display" : "VL after EAC: Repeat VL > 50 to <= 1000 copies/ml"
  },
  {
    "code" : "VL-after-EAC-Confirmatory-VL-Initial-50-to-1000",
    "display" : "VL after EAC: Confirmatory VL: Initial > 50 to <= 1000 copies/ml"
  }]
}

```
