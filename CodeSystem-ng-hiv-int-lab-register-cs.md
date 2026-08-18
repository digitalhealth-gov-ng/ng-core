# NG HIV Integrated Laboratory Monitoring Register Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Integrated Laboratory Monitoring Register Codes**

## CodeSystem: NG HIV Integrated Laboratory Monitoring Register Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-register-cs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivIntLabRegisterCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.55 | |

 
Local codes required to represent the Integrated Laboratory Monitoring Register revised November 2025. The source workbook does not provide a complete EID-entry-point legend or a POC error-code catalogue; those values are therefore represented using existing terminology or free text in the logical model. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Integrated Laboratory Register DSD Status](ValueSet-ng-hiv-int-lab-register-dsd-status-vs.md)
* [NG HIV Integrated Laboratory Register Mode of Testing](ValueSet-ng-hiv-int-lab-register-mode-of-testing-vs.md)
* [NG HIV Integrated Laboratory Register Monitoring Type](ValueSet-ng-hiv-int-lab-register-monitoring-type-vs.md)
* [NG HIV Integrated Laboratory Register Viral-Load Category](ValueSet-ng-hiv-int-lab-register-viral-load-category-vs.md)
* [NG HIV Integrated Laboratory Register Viral-Load Disaggregation](ValueSet-ng-hiv-int-lab-register-viral-load-disaggregation-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-int-lab-register-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-int-lab-register-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.55"
  }],
  "version" : "0.0.0",
  "name" : "NgHivIntLabRegisterCS",
  "title" : "NG HIV Integrated Laboratory Monitoring Register Codes",
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
  "description" : "Local codes required to represent the Integrated Laboratory Monitoring\nRegister revised November 2025. The source workbook does not provide a complete\nEID-entry-point legend or a POC error-code catalogue; those values are therefore\nrepresented using existing terminology or free text in the logical model.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 27,
  "concept" : [{
    "code" : "gene-xpert",
    "display" : "GeneXpert",
    "definition" : "Testing performed using a GeneXpert platform."
  },
  {
    "code" : "m-pima",
    "display" : "m-PIMA",
    "definition" : "Testing performed using an m-PIMA platform."
  },
  {
    "code" : "conventional-pcr",
    "display" : "Conventional PCR laboratory",
    "definition" : "Testing performed using a conventional PCR laboratory platform. The source SOP also prints 'PCR LaC'."
  },
  {
    "code" : "1",
    "display" : "Devolved",
    "definition" : "Source register DSD status code 1: devolved."
  },
  {
    "code" : "2",
    "display" : "Non-devolved",
    "definition" : "Source register DSD status code 2: non-devolved."
  },
  {
    "code" : "3",
    "display" : "Not eligible for devolvement",
    "definition" : "Source register DSD status code 3: not eligible for devolvement."
  },
  {
    "code" : "vl-undetectable-or-le-50",
    "display" : "Target not detected or 50 copies/mL or less",
    "definition" : "Source A34 category: undetectable or no more than 50 copies/mL."
  },
  {
    "code" : "vl-suppressed-detectable",
    "display" : "Suppressed but detectable",
    "definition" : "Source A35 category: greater than 50 and no more than 1000 copies/mL."
  },
  {
    "code" : "vl-unsuppressed",
    "display" : "Unsuppressed",
    "definition" : "Source A36 category: greater than 1000 copies/mL."
  },
  {
    "code" : "routine",
    "display" : "Routine viral-load monitoring",
    "definition" : "Routine viral-load monitoring."
  },
  {
    "code" : "targeted",
    "display" : "Targeted viral-load monitoring",
    "definition" : "Viral-load testing prompted by a clinical, immunological, pregnancy, post-EAC, recent-infection or early-detection indication."
  },
  {
    "code" : "male-under-1",
    "display" : "Male, younger than 1 year"
  },
  {
    "code" : "male-1-4",
    "display" : "Male, 1–4 years"
  },
  {
    "code" : "male-5-9",
    "display" : "Male, 5–9 years"
  },
  {
    "code" : "male-10-14",
    "display" : "Male, 10–14 years"
  },
  {
    "code" : "male-15-19",
    "display" : "Male, 15–19 years"
  },
  {
    "code" : "male-20-24",
    "display" : "Male, 20–24 years"
  },
  {
    "code" : "male-25-49",
    "display" : "Male, 25–49 years"
  },
  {
    "code" : "male-50-plus",
    "display" : "Male, 50 years or older"
  },
  {
    "code" : "female-under-1",
    "display" : "Female, younger than 1 year"
  },
  {
    "code" : "female-1-4",
    "display" : "Female, 1–4 years"
  },
  {
    "code" : "female-5-9",
    "display" : "Female, 5–9 years"
  },
  {
    "code" : "female-10-14",
    "display" : "Female, 10–14 years"
  },
  {
    "code" : "female-15-19",
    "display" : "Female, 15–19 years"
  },
  {
    "code" : "female-20-24",
    "display" : "Female, 20–24 years"
  },
  {
    "code" : "female-25-49",
    "display" : "Female, 25–49 years"
  },
  {
    "code" : "female-50-plus",
    "display" : "Female, 50 years or older"
  }]
}

```
