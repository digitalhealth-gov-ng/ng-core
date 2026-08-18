# NG Allergy Intolerance - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Allergy Intolerance**

## Resource Profile: NG Allergy Intolerance 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-allergy-intolerance | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgAllergyIntolerance |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.10 | |

 
Nigeria Core profile for recording a patient's allergy or intolerance and the associated risk of an adverse reaction. 

**Usages:**

* Examples for this Profile: [AllergyIntolerance/NgAllergyIntoleranceImmunizationOndoExample](AllergyIntolerance-NgAllergyIntoleranceImmunizationOndoExample.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md), [Nigeria Core General Hospital Requestor Capability](CapabilityStatement-NgGeneralHospitalRequestorCapability.md), [Nigeria Core General Hospital Responder Capability](CapabilityStatement-NgGeneralHospitalResponderCapability.md), [Nigeria Core Tertiary Referral Requestor Capability](CapabilityStatement-NgTertiaryRequestorCapability.md) and [Nigeria Core Tertiary Referral Responder Capability](CapabilityStatement-NgTertiaryResponderCapability.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-allergy-intolerance.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-allergy-intolerance.csv), [Excel](StructureDefinition-ng-allergy-intolerance.xlsx), [Schematron](StructureDefinition-ng-allergy-intolerance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-allergy-intolerance",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-allergy-intolerance",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.10"
  }],
  "version" : "0.0.0",
  "name" : "NgAllergyIntolerance",
  "title" : "NG Allergy Intolerance",
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
  "description" : "Nigeria Core profile for recording a patient's allergy or intolerance and the associated risk of an adverse reaction.",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AllergyIntolerance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AllergyIntolerance",
      "path" : "AllergyIntolerance"
    },
    {
      "id" : "AllergyIntolerance.identifier",
      "path" : "AllergyIntolerance.identifier",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.clinicalStatus",
      "path" : "AllergyIntolerance.clinicalStatus",
      "short" : "Current clinical status of the allergy or intolerance",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.verificationStatus",
      "path" : "AllergyIntolerance.verificationStatus",
      "short" : "Verification status of the allergy or intolerance",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.type",
      "path" : "AllergyIntolerance.type",
      "short" : "Allergy or intolerance",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.category",
      "path" : "AllergyIntolerance.category",
      "short" : "Category of the substance associated with the sensitivity",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.criticality",
      "path" : "AllergyIntolerance.criticality",
      "short" : "Potential clinical harm from a future reaction",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.code",
      "path" : "AllergyIntolerance.code",
      "short" : "Substance, product, or condition associated with the sensitivity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.code.text",
      "path" : "AllergyIntolerance.code.text",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.patient",
      "path" : "AllergyIntolerance.patient",
      "short" : "Patient who has the allergy or intolerance",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.encounter",
      "path" : "AllergyIntolerance.encounter",
      "short" : "Encounter during which the allergy was recorded",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.onset[x]",
      "path" : "AllergyIntolerance.onset[x]",
      "short" : "When the allergy or intolerance was first identified",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.recordedDate",
      "path" : "AllergyIntolerance.recordedDate",
      "short" : "Date the allergy or intolerance record was created",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.recorder",
      "path" : "AllergyIntolerance.recorder",
      "short" : "Person who recorded the allergy or intolerance",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-related-person"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.asserter",
      "path" : "AllergyIntolerance.asserter",
      "short" : "Source of the allergy or intolerance information",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-related-person"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.lastOccurrence",
      "path" : "AllergyIntolerance.lastOccurrence",
      "short" : "Date of the last known reaction",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.note",
      "path" : "AllergyIntolerance.note",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction",
      "path" : "AllergyIntolerance.reaction",
      "short" : "Known adverse reaction associated with the allergy or intolerance",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.substance",
      "path" : "AllergyIntolerance.reaction.substance",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.manifestation",
      "path" : "AllergyIntolerance.reaction.manifestation",
      "short" : "Clinical signs or symptoms of the reaction",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.description",
      "path" : "AllergyIntolerance.reaction.description",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.onset",
      "path" : "AllergyIntolerance.reaction.onset",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.severity",
      "path" : "AllergyIntolerance.reaction.severity",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.exposureRoute",
      "path" : "AllergyIntolerance.reaction.exposureRoute",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.note",
      "path" : "AllergyIntolerance.reaction.note",
      "mustSupport" : true
    }]
  }
}

```
