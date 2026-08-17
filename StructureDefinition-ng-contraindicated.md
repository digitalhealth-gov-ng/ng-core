# NG Immunization Contraindicated - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Immunization Contraindicated**

## Extension: NG Immunization Contraindicated 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-contraindicated | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgContraindicated |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.18 | |

Indicates whether the immunization was contraindicated

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [NG Immunization](StructureDefinition-ng-immunization.md)
* Examples for this Extension: [Immunization/NgImmunization-003](Immunization-NgImmunization-003.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-contraindicated.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-contraindicated.csv), [Excel](StructureDefinition-ng-contraindicated.xlsx), [Schematron](StructureDefinition-ng-contraindicated.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-contraindicated",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-contraindicated",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.18"
  }],
  "version" : "0.0.0",
  "name" : "NgContraindicated",
  "title" : "NG Immunization Contraindicated",
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
  "description" : "Indicates whether the immunization was contraindicated",
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
      "short" : "NG Immunization Contraindicated",
      "definition" : "Indicates whether the immunization was contraindicated"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-contraindicated"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Indicates whether the immunization was contraindicated or not",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
