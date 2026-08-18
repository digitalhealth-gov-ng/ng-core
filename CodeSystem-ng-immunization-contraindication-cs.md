# NG Vaccine contraindications CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Vaccine contraindications CS**

## CodeSystem: NG Vaccine contraindications CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-immunization-contraindication-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgImmunizationContraindicationCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.86 | |

 
A set of standardized codes used to represent clinical conditions, diagnoses, or circumstances that serve as contraindications to the administration of one or more vaccines. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG Vaccine Contraindication VS](ValueSet-ng-vaccine-contraindication-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-immunization-contraindication-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-immunization-contraindication-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.86"
  }],
  "version" : "0.0.0",
  "name" : "NgImmunizationContraindicationCS",
  "title" : "NG Vaccine contraindications CS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "A set of standardized codes used to represent clinical conditions, diagnoses, or circumstances that serve as contraindications to the administration of one or more vaccines.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "immuno",
    "display" : "Immunocompromised",
    "definition" : "The individual has a weakened immune system due to a medical condition (e.g., cancer, organ transplant, or immunosuppressive therapy), which contraindicates certain live vaccines."
  },
  {
    "code" : "severe-aefi",
    "display" : "severe AEFI",
    "definition" : "The individual is currently experiencing a severe febrile or respiratory illness (REFI), which may necessitate deferral of immunization until recovery."
  },
  {
    "code" : "anaphylactic",
    "display" : "Anaphylactic reactions",
    "definition" : "The individual has a documented history of a severe allergic (anaphylactic) reaction to a previous dose of a vaccine or any of its components, making re-administration contraindicated."
  },
  {
    "code" : "hiv",
    "display" : "HIV positive",
    "definition" : "The individual has symptomatic HIV infection, which may contraindicate live vaccines or require specific vaccine schedules based on immunological status."
  }]
}

```
