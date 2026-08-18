# NG Insurer Organization - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Insurer Organization**

## Resource Profile: NG Insurer Organization 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-insurer-organization | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgInsurerOrganization |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.36 | |

 
Organization profile for insurance payers/HMOs 

**Usages:**

* Refer to this Profile: [NG ClaimResponse](StructureDefinition-ng-claim-response.md), [NG Claim](StructureDefinition-ng-claim.md), [NG Claim Coverage Eligibility Request](StructureDefinition-ng-coverage-eligibility-request.md), [NG Claim Coverage Eligibility Response](StructureDefinition-ng-coverage-eligibility-response.md) and [NG ExplanationOfBenefit](StructureDefinition-ng-explanation-of-benefit.md)
* Examples for this Profile: [Ondo Community Health Insurance](Organization-NgInsurerOrganization-001.md) and [Truth Health Maintenance Organization](Organization-Organization-Truth-HMO.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-insurer-organization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-insurer-organization.csv), [Excel](StructureDefinition-ng-insurer-organization.xlsx), [Schematron](StructureDefinition-ng-insurer-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-insurer-organization",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-insurer-organization",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.36"
  }],
  "version" : "0.0.0",
  "name" : "NgInsurerOrganization",
  "title" : "NG Insurer Organization",
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
  "description" : "Organization profile for insurance payers/HMOs",
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-insurer-org-type-vs"
      }
    }]
  }
}

```
