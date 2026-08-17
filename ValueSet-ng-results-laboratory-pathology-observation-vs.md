# Results Laboratory/Pathology Observation - IPS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Results Laboratory/Pathology Observation - IPS**

## ValueSet: Results Laboratory/Pathology Observation - IPS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-results-laboratory-pathology-observation-vs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgResultsLaboratoryPathologyObservationVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.181 | |
| **Copyright/Legal**: This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc | |

 
Value Set Definition: LOINC {STATUS in {ACTIVE}, CLASSTYPE in {Laboratory class (1)}, CLASS exclude {LP62148-9 (NR STATS), LP175679-2 (H&P.HX.LAB), LP7785-1 (CHALSKIN), LP94892-4 (LABORDERS)}} 

 **References** 

* [NG Laboratory or Pathology Result Observation](StructureDefinition-ng-observation-results-laboratory-pathology.md)

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
  "id" : "ng-results-laboratory-pathology-observation-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-results-laboratory-pathology-observation-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.181"
  }],
  "version" : "0.0.0",
  "name" : "NgResultsLaboratoryPathologyObservationVS",
  "title" : "Results Laboratory/Pathology Observation - IPS",
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
  "description" : "Value Set Definition: LOINC {STATUS in {ACTIVE}, CLASSTYPE in {Laboratory class (1)}, CLASS exclude {LP62148-9 (NR STATS), LP175679-2 (H&P.HX.LAB), LP7785-1 (CHALSKIN), LP94892-4 (LABORDERS)}}",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "immutable" : false,
  "copyright" : "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "STATUS",
        "op" : "=",
        "value" : "ACTIVE"
      },
      {
        "property" : "CLASSTYPE",
        "op" : "=",
        "value" : "1"
      }]
    }],
    "exclude" : [{
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "CLASS",
        "op" : "=",
        "value" : "LP62148-9"
      }]
    },
    {
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "CLASS",
        "op" : "=",
        "value" : "LP175679-2"
      }]
    },
    {
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "CLASS",
        "op" : "=",
        "value" : "LP7785-1"
      }]
    },
    {
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "CLASS",
        "op" : "=",
        "value" : "LP94892-4"
      }]
    }]
  }
}

```
