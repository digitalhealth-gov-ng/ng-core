# NG Claim Coverage - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Claim Coverage**

## Resource Profile: NG Claim Coverage 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-coverage | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgCoverage |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.21 | |

 
A profile capturing a patient's insurance coverage details. 

**Usages:**

* Refer to this Profile: [NG Claim](StructureDefinition-ng-claim.md) and [NG DeviceRequest](StructureDefinition-ng-device-request.md)
* Examples for this Profile: [Coverage/Coverage-Chika-TruthHMO](Coverage-Coverage-Chika-TruthHMO.md), [Coverage/NgCoverage-001](Coverage-NgCoverage-001.md) and [Coverage/NgCoverage-002](Coverage-NgCoverage-002.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-coverage.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-coverage.csv), [Excel](StructureDefinition-ng-coverage.xlsx), [Schematron](StructureDefinition-ng-coverage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-coverage",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-coverage",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.21"
  }],
  "version" : "0.0.0",
  "name" : "NgCoverage",
  "title" : "NG Claim Coverage",
  "status" : "draft",
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
  "description" : "A profile capturing a patient's insurance coverage details.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "cpha3pharm",
    "uri" : "http://www.pharmacists.ca/",
    "name" : "Canadian Pharmacy Associaiton eclaims standard"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Coverage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Coverage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Coverage",
      "path" : "Coverage"
    },
    {
      "id" : "Coverage.identifier",
      "path" : "Coverage.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Coverage.status",
      "path" : "Coverage.status",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/fm-status"
      }
    },
    {
      "id" : "Coverage.type",
      "path" : "Coverage.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/coverage-type"
      }
    },
    {
      "id" : "Coverage.subscriber",
      "path" : "Coverage.subscriber",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }]
    },
    {
      "id" : "Coverage.subscriberId",
      "path" : "Coverage.subscriberId",
      "mustSupport" : true
    },
    {
      "id" : "Coverage.beneficiary",
      "path" : "Coverage.beneficiary",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }]
    },
    {
      "id" : "Coverage.payor",
      "path" : "Coverage.payor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    }]
  }
}

```
