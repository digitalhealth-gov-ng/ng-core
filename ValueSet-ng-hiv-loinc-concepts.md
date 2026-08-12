# Nigeria HIV LOINC Concepts - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria HIV LOINC Concepts**

## ValueSet: Nigeria HIV LOINC Concepts (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-loinc-concepts | *Version*:0.0.0 |
| Active as of 2026-07-24 | *Computable Name*:NgHivLOINCConceptsVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.100 | |

 
Distinct LOINC concepts referenced by the supplied HIV ConceptMaps. Displays are omitted because authoritative LOINC names were not supplied. 

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
  "id" : "ng-hiv-loinc-concepts",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-loinc-concepts",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.100"
  }],
  "version" : "0.0.0",
  "name" : "NgHivLOINCConceptsVS",
  "title" : "Nigeria HIV LOINC Concepts",
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
  "description" : "Distinct LOINC concepts referenced by the supplied HIV ConceptMaps. Displays are omitted because authoritative LOINC names were not supplied.",
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
        "code" : "45256-5"
      },
      {
        "code" : "77978-5"
      },
      {
        "code" : "45257-3"
      },
      {
        "code" : "63936-9"
      },
      {
        "code" : "45237-5"
      },
      {
        "code" : "91382-2"
      },
      {
        "code" : "LA29252-6"
      },
      {
        "code" : "LA29253-4"
      },
      {
        "code" : "LA29947-1"
      },
      {
        "code" : "LA46-8"
      },
      {
        "code" : "LA35-1"
      },
      {
        "code" : "LA32466-7"
      },
      {
        "code" : "LA32467-5"
      },
      {
        "code" : "LA15568-1"
      },
      {
        "code" : "LA39-3"
      },
      {
        "code" : "63939-3"
      },
      {
        "code" : "67723-7"
      },
      {
        "code" : "LA26438-4"
      },
      {
        "code" : "LA26440-0"
      },
      {
        "code" : "LA15173-0"
      },
      {
        "code" : "LA26683-5"
      },
      {
        "code" : "81954-0"
      },
      {
        "code" : "39266-2"
      },
      {
        "code" : "45235-9"
      },
      {
        "code" : "18934-0"
      },
      {
        "code" : "LP73973-7"
      },
      {
        "code" : "LA4645-3"
      },
      {
        "code" : "45231-8"
      },
      {
        "code" : "47244-9"
      },
      {
        "code" : "LA8969-3"
      },
      {
        "code" : "LA8968-5"
      },
      {
        "code" : "LA8967-7"
      },
      {
        "code" : "101819-1"
      },
      {
        "code" : "56072-2"
      },
      {
        "code" : "25836-8"
      }]
    }]
  }
}

```
