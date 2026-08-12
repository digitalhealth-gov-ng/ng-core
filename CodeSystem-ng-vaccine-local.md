# NG IMMZ.D.DE4 Vaccine Local Codes (Dose-labelled) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG IMMZ.D.DE4 Vaccine Local Codes (Dose-labelled)**

## CodeSystem: NG IMMZ.D.DE4 Vaccine Local Codes (Dose-labelled) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-local | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgVaccineLocalCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.109 | |

 
Locally defined vaccine codes used for data capture and UI labels. Doses are local; external systems map at antigen/product level. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NgVaccineLocalVS](ValueSet-ng-vaccine-local-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-vaccine-local",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-local",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.109"
  }],
  "version" : "0.0.0",
  "name" : "NgVaccineLocalCS",
  "title" : "NG IMMZ.D.DE4 Vaccine Local Codes (Dose-labelled)",
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
  "description" : "Locally defined vaccine codes used for data capture and UI labels. Doses are local; external systems map at antigen/product level.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 30,
  "concept" : [{
    "code" : "IMMZ.Z.DE1",
    "display" : "BCG birth dose"
  },
  {
    "code" : "IMMZ.Z.DE2",
    "display" : "HepB birth dose"
  },
  {
    "code" : "IMMZ.Z.DE3",
    "display" : "Polio (OPV0) birth dose"
  },
  {
    "code" : "IMMZ.Z.DE4",
    "display" : "Pentavalent 1"
  },
  {
    "code" : "IMMZ.Z.DE5",
    "display" : "Oral Polio Vaccine (OPV 1)"
  },
  {
    "code" : "IMMZ.Z.DE6",
    "display" : "Pneumococcal Conjugate Vaccine (PCV 1)"
  },
  {
    "code" : "IMMZ.Z.DE7",
    "display" : "Rotavirus 1"
  },
  {
    "code" : "IMMZ.Z.DE8",
    "display" : "Inactivated Polio Vaccine (IPV 1)"
  },
  {
    "code" : "IMMZ.Z.DE9",
    "display" : "Oral Polio Vaccine (OPV 2)"
  },
  {
    "code" : "IMMZ.Z.DE10",
    "display" : "Pneumococcal Conjugate Vaccine (PCV 2)"
  },
  {
    "code" : "IMMZ.Z.DE11",
    "display" : "Pentavalent 2"
  },
  {
    "code" : "IMMZ.Z.DE12",
    "display" : "Rotavirus 2"
  },
  {
    "code" : "IMMZ.Z.DE13",
    "display" : "Oral Polio Vaccine (OPV 3)"
  },
  {
    "code" : "IMMZ.Z.DE14",
    "display" : "Pentavalent 3"
  },
  {
    "code" : "IMMZ.Z.DE15",
    "display" : "Pneumococcal Conjugate Vaccine (PCV 3)"
  },
  {
    "code" : "IMMZ.Z.DE16",
    "display" : "Rotavirus 3"
  },
  {
    "code" : "IMMZ.Z.DE17",
    "display" : "Inactivated Polio Vaccine (IPV 2)"
  },
  {
    "code" : "IMMZ.Z.DE18",
    "display" : "Malaria 1"
  },
  {
    "code" : "IMMZ.Z.DE19",
    "display" : "Vitamin A 1"
  },
  {
    "code" : "IMMZ.Z.DE20",
    "display" : "Malaria 2"
  },
  {
    "code" : "IMMZ.Z.DE21",
    "display" : "Malaria 3"
  },
  {
    "code" : "IMMZ.Z.DE22",
    "display" : "Measles Rubella (MR 1)"
  },
  {
    "code" : "IMMZ.Z.DE23",
    "display" : "Yellow Fever"
  },
  {
    "code" : "IMMZ.Z.DE24",
    "display" : "Meningitis"
  },
  {
    "code" : "IMMZ.Z.DE25",
    "display" : "Vitamin A 2"
  },
  {
    "code" : "IMMZ.Z.DE26",
    "display" : "Measles Rubella (MR 2)"
  },
  {
    "code" : "IMMZ.Z.DE27",
    "display" : "Malaria 4"
  },
  {
    "code" : "IMMZ.Z.DE28",
    "display" : "Tetanus Diphtheria"
  },
  {
    "code" : "IMMZ.Z.DE29",
    "display" : "Human PapillomaVirus (HPV)"
  },
  {
    "code" : "IMMZ.Z.DE30",
    "display" : "Date LLIN was provided"
  }]
}

```
