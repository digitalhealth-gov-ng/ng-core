# Bundle NG Immunization SMART Scheduler - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle NG Immunization SMART Scheduler**

## Resource Profile: Bundle NG Immunization SMART Scheduler 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-imm-smart-scheduler-bundle | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgImmSmartSchedulerBundle |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.32 | |

 
A minimal transaction bundle to schedule an immunization visit with optional recommendations. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-imm-smart-scheduler-bundle.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-imm-smart-scheduler-bundle.csv), [Excel](StructureDefinition-ng-imm-smart-scheduler-bundle.xlsx), [Schematron](StructureDefinition-ng-imm-smart-scheduler-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-imm-smart-scheduler-bundle",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-imm-smart-scheduler-bundle",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.32"
  }],
  "version" : "0.0.0",
  "name" : "NgImmSmartSchedulerBundle",
  "title" : "Bundle NG Immunization SMART Scheduler",
  "status" : "active",
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
  "description" : "A minimal transaction bundle to schedule an immunization visit with optional recommendations.",
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
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Prefer URN UUID (urn:uuid:...) for intra-bundle references.",
      "min" : 1,
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
      "id" : "Bundle.entry:org",
      "path" : "Bundle.entry",
      "sliceName" : "org",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:org.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Organization",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "Bundle.entry:org.request.url",
      "path" : "Bundle.entry.request.url",
      "short" : "Organization"
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
      "id" : "Bundle.entry:appointment",
      "path" : "Bundle.entry",
      "sliceName" : "appointment",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:appointment.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Appointment",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-appointment"]
      }]
    },
    {
      "id" : "Bundle.entry:appointment.request.url",
      "path" : "Bundle.entry.request.url",
      "short" : "Appointment"
    },
    {
      "id" : "Bundle.entry:immRec",
      "path" : "Bundle.entry",
      "sliceName" : "immRec",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:immRec.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "ImmunizationRecommendation",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization-recommendation"]
      }]
    },
    {
      "id" : "Bundle.entry:immRec.request.url",
      "path" : "Bundle.entry.request.url",
      "short" : "ImmunizationRecommendation"
    }]
  }
}

```
