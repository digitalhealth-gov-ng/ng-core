# NG HealthcareService - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HealthcareService**

## Resource Profile: NG HealthcareService 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-healthcare-service | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgHealthcareService |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.30 | |

 
HealthcareService profile for the Nigeria Core (service directory/referrals). 

**Usages:**

* Examples for this Profile: [Asokoro District Hospital ANC Clinic](HealthcareService-NgHealthcareService-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-healthcare-service.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-healthcare-service.csv), [Excel](StructureDefinition-ng-healthcare-service.xlsx), [Schematron](StructureDefinition-ng-healthcare-service.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-healthcare-service",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-healthcare-service",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.30"
  }],
  "version" : "0.0.0",
  "name" : "NgHealthcareService",
  "title" : "NG HealthcareService",
  "status" : "draft",
  "date" : "2026-08-18T16:47:52+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "HealthcareService profile for the Nigeria Core (service directory/referrals).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "HealthcareService",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HealthcareService",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HealthcareService",
      "path" : "HealthcareService"
    },
    {
      "id" : "HealthcareService.active",
      "path" : "HealthcareService.active",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.providedBy",
      "path" : "HealthcareService.providedBy",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.category",
      "path" : "HealthcareService.category",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/service-category"
      }
    },
    {
      "id" : "HealthcareService.type",
      "path" : "HealthcareService.type",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/service-type"
      }
    },
    {
      "id" : "HealthcareService.location",
      "path" : "HealthcareService.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-location"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.name",
      "path" : "HealthcareService.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.telecom",
      "path" : "HealthcareService.telecom",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.coverageArea",
      "path" : "HealthcareService.coverageArea",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-location"]
      }]
    },
    {
      "id" : "HealthcareService.referralMethod",
      "path" : "HealthcareService.referralMethod",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/service-referral-method"
      }
    }]
  }
}

```
