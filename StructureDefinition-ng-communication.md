# NG Communication - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Communication**

## Resource Profile: NG Communication 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-communication | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgCommunication |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.15 | |

 
Communication artifact for clinical messaging. Optimized to minimize QA noise while keeping key elements Must Support. 

**Usages:**

* Use this Profile: [Bundle NG Referral MNCH](StructureDefinition-ng-mnch-referral-bundle.md)
* Examples for this Profile: [Communication/NgCommunication-MNCH-001](Communication-NgCommunication-MNCH-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-communication.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-communication.csv), [Excel](StructureDefinition-ng-communication.xlsx), [Schematron](StructureDefinition-ng-communication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-communication",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-communication",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.15"
  }],
  "version" : "0.0.0",
  "name" : "NgCommunication",
  "title" : "NG Communication",
  "status" : "active",
  "date" : "2026-08-17T16:10:29+01:00",
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
  "description" : "Communication artifact for clinical messaging.\nOptimized to minimize QA noise while keeping key elements Must Support.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Communication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Communication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Communication",
      "path" : "Communication"
    },
    {
      "id" : "Communication.basedOn",
      "path" : "Communication.basedOn",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-service-request"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.partOf",
      "path" : "Communication.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-task"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.status",
      "path" : "Communication.status",
      "mustSupport" : true
    },
    {
      "id" : "Communication.category",
      "path" : "Communication.category",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Communication.medium",
      "path" : "Communication.medium",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Communication.subject",
      "path" : "Communication.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.sent",
      "path" : "Communication.sent",
      "mustSupport" : true
    },
    {
      "id" : "Communication.received",
      "path" : "Communication.received",
      "mustSupport" : true
    },
    {
      "id" : "Communication.recipient",
      "path" : "Communication.recipient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.sender",
      "path" : "Communication.sender",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.payload",
      "path" : "Communication.payload",
      "mustSupport" : true
    },
    {
      "id" : "Communication.payload.content[x]",
      "path" : "Communication.payload.content[x]",
      "type" : [{
        "code" : "string"
      },
      {
        "code" : "Attachment"
      }],
      "mustSupport" : true
    }]
  }
}

```
