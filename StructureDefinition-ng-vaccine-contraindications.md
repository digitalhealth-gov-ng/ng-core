# NG Vaccine Contraindications - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Vaccine Contraindications**

## Extension: NG Vaccine Contraindications 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-vaccine-contraindications | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgVaccineContraindications |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.71 | |

Indicates specific situations in which it is not recommended to administer certain vaccines (e.g severe AEFI, History of Anaphylactic reactions, Symptomatic HIV infection)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [NG Immunization](StructureDefinition-ng-immunization.md)
* Examples for this Extension: [Immunization/NgImmunization-003](Immunization-NgImmunization-003.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-vaccine-contraindications.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-vaccine-contraindications.csv), [Excel](StructureDefinition-ng-vaccine-contraindications.xlsx), [Schematron](StructureDefinition-ng-vaccine-contraindications.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-vaccine-contraindications",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-vaccine-contraindications",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.71"
  }],
  "version" : "0.0.0",
  "name" : "NgVaccineContraindications",
  "title" : "NG Vaccine Contraindications",
  "status" : "draft",
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
  "description" : "Indicates specific situations in which it is not recommended to administer certain vaccines (e.g severe AEFI, History of Anaphylactic reactions, Symptomatic HIV infection)",
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
      "short" : "NG Vaccine Contraindications",
      "definition" : "Indicates specific situations in which it is not recommended to administer certain vaccines (e.g severe AEFI, History of Anaphylactic reactions, Symptomatic HIV infection)"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-vaccine-contraindications"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Contraindications to immunization",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-vaccine-contraindication-vs"
      }
    }]
  }
}

```
