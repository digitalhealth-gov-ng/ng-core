# NG Administrative Wards - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Administrative Wards**

## Extension: NG Administrative Wards 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-administrative-ward | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgAdministrativeWard |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.8 | |

Captures the administrative ward within a geographic address

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [NG Location](StructureDefinition-ng-location.md) and [NG Patient](StructureDefinition-ng-patient.md)
* Examples for this Extension: [Gurdi Outreach Site](Location-NgLocation-004.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-administrative-ward.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-administrative-ward.csv), [Excel](StructureDefinition-ng-administrative-ward.xlsx), [Schematron](StructureDefinition-ng-administrative-ward.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-administrative-ward",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-administrative-ward",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.8"
  }],
  "version" : "0.0.0",
  "name" : "NgAdministrativeWard",
  "title" : "NG Administrative Wards",
  "status" : "active",
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
  "description" : "Captures the administrative ward within a geographic address ",
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
    "expression" : "Address"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "NG Administrative Wards",
      "definition" : "Captures the administrative ward within a geographic address "
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-administrative-ward"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-wards-vs"
      }
    }]
  }
}

```
