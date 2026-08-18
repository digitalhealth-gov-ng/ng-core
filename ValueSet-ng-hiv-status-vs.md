# NG HIV Status Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Status Codes**

## ValueSet: NG HIV Status Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-status-vs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHivStatusVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.137 | |

 
A list of codes describing the patient's HIV status. 

 **References** 

* [NG Composite Observation](StructureDefinition-ng-observation.md)

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
  "id" : "ng-hiv-status-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-status-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.137"
  }],
  "version" : "0.0.0",
  "name" : "NgHivStatusVS",
  "title" : "NG HIV Status Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T16:47:52+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "A list of codes describing the patient's HIV status.",
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
        "code" : "94652-5",
        "display" : "Known exposure date"
      },
      {
        "code" : "LA6577-6",
        "display" : "Negative"
      },
      {
        "code" : "LA29947-1",
        "display" : "Carrier status unknown"
      },
      {
        "code" : "77978-5",
        "display" : "Patient died from illness of interest"
      }]
    },
    {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-status-cs"
    }]
  }
}

```
