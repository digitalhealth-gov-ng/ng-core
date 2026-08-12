# HIV Viral Load/CD4 Count Classifications CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Viral Load/CD4 Count Classifications CodeSystem**

## CodeSystem: HIV Viral Load/CD4 Count Classifications CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-cd4-vl-classification-for-treatment-failure-cs | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgHivCD4AndVLClassificationForTreatmentFailureCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.35 | |

 
Codes used for indicating the classification for the Viral Load/CD4 count treatment failure. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NgHivCD4AndVLClassificationForTreatmentFailureVS](ValueSet-ng-hiv-cd4-vl-classification-for-treatment-failure-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-cd4-vl-classification-for-treatment-failure-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-cd4-vl-classification-for-treatment-failure-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.35"
  }],
  "version" : "0.0.0",
  "name" : "NgHivCD4AndVLClassificationForTreatmentFailureCS",
  "title" : "HIV Viral Load/CD4 Count Classifications CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-12T13:22:49+01:00",
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
  "description" : "Codes used for indicating the classification for the Viral Load/CD4 count treatment failure.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "Immunologic-Failure",
    "display" : "CD4 below 250 cells/mm3 (Immunologic Failure)"
  },
  {
    "code" : "Clinical-Failure",
    "display" : "CD4 below 100 cells/mm3 (Clinical Failure)"
  },
  {
    "code" : "Virologic-Failure",
    "display" : "VL above 999 copies/mL (Virologic Failure)"
  }]
}

```
