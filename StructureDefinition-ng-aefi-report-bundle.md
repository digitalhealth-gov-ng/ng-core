# Bundle NG AEFI Report - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle NG AEFI Report**

## Resource Profile: Bundle NG AEFI Report 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-aefi-report-bundle | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgAefiReportBundle |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.9 | |

 
Minimal transaction bundle to report an AEFI with Patient, Immunization, AdverseEvent, and supporting data. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-aefi-report-bundle.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-aefi-report-bundle.csv), [Excel](StructureDefinition-ng-aefi-report-bundle.xlsx), [Schematron](StructureDefinition-ng-aefi-report-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-aefi-report-bundle",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-aefi-report-bundle",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.9"
  }],
  "version" : "0.0.0",
  "name" : "NgAefiReportBundle",
  "title" : "Bundle NG AEFI Report",
  "status" : "active",
  "date" : "2026-08-18T16:47:52+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Minimal transaction bundle to report an AEFI with Patient, Immunization, AdverseEvent, and supporting data.",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "fixedCode" : "transaction",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "open"
      },
      "min" : 3,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Use URN UUIDs (urn:uuid:...) for local references where possible.",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.request",
      "path" : "Bundle.entry.request",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient",
      "path" : "Bundle.entry",
      "sliceName" : "patient",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:patient.request.url",
      "path" : "Bundle.entry.request.url",
      "short" : "Patient"
    },
    {
      "id" : "Bundle.entry:organization",
      "path" : "Bundle.entry",
      "sliceName" : "organization",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:organization.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Organization",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "Bundle.entry:organization.request.url",
      "path" : "Bundle.entry.request.url",
      "short" : "Organization"
    },
    {
      "id" : "Bundle.entry:practitioner",
      "path" : "Bundle.entry",
      "sliceName" : "practitioner",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:practitioner.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner"]
      }]
    },
    {
      "id" : "Bundle.entry:practitioner.request.url",
      "path" : "Bundle.entry.request.url",
      "short" : "Practitioner"
    },
    {
      "id" : "Bundle.entry:location",
      "path" : "Bundle.entry",
      "sliceName" : "location",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:location.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Location",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-location"]
      }]
    },
    {
      "id" : "Bundle.entry:location.request.url",
      "path" : "Bundle.entry.request.url",
      "short" : "Location"
    },
    {
      "id" : "Bundle.entry:encounter",
      "path" : "Bundle.entry",
      "sliceName" : "encounter",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:encounter.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Encounter",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-encounter"]
      }]
    },
    {
      "id" : "Bundle.entry:encounter.request.url",
      "path" : "Bundle.entry.request.url",
      "short" : "Encounter"
    },
    {
      "id" : "Bundle.entry:immunization",
      "path" : "Bundle.entry",
      "sliceName" : "immunization",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:immunization.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Immunization",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization"]
      }]
    },
    {
      "id" : "Bundle.entry:immunization.request.url",
      "path" : "Bundle.entry.request.url",
      "short" : "Immunization"
    },
    {
      "id" : "Bundle.entry:observation",
      "path" : "Bundle.entry",
      "sliceName" : "observation",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:observation.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:observation.request.url",
      "path" : "Bundle.entry.request.url",
      "short" : "Observation"
    }]
  }
}

```
