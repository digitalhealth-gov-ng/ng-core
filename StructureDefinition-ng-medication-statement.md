# Nigeria Medication Statement - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Medication Statement**

## Resource Profile: Nigeria Medication Statement 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication-statement | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgMedicationStatement |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.45 | |

 
Profile for recording a medication that a patient is taking, has taken, or is expected to take, based on information reported by the patient, caregiver, practitioner, or another clinical record. 

**Usages:**

* Examples for this Profile: [MedicationStatement/NgMedicationStatement-001](MedicationStatement-NgMedicationStatement-001.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md), [Nigeria Core General Hospital Requestor Capability](CapabilityStatement-NgGeneralHospitalRequestorCapability.md), [Nigeria Core General Hospital Responder Capability](CapabilityStatement-NgGeneralHospitalResponderCapability.md), [Nigeria Core Tertiary Referral Requestor Capability](CapabilityStatement-NgTertiaryRequestorCapability.md) and [Nigeria Core Tertiary Referral Responder Capability](CapabilityStatement-NgTertiaryResponderCapability.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-medication-statement.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-medication-statement.csv), [Excel](StructureDefinition-ng-medication-statement.xlsx), [Schematron](StructureDefinition-ng-medication-statement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-medication-statement",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication-statement",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.45"
  }],
  "version" : "0.0.0",
  "name" : "NgMedicationStatement",
  "title" : "Nigeria Medication Statement",
  "status" : "draft",
  "date" : "2026-08-17T13:27:53+01:00",
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
  "description" : "Profile for recording a medication that a patient is taking, has taken, or is expected to take, based\non information reported by the patient, caregiver, practitioner, or another clinical record.",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationStatement",
      "path" : "MedicationStatement"
    },
    {
      "id" : "MedicationStatement.identifier",
      "path" : "MedicationStatement.identifier",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.status",
      "path" : "MedicationStatement.status",
      "short" : "Status of the reported medication use",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.statusReason",
      "path" : "MedicationStatement.statusReason",
      "short" : "Reason for the medication statement status",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.category",
      "path" : "MedicationStatement.category",
      "short" : "Type or setting of the medication use statement",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]",
      "path" : "MedicationStatement.medication[x]",
      "short" : "Medication reported as being taken",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.subject",
      "path" : "MedicationStatement.subject",
      "short" : "Patient associated with the medication statement",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.context",
      "path" : "MedicationStatement.context",
      "short" : "Encounter or episode associated with the statement",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.effective[x]",
      "path" : "MedicationStatement.effective[x]",
      "short" : "When the medication was or is being taken",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dateAsserted",
      "path" : "MedicationStatement.dateAsserted",
      "short" : "Date the medication statement was asserted",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.informationSource",
      "path" : "MedicationStatement.informationSource",
      "short" : "Source of the medication-use information",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner-role",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-related-person",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.derivedFrom",
      "path" : "MedicationStatement.derivedFrom",
      "short" : "Record from which the medication statement was derived",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.reasonCode",
      "path" : "MedicationStatement.reasonCode",
      "short" : "Coded reason for taking the medication",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.reasonReference",
      "path" : "MedicationStatement.reasonReference",
      "short" : "Clinical reason for taking the medication",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-condition",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.note",
      "path" : "MedicationStatement.note",
      "short" : "Additional information about the medication use",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage",
      "path" : "MedicationStatement.dosage",
      "short" : "Reported instructions or pattern of medication use",
      "mustSupport" : true
    }]
  }
}

```
