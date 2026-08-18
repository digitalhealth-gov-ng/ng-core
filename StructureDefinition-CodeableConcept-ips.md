# Codeable Concept (IPS) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Codeable Concept (IPS)**

## Data Type Profile: Codeable Concept (IPS) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/CodeableConcept-ips | *Version*:0.0.0 |
| Draft as of 2024-06-19 | *Computable Name*:CodeableConceptIPS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.1 | |

 
This profile represents the constraint applied to the CodeableConcept data type by the International Patient Summary (IPS) FHIR Implementation Guide to use the Coding-uv-ips data type profile. 

**Usages:**

* Use this DataType Profile: [DiagnosticReport (IPS)](StructureDefinition-ng-diagnostic-report.md), [Bundle NG IPS Composition](StructureDefinition-ng-ips-composition.md) and [NG Specimen](StructureDefinition-ng-specimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-CodeableConcept-ips.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CodeableConcept-ips.csv), [Excel](StructureDefinition-CodeableConcept-ips.xlsx), [Schematron](StructureDefinition-CodeableConcept-ips.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CodeableConcept-ips",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/CodeableConcept-ips",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.1"
  }],
  "version" : "0.0.0",
  "name" : "CodeableConceptIPS",
  "title" : "Codeable Concept (IPS)",
  "status" : "draft",
  "date" : "2024-06-19T10:50:07-05:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "This profile represents the constraint applied to the CodeableConcept data type by the International Patient Summary (IPS) FHIR Implementation Guide to use the Coding-uv-ips data type profile.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "orim",
    "uri" : "http://hl7.org/orim",
    "name" : "Ontological RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "CodeableConcept",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CodeableConcept",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CodeableConcept",
      "path" : "CodeableConcept"
    },
    {
      "id" : "CodeableConcept.coding",
      "path" : "CodeableConcept.coding",
      "type" : [{
        "code" : "Coding",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/Coding-ips"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CodeableConcept.text",
      "path" : "CodeableConcept.text",
      "mustSupport" : true
    }]
  }
}

```
