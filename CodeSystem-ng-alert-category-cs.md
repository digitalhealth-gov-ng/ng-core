# Nigeria Alert Category Code System - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Alert Category Code System**

## CodeSystem: Nigeria Alert Category Code System 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-alert-category-cs | *Version*:0.0.0 |
| Active as of 2026-07-23 | *Computable Name*:NgAlertCategoryCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.2 | |

 
Categories used to classify alerts represented using the Nigeria Alert Flag profile. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Nigeria Alert Category Value Set](ValueSet-ng-alert-category-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-alert-category-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-alert-category-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.2"
  }],
  "version" : "0.0.0",
  "name" : "NgAlertCategoryCS",
  "title" : "Nigeria Alert Category Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-23",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Categories used to classify alerts represented using the Nigeria Alert Flag profile.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "compositional" : false,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "clinical",
    "display" : "Clinical",
    "definition" : "A general clinical alert that does not fall into a more specific clinical category."
  },
  {
    "code" : "allergy",
    "display" : "Allergy",
    "definition" : "An alert concerning a known or suspected allergy or intolerance."
  },
  {
    "code" : "medication",
    "display" : "Medication",
    "definition" : "An alert concerning medication prescribing, dispensing, administration, duplication, or interaction."
  },
  {
    "code" : "immunization",
    "display" : "Immunization",
    "definition" : "An alert concerning vaccination eligibility, contraindication, due status, administration, or follow-up."
  },
  {
    "code" : "laboratory",
    "display" : "Laboratory",
    "definition" : "An alert concerning an abnormal, critical, pending, or otherwise significant laboratory result."
  },
  {
    "code" : "infection-control",
    "display" : "Infection control",
    "definition" : "An alert concerning infection prevention, isolation, exposure, or transmission risk."
  },
  {
    "code" : "safeguarding",
    "display" : "Safeguarding",
    "definition" : "An alert concerning protection, abuse, neglect, exploitation, or another safeguarding risk."
  },
  {
    "code" : "public-health",
    "display" : "Public health",
    "definition" : "An alert concerning a notifiable condition, outbreak, surveillance event, or public-health action."
  },
  {
    "code" : "administrative",
    "display" : "Administrative",
    "definition" : "An alert concerning an administrative, operational, eligibility, consent, or service-delivery issue."
  },
  {
    "code" : "data-quality",
    "display" : "Data quality",
    "definition" : "An alert concerning record completeness, identity, duplication, integrity, or another data-quality issue."
  },
  {
    "code" : "other",
    "display" : "Other",
    "definition" : "An alert category not represented by another code in this code system."
  }]
}

```
