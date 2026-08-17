# DiagnosticReport (IPS) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DiagnosticReport (IPS)**

## Resource Profile: DiagnosticReport (IPS) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-diagnostic-report | *Version*:0.0.0 |
| Active as of 2024-06-19 | *Computable Name*:NgDiagnosticReport |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.24 | |

 
This profile constrains the DiagnosticReport resource to represent diagnostic test and procedure reports in a patient summary. 

 
This profile constrains the DiagnosticReport resource to use the specific IPS profiles for observations and coded data types. 

**Usages:**

* Refer to this Profile: [Bundle NG IPS Composition](StructureDefinition-ng-ips-composition.md)
* Examples for this Profile: [DiagnosticReport/NgDiagnosticReportExample](DiagnosticReport-NgDiagnosticReportExample.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md), [Nigeria Core General Hospital Requestor Capability](CapabilityStatement-NgGeneralHospitalRequestorCapability.md), [Nigeria Core General Hospital Responder Capability](CapabilityStatement-NgGeneralHospitalResponderCapability.md), [Nigeria Core Tertiary Referral Requestor Capability](CapabilityStatement-NgTertiaryRequestorCapability.md) and [Nigeria Core Tertiary Referral Responder Capability](CapabilityStatement-NgTertiaryResponderCapability.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-diagnostic-report.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-diagnostic-report.csv), [Excel](StructureDefinition-ng-diagnostic-report.xlsx), [Schematron](StructureDefinition-ng-diagnostic-report.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-diagnostic-report",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-diagnostic-report",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.24"
  }],
  "version" : "0.0.0",
  "name" : "NgDiagnosticReport",
  "title" : "DiagnosticReport (IPS)",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-06-19T10:50:07-05:00",
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
  "description" : "This profile constrains the DiagnosticReport resource to represent diagnostic test and procedure reports in a patient summary.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "purpose" : "This profile constrains the DiagnosticReport resource to use the specific IPS profiles for observations and coded data types.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.status",
      "path" : "DiagnosticReport.status",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-diagnostics-report-status-vs"
      }
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/CodeableConcept-ips"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient",
        "http://hl7.org/fhir/StructureDefinition/Group"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.subject.reference",
      "path" : "DiagnosticReport.subject.reference",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.effective[x]",
      "path" : "DiagnosticReport.effective[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.effective[x]:effectiveDateTime",
      "path" : "DiagnosticReport.effective[x]",
      "sliceName" : "effectiveDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.performer",
      "path" : "DiagnosticReport.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner-role",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization",
        "http://hl7.org/fhir/StructureDefinition/CareTeam"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.specimen",
      "path" : "DiagnosticReport.specimen",
      "mustSupport" : false
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resolve()"
        }],
        "rules" : "open"
      },
      "short" : "Observation results included in the diagnostic report.",
      "definition" : "Observation results included in the diagnostic report."
    },
    {
      "id" : "DiagnosticReport.result:observation-results",
      "path" : "DiagnosticReport.result",
      "sliceName" : "observation-results",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-results-laboratory-pathology",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-results-radiology"]
      }],
      "mustSupport" : true
    }]
  }
}

```
