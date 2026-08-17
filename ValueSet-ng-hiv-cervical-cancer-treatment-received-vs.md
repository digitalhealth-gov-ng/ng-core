# HIV-Cervical Cancer Treatment Received ValueSet - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV-Cervical Cancer Treatment Received ValueSet**

## ValueSet: HIV-Cervical Cancer Treatment Received ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-cervical-cancer-treatment-received-vs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivCervicalCancerTreatmentReceivedVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.61 | |

 
Cervical Cancer Treatment Received 

 **References** 

* [NG HIV National ART Register](StructureDefinition-NgHivArtRegister.md)

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
  "id" : "ng-hiv-cervical-cancer-treatment-received-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-cervical-cancer-treatment-received-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.61"
  }],
  "version" : "0.0.0",
  "name" : "NgHivCervicalCancerTreatmentReceivedVS",
  "title" : "HIV-Cervical Cancer Treatment Received ValueSet",
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
  "description" : "Cervical Cancer Treatment Received",
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
        "code" : "LA46-8",
        "display" : "Other"
      }]
    },
    {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-precancerous-lesion-treatment-received-cs"
    },
    {
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-suspicious-cancerous-treatment-cs"
    }]
  }
}

```
