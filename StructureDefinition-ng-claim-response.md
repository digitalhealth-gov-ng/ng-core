# NG ClaimResponse - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG ClaimResponse**

## Resource Profile: NG ClaimResponse 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-claim-response | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgClaimResponse |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.13 | |

 
A profile representing responses from insurers regarding submitted claims. 

**Usages:**

* Examples for this Profile: [ClaimResponse/NgClaimResponse-001](ClaimResponse-NgClaimResponse-001.md) and [ClaimResponse/NgClaimResponse-002](ClaimResponse-NgClaimResponse-002.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-claim-response.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-claim-response.csv), [Excel](StructureDefinition-ng-claim-response.xlsx), [Schematron](StructureDefinition-ng-claim-response.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-claim-response",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-claim-response",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.13"
  }],
  "version" : "0.0.0",
  "name" : "NgClaimResponse",
  "title" : "NG ClaimResponse",
  "status" : "draft",
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "A profile representing responses from insurers regarding submitted claims.",
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
  "type" : "ClaimResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ClaimResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ClaimResponse",
      "path" : "ClaimResponse"
    },
    {
      "id" : "ClaimResponse.identifier",
      "path" : "ClaimResponse.identifier",
      "max" : "1"
    },
    {
      "id" : "ClaimResponse.status",
      "path" : "ClaimResponse.status",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/fm-status"
      }
    },
    {
      "id" : "ClaimResponse.type",
      "path" : "ClaimResponse.type",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/claim-type"
      }
    },
    {
      "id" : "ClaimResponse.use",
      "path" : "ClaimResponse.use",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/claim-use"
      }
    },
    {
      "id" : "ClaimResponse.patient",
      "path" : "ClaimResponse.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.created",
      "path" : "ClaimResponse.created",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.insurer",
      "path" : "ClaimResponse.insurer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-insurer-organization"]
      }]
    },
    {
      "id" : "ClaimResponse.requestor",
      "path" : "ClaimResponse.requestor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "ClaimResponse.request",
      "path" : "ClaimResponse.request",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-claim"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.outcome",
      "path" : "ClaimResponse.outcome",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/remittance-outcome"
      }
    },
    {
      "id" : "ClaimResponse.preAuthRef",
      "path" : "ClaimResponse.preAuthRef",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.preAuthPeriod",
      "path" : "ClaimResponse.preAuthPeriod",
      "mustSupport" : true
    }]
  }
}

```
