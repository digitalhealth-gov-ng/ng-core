# HIV Encounter Locations - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Encounter Locations**

## ValueSet: HIV Encounter Locations 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-encounter-location-vs | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgHivEncounterLocationVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.75 | |

 
Code used for representing the location where the patient is receiving health services. 

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
  "id" : "ng-hiv-encounter-location-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-encounter-location-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.75"
  }],
  "version" : "0.0.0",
  "name" : "NgHivEncounterLocationVS",
  "title" : "HIV Encounter Locations",
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
  "description" : "Code used for representing the location where the patient is receiving health services.",
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
        "code" : "LA6511-5",
        "display" : "Inpatient"
      },
      {
        "code" : "LA10053-9",
        "display" : "Outpatient Services"
      },
      {
        "code" : "LA6508-1",
        "display" : "STI Outpatient"
      },
      {
        "code" : "LA6509-9",
        "display" : "TB Outpatient"
      },
      {
        "code" : "LA7171-7",
        "display" : "Dermatology"
      },
      {
        "code" : "LA7197-2",
        "display" : "Pediatrics"
      },
      {
        "code" : "LP172899-9",
        "display" : "Nutrition and dietetics"
      },
      {
        "code" : "LA6515-6",
        "display" : "Self-referred (via VCT)"
      },
      {
        "code" : "LA6516-4",
        "display" : "CBO referred (referred from a community-based organization via VCT)"
      },
      {
        "code" : "LP96947-4",
        "display" : "Antenatal testing and surveillance"
      },
      {
        "code" : "LA20786-2",
        "display" : "Labor and delivery"
      },
      {
        "code" : "LA6505-7",
        "display" : "PMTCT"
      },
      {
        "code" : "LA31960-0",
        "display" : "Health center - STD/HIV clinic"
      },
      {
        "code" : "LA46-8",
        "display" : "Other"
      },
      {
        "code" : "LP76338-0",
        "display" : "Index case"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "133906008",
        "display" : "Postpartum care"
      },
      {
        "code" : "309944008",
        "display" : "Obstetrics department"
      },
      {
        "code" : "309945009",
        "display" : "Pediatric department"
      },
      {
        "code" : "309912009",
        "display" : "Medical department"
      }]
    }]
  }
}

```
