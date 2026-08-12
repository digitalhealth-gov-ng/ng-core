# HIV ARV Side Effects - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV ARV Side Effects**

## ValueSet: HIV ARV Side Effects 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-arv-side-effects-vs | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgHivARVSideEffectsVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.51 | |

 
Codes used for representing any side effects of the ARV medication prescribed to the patient. 

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
  "id" : "ng-hiv-arv-side-effects-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-arv-side-effects-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.51"
  }],
  "version" : "0.0.0",
  "name" : "NgHivARVSideEffectsVS",
  "title" : "HIV ARV Side Effects",
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
  "description" : "Codes used for representing any side effects of the ARV medication prescribed to the patient.",
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
        "code" : "LA15098-9",
        "display" : "Nausea"
      },
      {
        "code" : "LA7542-9",
        "display" : "Fatigue"
      },
      {
        "code" : "LA15903-0",
        "display" : "Headache"
      },
      {
        "code" : "LA15424-7",
        "display" : "Diarrhea"
      },
      {
        "code" : "LA18969-8",
        "display" : "Anemia"
      },
      {
        "code" : "LA7469-5",
        "display" : "Rash"
      },
      {
        "code" : "LA15468-4",
        "display" : "Abdominal pain"
      },
      {
        "code" : "3141-9",
        "display" : "Body weight Measured"
      },
      {
        "code" : "LA7450-5",
        "display" : "Jaundice"
      },
      {
        "code" : "LA16358-6",
        "display" : "Numbness or tingling"
      },
      {
        "code" : "LA7460-4",
        "display" : "Pain"
      },
      {
        "code" : "LA10574-4",
        "display" : "Anxiety"
      },
      {
        "code" : "LA7428-1",
        "display" : "Dizziness"
      },
      {
        "code" : "LA15886-7",
        "display" : "Have nightmares"
      },
      {
        "code" : "LA10576-9",
        "display" : "Depression"
      },
      {
        "code" : "LA46-8",
        "display" : "Other"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "408508002",
        "display" : "Has shown no side effects from medication"
      }]
    }]
  }
}

```
