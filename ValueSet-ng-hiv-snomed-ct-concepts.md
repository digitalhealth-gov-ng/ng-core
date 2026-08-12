# Nigeria HIV SNOMED CT Concepts - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria HIV SNOMED CT Concepts**

## ValueSet: Nigeria HIV SNOMED CT Concepts (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-snomed-ct-concepts | *Version*:0.0.0 |
| Active as of 2026-07-24 | *Computable Name*:NgHivSNOMEDCTConceptsVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.136 | |

 
Distinct valid SNOMED CT identifiers referenced by the supplied HIV ConceptMaps. Displays are omitted because authoritative SNOMED CT terms were not supplied. 

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
  "id" : "ng-hiv-snomed-ct-concepts",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-snomed-ct-concepts",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.136"
  }],
  "version" : "0.0.0",
  "name" : "NgHivSNOMEDCTConceptsVS",
  "title" : "Nigeria HIV SNOMED CT Concepts",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-24",
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
  "description" : "Distinct valid SNOMED CT identifiers referenced by the supplied HIV ConceptMaps. Displays are omitted because authoritative SNOMED CT terms were not supplied.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "135818000"
      },
      {
        "code" : "135817005"
      },
      {
        "code" : "135815002"
      },
      {
        "code" : "87276001"
      },
      {
        "code" : "284473002"
      },
      {
        "code" : "315124004"
      },
      {
        "code" : "129019007"
      },
      {
        "code" : "410524007"
      },
      {
        "code" : "257622000"
      },
      {
        "code" : "276052003"
      },
      {
        "code" : "309895006"
      },
      {
        "code" : "394794000"
      },
      {
        "code" : "185483006"
      },
      {
        "code" : "1991000124105"
      },
      {
        "code" : "310391008"
      },
      {
        "code" : "76102007"
      },
      {
        "code" : "159799000"
      },
      {
        "code" : "407375002"
      },
      {
        "code" : "106540006"
      },
      {
        "code" : "87447002"
      },
      {
        "code" : "446654005"
      },
      {
        "code" : "226034001"
      },
      {
        "code" : "410265008"
      }]
    }]
  }
}

```
