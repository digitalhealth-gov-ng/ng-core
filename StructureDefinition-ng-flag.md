# NG Alert Flag - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Alert Flag**

## Resource Profile: NG Alert Flag 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-flag | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgFlag |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.28 | |

 
Flag profile for prominent clinical, public-health, safety, or administrative alerts that require display, review, acknowledgement, or action. 

**Usages:**

* Examples for this Profile: [Flag/NgFlag-001](Flag-NgFlag-001.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md), [Nigeria Core General Hospital Requestor Capability](CapabilityStatement-NgGeneralHospitalRequestorCapability.md), [Nigeria Core General Hospital Responder Capability](CapabilityStatement-NgGeneralHospitalResponderCapability.md), [Nigeria Core Tertiary Referral Requestor Capability](CapabilityStatement-NgTertiaryRequestorCapability.md) and [Nigeria Core Tertiary Referral Responder Capability](CapabilityStatement-NgTertiaryResponderCapability.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-flag.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-flag.csv), [Excel](StructureDefinition-ng-flag.xlsx), [Schematron](StructureDefinition-ng-flag.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-flag",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-flag",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.28"
  }],
  "version" : "0.0.0",
  "name" : "NgFlag",
  "title" : "NG Alert Flag",
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
  "description" : "Flag profile for prominent clinical, public-health,\nsafety, or administrative alerts that require display, review,\nacknowledgement, or action.",
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
  "type" : "Flag",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Flag",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Flag",
      "path" : "Flag"
    },
    {
      "id" : "Flag.identifier",
      "path" : "Flag.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Flag.identifier.system",
      "path" : "Flag.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Flag.identifier.value",
      "path" : "Flag.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Flag.status",
      "path" : "Flag.status",
      "short" : "FHIR lifecycle status of the alert",
      "definition" : "Use active while the alert should be displayed; inactive when it\nhas expired, been resolved, or been dismissed; and entered-in-error\nwhen it was created incorrectly.",
      "mustSupport" : true
    },
    {
      "id" : "Flag.category",
      "path" : "Flag.category",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-alert-category-vs"
      }
    },
    {
      "id" : "Flag.code",
      "path" : "Flag.code",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-alert-code-vs"
      }
    },
    {
      "id" : "Flag.code.text",
      "path" : "Flag.code.text",
      "short" : "Human-readable alert message displayed to the user",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Flag.subject",
      "path" : "Flag.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner",
        "http://hl7.org/fhir/StructureDefinition/Medication",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-procedure"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Flag.period",
      "path" : "Flag.period",
      "mustSupport" : true
    },
    {
      "id" : "Flag.period.start",
      "path" : "Flag.period.start",
      "mustSupport" : true
    },
    {
      "id" : "Flag.period.end",
      "path" : "Flag.period.end",
      "mustSupport" : true
    },
    {
      "id" : "Flag.encounter",
      "path" : "Flag.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Flag.author",
      "path" : "Flag.author",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner-role",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-device",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    }]
  }
}

```
