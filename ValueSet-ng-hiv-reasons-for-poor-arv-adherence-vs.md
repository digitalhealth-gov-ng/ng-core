# Reasons For Poor ARV Adherence - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Reasons For Poor ARV Adherence**

## ValueSet: Reasons For Poor ARV Adherence 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-reasons-for-poor-arv-adherence-vs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivReasonsForPoorARVAdherenceVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.132 | |

 
Codes used for representing the reasons for poor ARV adherence. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "ng-hiv-reasons-for-poor-arv-adherence-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-reasons-for-poor-arv-adherence-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.132"
  }],
  "version" : "0.0.0",
  "name" : "NgHivReasonsForPoorARVAdherenceVS",
  "title" : "Reasons For Poor ARV Adherence",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T16:10:29+01:00",
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
  "description" : "Codes used for representing the reasons for poor ARV adherence.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA6529-7",
        "display" : "Toxicity/Side Effects"
      },
      {
        "code" : "LA6534-7",
        "display" : "Drug Out of Stock"
      },
      {
        "code" : "LA18864-1",
        "display" : "Much better"
      },
      {
        "code" : "LA17144-9",
        "display" : "Sick person"
      },
      {
        "code" : "LA28316-0",
        "display" : "Financial concerns"
      },
      {
        "code" : "LP173580-4",
        "display" : "Alcohol use"
      },
      {
        "code" : "LA26695-9",
        "display" : "Forgot to take medication"
      },
      {
        "code" : "LA10576-9",
        "display" : "Depression"
      },
      {
        "code" : "45237-5",
        "display" : "Date lost to HIV treatment follow-up"
      },
      {
        "code" : "LL6048-4",
        "display" : "Medication refill arrangements - w/codes"
      },
      {
        "code" : "28163-4",
        "display" : "Not enjoying life [Living with HIV]"
      },
      {
        "code" : "LA46-8",
        "display" : "Other"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "266934004",
        "display" : "Transport problem"
      },
      {
        "code" : "397695000",
        "display" : "Finding related to ability to comply with treatment"
      }]
    }]
  }
}

```
