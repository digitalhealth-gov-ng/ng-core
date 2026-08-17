# Pregnancy Outcome - IPS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pregnancy Outcome - IPS**

## ValueSet: Pregnancy Outcome - IPS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-pregnancies-coutcome-vs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgPregnanciesOutcomeVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.172 | |
| **Copyright/Legal**: This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc | |

 
IPS Pregnancies Outcome 

 **References** 

* [NG Pregnancy Outcome Observation](StructureDefinition-ng-observation-pregnancy-outcome.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ng-pregnancies-coutcome-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-pregnancies-coutcome-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.172"
  }],
  "version" : "0.0.0",
  "name" : "NgPregnanciesOutcomeVS",
  "title" : "Pregnancy Outcome - IPS",
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
  "description" : "IPS Pregnancies Outcome",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "copyright" : "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "11636-8",
        "display" : "[#] Births.live"
      },
      {
        "code" : "11637-6",
        "display" : "[#] Births.preterm"
      },
      {
        "code" : "11638-4",
        "display" : "[#] Births.still living"
      },
      {
        "code" : "11639-2",
        "display" : "[#] Births.term"
      },
      {
        "code" : "11640-0",
        "display" : "[#] Births total"
      },
      {
        "code" : "11612-9",
        "display" : "[#] Abortions"
      },
      {
        "code" : "11613-7",
        "display" : "[#] Abortions.induced"
      },
      {
        "code" : "11614-5",
        "display" : "[#] Abortions.spontaneous"
      },
      {
        "code" : "33065-4",
        "display" : "[#] Ectopic pregnancy"
      }]
    }]
  }
}

```
