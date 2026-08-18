# NG Claim - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Claim**

## Resource Profile: NG Claim 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-claim | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgClaim |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.14 | |

 
A profile representing submitted claims from providers to payers. 

**Usages:**

* Refer to this Profile: [NG ClaimResponse](StructureDefinition-ng-claim-response.md) and [NG Task](StructureDefinition-ng-task.md)
* Examples for this Profile: [Claim/NgClaim-001](Claim-NgClaim-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-claim.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-claim.csv), [Excel](StructureDefinition-ng-claim.xlsx), [Schematron](StructureDefinition-ng-claim.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-claim",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-claim",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.14"
  }],
  "version" : "0.0.0",
  "name" : "NgClaim",
  "title" : "NG Claim",
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
  "description" : "A profile representing submitted claims from providers to payers.",
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
  "type" : "Claim",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Claim",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Claim",
      "path" : "Claim"
    },
    {
      "id" : "Claim.status",
      "path" : "Claim.status",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/fm-status"
      }
    },
    {
      "id" : "Claim.type",
      "path" : "Claim.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/claim-type"
      }
    },
    {
      "id" : "Claim.use",
      "path" : "Claim.use",
      "short" : "what the claim is for (Required - claim | preauthorization | predetermination)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/claim-use"
      }
    },
    {
      "id" : "Claim.patient",
      "path" : "Claim.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }]
    },
    {
      "id" : "Claim.created",
      "path" : "Claim.created",
      "mustSupport" : true
    },
    {
      "id" : "Claim.insurer",
      "path" : "Claim.insurer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-insurer-organization"]
      }]
    },
    {
      "id" : "Claim.provider",
      "path" : "Claim.provider",
      "short" : "The party responsible for the claim",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "Claim.priority",
      "path" : "Claim.priority",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/process-priority"
      }
    },
    {
      "id" : "Claim.diagnosis",
      "path" : "Claim.diagnosis",
      "mustSupport" : true
    },
    {
      "id" : "Claim.diagnosis.diagnosis[x]",
      "path" : "Claim.diagnosis.diagnosis[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/icd-10"
      }
    },
    {
      "id" : "Claim.procedure",
      "path" : "Claim.procedure",
      "mustSupport" : true
    },
    {
      "id" : "Claim.procedure.procedure[x]",
      "path" : "Claim.procedure.procedure[x]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/icd-10-procedures"
      }
    },
    {
      "id" : "Claim.insurance.coverage",
      "path" : "Claim.insurance.coverage",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-coverage"]
      }]
    },
    {
      "id" : "Claim.item",
      "path" : "Claim.item",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Claim.item.productOrService",
      "path" : "Claim.item.productOrService",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/service-uscls"
      }
    }]
  }
}

```
