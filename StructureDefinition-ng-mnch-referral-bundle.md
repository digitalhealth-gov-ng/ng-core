# Bundle NG Referral MNCH - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle NG Referral MNCH**

## Resource Profile: Bundle NG Referral MNCH 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-mnch-referral-bundle | *Version*:0.0.0 |
| Active as of 2025-11-19 | *Computable Name*:NgMNCHReferralBundle |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.47 | |

 
Transaction bundle for MNCH referrals between facilities and/or payers. MUST contain a Patient and a ServiceRequest (the referral order). Optional entries (Communication, Task, etc.) may support initiation, response, and tracking. 

 
Requires Patient + ServiceRequest; supports Communication and Task for end-to-end referral. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-mnch-referral-bundle.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-mnch-referral-bundle.csv), [Excel](StructureDefinition-ng-mnch-referral-bundle.xlsx), [Schematron](StructureDefinition-ng-mnch-referral-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-mnch-referral-bundle",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-mnch-referral-bundle",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.47"
  }],
  "version" : "0.0.0",
  "name" : "NgMNCHReferralBundle",
  "title" : "Bundle NG Referral MNCH",
  "status" : "active",
  "date" : "2025-11-19",
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
  "description" : "Transaction bundle for MNCH referrals between facilities and/or payers.\nMUST contain a Patient and a ServiceRequest (the referral order).\nOptional entries (Communication, Task, etc.) may support initiation, response, and tracking.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "purpose" : "Requires Patient + ServiceRequest; supports Communication and Task for end-to-end referral.",
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
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "fixedCode" : "transaction",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "min" : 1,
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
      "comment" : "Must contain one Patient and one ServiceRequest (referral).",
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1
    },
    {
      "id" : "Bundle.entry.search",
      "path" : "Bundle.entry.search",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
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
      "patternUri" : "Patient"
    },
    {
      "id" : "Bundle.entry:referral",
      "path" : "Bundle.entry",
      "sliceName" : "referral",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:referral.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "ServiceRequest",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-service-request"]
      }]
    },
    {
      "id" : "Bundle.entry:referral.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "ServiceRequest"
    },
    {
      "id" : "Bundle.entry:communication",
      "path" : "Bundle.entry",
      "sliceName" : "communication",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:communication.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Communication",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-communication"]
      }]
    },
    {
      "id" : "Bundle.entry:communication.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "Communication"
    },
    {
      "id" : "Bundle.entry:task",
      "path" : "Bundle.entry",
      "sliceName" : "task",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:task.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Task",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-task"]
      }]
    },
    {
      "id" : "Bundle.entry:task.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "Task"
    }]
  }
}

```
