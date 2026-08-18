# Coding with translations - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Coding with translations**

## Data Type Profile: Coding with translations 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/Coding-ips | *Version*:0.0.0 |
| Draft as of 2024-06-19 | *Computable Name*:CodingIPS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.2 | |

 
This profile extends the capabilities of the coding data type to support multi-language designations (display). It relies on the Translation extension. 

**Usages:**

* Use this DataType Profile: [Codeable Concept (IPS)](StructureDefinition-CodeableConcept-ips.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-Coding-ips.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Coding-ips.csv), [Excel](StructureDefinition-Coding-ips.xlsx), [Schematron](StructureDefinition-Coding-ips.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Coding-ips",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/Coding-ips",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.2"
  }],
  "version" : "0.0.0",
  "name" : "CodingIPS",
  "title" : "Coding with translations",
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
  "description" : "This profile extends the capabilities of the coding data type to support multi-language designations (display).\nIt relies on the Translation extension.",
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
  "type" : "Coding",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Coding",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Coding.system",
      "path" : "Coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Coding.code",
      "path" : "Coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Coding.display",
      "path" : "Coding.display",
      "short" : "Text representation defined by the system"
    }]
  }
}

```
