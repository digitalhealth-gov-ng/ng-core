# NG Claim Coverage Eligibility Request - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Claim Coverage Eligibility Request**

## Resource Profile: NG Claim Coverage Eligibility Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-coverage-eligibility-request | *Version*:0.0.0 |
| Draft as of 2026-08-12 | *Computable Name*:NgCoverageEligibilityRequest |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.19 | |

 
A profile verifying a patient's active insurance coverage and covered services.. 

**Usages:**

* Refer to this Profile: [NG Claim Coverage Eligibility Response](StructureDefinition-ng-coverage-eligibility-response.md)
* Examples for this Profile: [CoverageEligibilityRequest/NgCoverageEligibilityRequest-ChikaEmergency](CoverageEligibilityRequest-NgCoverageEligibilityRequest-ChikaEmergency.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-coverage-eligibility-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-coverage-eligibility-request.csv), [Excel](StructureDefinition-ng-coverage-eligibility-request.xlsx), [Schematron](StructureDefinition-ng-coverage-eligibility-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-coverage-eligibility-request",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-coverage-eligibility-request",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.19"
  }],
  "version" : "0.0.0",
  "name" : "NgCoverageEligibilityRequest",
  "title" : "NG Claim Coverage Eligibility Request",
  "status" : "draft",
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
  "description" : "A profile verifying a patient's active insurance coverage and covered services..",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CoverageEligibilityRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CoverageEligibilityRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CoverageEligibilityRequest",
      "path" : "CoverageEligibilityRequest"
    },
    {
      "id" : "CoverageEligibilityRequest.identifier",
      "path" : "CoverageEligibilityRequest.identifier",
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityRequest.status",
      "path" : "CoverageEligibilityRequest.status",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/fm-status"
      }
    },
    {
      "id" : "CoverageEligibilityRequest.purpose",
      "path" : "CoverageEligibilityRequest.purpose",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose"
      }
    },
    {
      "id" : "CoverageEligibilityRequest.patient",
      "path" : "CoverageEligibilityRequest.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityRequest.created",
      "path" : "CoverageEligibilityRequest.created",
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityRequest.provider",
      "path" : "CoverageEligibilityRequest.provider",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-provider-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityRequest.insurer",
      "path" : "CoverageEligibilityRequest.insurer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-insurer-organization"]
      }],
      "mustSupport" : true
    }]
  }
}

```
