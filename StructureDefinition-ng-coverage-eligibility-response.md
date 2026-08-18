# NG Claim Coverage Eligibility Response - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Claim Coverage Eligibility Response**

## Resource Profile: NG Claim Coverage Eligibility Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-coverage-eligibility-response | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgCoverageEligibilityResponse |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.20 | |

 
Profile defining the response from an HMO to an eligibilty request 

**Usages:**

* Examples for this Profile: [CoverageEligibilityResponse/NgCoverageEligibilityResponse-ChikaEmergency](CoverageEligibilityResponse-NgCoverageEligibilityResponse-ChikaEmergency.md) and [CoverageEligibilityResponse/NgCoverageEligibilityResponse-ChikaXrayApproved](CoverageEligibilityResponse-NgCoverageEligibilityResponse-ChikaXrayApproved.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-coverage-eligibility-response.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-coverage-eligibility-response.csv), [Excel](StructureDefinition-ng-coverage-eligibility-response.xlsx), [Schematron](StructureDefinition-ng-coverage-eligibility-response.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-coverage-eligibility-response",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-coverage-eligibility-response",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.20"
  }],
  "version" : "0.0.0",
  "name" : "NgCoverageEligibilityResponse",
  "title" : "NG Claim Coverage Eligibility Response",
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
  "description" : "Profile defining the response from an HMO to an eligibilty request",
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
    "identity" : "cdanetv4",
    "uri" : "http://www.cda-adc.ca/en/services/cdanet/",
    "name" : "Canadian Dental Association eclaims standard"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CoverageEligibilityResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CoverageEligibilityResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CoverageEligibilityResponse",
      "path" : "CoverageEligibilityResponse"
    },
    {
      "id" : "CoverageEligibilityResponse.identifier",
      "path" : "CoverageEligibilityResponse.identifier",
      "short" : "NHIA or HMO unique identifier for coverage eligiblity response",
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityResponse.status",
      "path" : "CoverageEligibilityResponse.status",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/fm-status"
      }
    },
    {
      "id" : "CoverageEligibilityResponse.purpose",
      "path" : "CoverageEligibilityResponse.purpose",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose"
      }
    },
    {
      "id" : "CoverageEligibilityResponse.patient",
      "path" : "CoverageEligibilityResponse.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityResponse.created",
      "path" : "CoverageEligibilityResponse.created",
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityResponse.requestor",
      "path" : "CoverageEligibilityResponse.requestor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-provider-organization"]
      }]
    },
    {
      "id" : "CoverageEligibilityResponse.request",
      "path" : "CoverageEligibilityResponse.request",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-coverage-eligibility-request"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityResponse.outcome",
      "path" : "CoverageEligibilityResponse.outcome",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/remittance-outcome"
      }
    },
    {
      "id" : "CoverageEligibilityResponse.insurer",
      "path" : "CoverageEligibilityResponse.insurer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-insurer-organization"]
      }],
      "mustSupport" : true
    }]
  }
}

```
