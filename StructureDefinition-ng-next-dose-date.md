# NG Next Dose Date - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Next Dose Date**

## Extension: NG Next Dose Date 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-next-dose-date | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgNextDoseDate |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.48 | |

The recommended due date for the next vaccine dose in the schedule.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [NG Immunization](StructureDefinition-ng-immunization.md)
* Examples for this Extension: [Immunization/NgImmunization-001](Immunization-NgImmunization-001.md) and [Immunization/NgImmunization-003](Immunization-NgImmunization-003.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-next-dose-date.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-next-dose-date.csv), [Excel](StructureDefinition-ng-next-dose-date.xlsx), [Schematron](StructureDefinition-ng-next-dose-date.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-next-dose-date",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-next-dose-date",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.48"
  }],
  "version" : "0.0.0",
  "name" : "NgNextDoseDate",
  "title" : "NG Next Dose Date",
  "status" : "draft",
  "date" : "2026-08-17T07:55:48+01:00",
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
  "description" : "The recommended due date for the next vaccine dose in the schedule.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Immunization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "NG Next Dose Date",
      "definition" : "The recommended due date for the next vaccine dose in the schedule."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-next-dose-date"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Recommended date for the next immunization dose",
      "type" : [{
        "code" : "date"
      }]
    }]
  }
}

```
