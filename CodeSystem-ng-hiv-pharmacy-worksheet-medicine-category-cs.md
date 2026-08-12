# NG HIV Pharmacy Worksheet Medicine Categories - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Pharmacy Worksheet Medicine Categories**

## CodeSystem: NG HIV Pharmacy Worksheet Medicine Categories 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-pharmacy-worksheet-medicine-category-cs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivPharmacyWorksheetMedicineCategoryCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.63 | |

 
Medicine-section categories printed on the revised Pharmacy Daily Worksheet. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NgHivPharmacyWorksheetMedicineCategoryVS](ValueSet-ng-hiv-pharmacy-worksheet-medicine-category-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-pharmacy-worksheet-medicine-category-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-pharmacy-worksheet-medicine-category-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.63"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPharmacyWorksheetMedicineCategoryCS",
  "title" : "NG HIV Pharmacy Worksheet Medicine Categories",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-29",
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
  "description" : "Medicine-section categories printed on the revised Pharmacy Daily Worksheet.",
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
    "code" : "adult-art",
    "display" : "Adult ART"
  },
  {
    "code" : "paediatric-art",
    "display" : "Paediatric ART"
  },
  {
    "code" : "ctx-prophylaxis",
    "display" : "Co-trimoxazole prophylaxis"
  },
  {
    "code" : "tb-preventive-therapy",
    "display" : "TB preventive therapy"
  },
  {
    "code" : "anti-infective",
    "display" : "Anti-infective, including STI treatment"
  },
  {
    "code" : "advanced-hiv-disease",
    "display" : "Advanced HIV disease treatment"
  }]
}

```
