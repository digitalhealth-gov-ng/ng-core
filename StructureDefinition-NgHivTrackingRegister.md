# NG HIV Tracking Register - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Tracking Register**

## Logical Model: NG HIV Tracking Register 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgHivTrackingRegister | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgHivTrackingRegister |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.7 | |

 
Logical model for the Nigeria HIV Tracking Register. One instance represents one facility monthly tracking page and contains repeatable client entries for current ART clients who missed a scheduled clinic appointment. The printed register instructs facilities to enter eligible clients within 24 hours of default. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-NgHivTrackingRegister.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NgHivTrackingRegister.csv), [Excel](StructureDefinition-NgHivTrackingRegister.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NgHivTrackingRegister",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgHivTrackingRegister",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.7"
  }],
  "version" : "0.0.0",
  "name" : "NgHivTrackingRegister",
  "title" : "NG HIV Tracking Register",
  "status" : "draft",
  "date" : "2026-08-17T16:10:29+01:00",
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
  "description" : "Logical model for the Nigeria HIV Tracking Register. One instance represents\none facility monthly tracking page and contains repeatable client entries for\ncurrent ART clients who missed a scheduled clinic appointment. The printed\nregister instructs facilities to enter eligible clients within 24 hours of\ndefault.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ng-hiv-tracking-register-columns",
    "uri" : "urn:ng:hiv-tracking-register:2025",
    "name" : "NG HIV Tracking Register Column Mapping",
    "comment" : "Maps logical-model elements to the printed T1–T32 HIV Tracking Register fields."
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgHivTrackingRegister",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "NgHivTrackingRegister",
      "path" : "NgHivTrackingRegister",
      "short" : "NG HIV Tracking Register",
      "definition" : "Logical model for the Nigeria HIV Tracking Register. One instance represents\none facility monthly tracking page and contains repeatable client entries for\ncurrent ART clients who missed a scheduled clinic appointment. The printed\nregister instructs facilities to enter eligible clients within 24 hours of\ndefault."
    },
    {
      "id" : "NgHivTrackingRegister.identifier",
      "path" : "NgHivTrackingRegister.identifier",
      "short" : "Register identifier",
      "definition" : "Identifier assigned to the monthly HIV Tracking Register page or its electronic equivalent.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.facility",
      "path" : "NgHivTrackingRegister.facility",
      "short" : "Facility reference",
      "definition" : "Reference to the facility maintaining the tracking register, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "NgHivTrackingRegister.state",
      "path" : "NgHivTrackingRegister.state",
      "short" : "T1 State",
      "definition" : "State where the facility is located.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T1"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.lga",
      "path" : "NgHivTrackingRegister.lga",
      "short" : "T2 LGA",
      "definition" : "Local Government Area where the facility is located.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T2"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.facilityName",
      "path" : "NgHivTrackingRegister.facilityName",
      "short" : "T3 Facility name",
      "definition" : "Official name of the facility maintaining the register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T3"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.reportingPeriod",
      "path" : "NgHivTrackingRegister.reportingPeriod",
      "short" : "T4–T5 Month and year",
      "definition" : "Month and year in which clients missed their appointments. Each month begins on a new register page.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T4 Month / T5 Year"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry",
      "path" : "NgHivTrackingRegister.entry",
      "short" : "Tracking-register entry",
      "definition" : "One patient-level row in the monthly HIV Tracking Register.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.subject",
      "path" : "NgHivTrackingRegister.entry.subject",
      "short" : "Patient reference",
      "definition" : "Reference to the corresponding Nigeria Core Patient resource, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.serialNumber",
      "path" : "NgHivTrackingRegister.entry.serialNumber",
      "short" : "T6 Serial number",
      "definition" : "Monthly serial number beginning from one for each new register page.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T6"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.hospitalNumber",
      "path" : "NgHivTrackingRegister.entry.hospitalNumber",
      "short" : "T7 Hospital number",
      "definition" : "Facility-specific hospital number.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T7 Hospital number before slash"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.uniqueId",
      "path" : "NgHivTrackingRegister.entry.uniqueId",
      "short" : "T7 Unique ID",
      "definition" : "Client unique ART program identifier. The printed register records hospital number and unique ID separated by a forward slash.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T7 Unique ART ID after slash"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.clientName",
      "path" : "NgHivTrackingRegister.entry.clientName",
      "short" : "T8 Client name",
      "definition" : "Client full name, including aliases documented in the clinical folder.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T8"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.sex",
      "path" : "NgHivTrackingRegister.entry.sex",
      "short" : "T9 Sex",
      "definition" : "Client sex represented by the printed male and female boxes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-gender-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T9 Male / Female"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.ageYears",
      "path" : "NgHivTrackingRegister.entry.ageYears",
      "short" : "T10 Age",
      "definition" : "Age in completed years at the time of tracking-register entry.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T10"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.address",
      "path" : "NgHivTrackingRegister.entry.address",
      "short" : "T11 Descriptive address",
      "definition" : "Descriptive address sufficient to support tracing when necessary.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T11"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.phoneNumber",
      "path" : "NgHivTrackingRegister.entry.phoneNumber",
      "short" : "T12 Phone number",
      "definition" : "One or more client telephone numbers documented in the folder.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T12"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.artStartDate",
      "path" : "NgHivTrackingRegister.entry.artStartDate",
      "short" : "T13 ART start date",
      "definition" : "Date the client commenced antiretroviral therapy.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T13"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.currentArtRegimen",
      "path" : "NgHivTrackingRegister.entry.currentArtRegimen",
      "short" : "T14 Current ART regimen",
      "definition" : "Current ART regimen using the adult or paediatric regimen code printed in the register legend.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-art-register-regimen-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T14 regimen code"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.currentArtRegimenText",
      "path" : "NgHivTrackingRegister.entry.currentArtRegimenText",
      "short" : "T14 Current ART regimen source text",
      "definition" : "Regimen description retained when the source does not contain a valid register code.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T14 uncoded regimen text"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.pregnant",
      "path" : "NgHivTrackingRegister.entry.pregnant",
      "short" : "T14 Pregnancy modifier",
      "definition" : "True when P was appended to the ART regimen code.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T14 suffix P"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.breastfeeding",
      "path" : "NgHivTrackingRegister.entry.breastfeeding",
      "short" : "T14 Breastfeeding modifier",
      "definition" : "True when BF was appended to the ART regimen code.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T14 suffix BF"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.dsdStatus",
      "path" : "NgHivTrackingRegister.entry.dsdStatus",
      "short" : "T15 DSD status",
      "definition" : "Devolved, non-devolved or not eligible.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-tracking-dsd-status-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T15 value before slash"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.dsdModel",
      "path" : "NgHivTrackingRegister.entry.dsdModel",
      "short" : "T15 DSD model",
      "definition" : "Facility-based or community-based model, recorded with the DSD status and separated by a slash.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-tracking-dsd-model-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T15 value after slash"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.reasonForTracking",
      "path" : "NgHivTrackingRegister.entry.reasonForTracking",
      "short" : "T16 Reason for tracking",
      "definition" : "Reason the client was entered into the tracking register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-tracking-reason-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T16"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.reasonForTrackingOther",
      "path" : "NgHivTrackingRegister.entry.reasonForTrackingOther",
      "short" : "T16 Other tracking reason",
      "definition" : "Narrative description when T16 code 11e is used.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T16 code 11e narrative"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.lastActualContactDate",
      "path" : "NgHivTrackingRegister.entry.lastActualContactDate",
      "short" : "T17 Date of last actual contact or appointment",
      "definition" : "Date the client last attended or had actual contact with the facility.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T17"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.missedAppointmentDate",
      "path" : "NgHivTrackingRegister.entry.missedAppointmentDate",
      "short" : "T18 Date of missed appointment",
      "definition" : "Date the client missed the scheduled follow-up appointment.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T18"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.trackingAttempt",
      "path" : "NgHivTrackingRegister.entry.trackingAttempt",
      "short" : "T19–T23 Tracking attempt",
      "definition" : "A tracking attempt made by phone call or home visit. Each stage should occur no more than once per entry.",
      "min" : 0,
      "max" : "5",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.trackingAttempt.stage",
      "path" : "NgHivTrackingRegister.entry.trackingAttempt.stage",
      "short" : "Tracking-attempt stage",
      "definition" : "First, second, third, fourth or final attempt at the end of the tracking period.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-tracking-attempt-stage-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T19 attempt 1 / T20 attempt 2 / T21 attempt 3 / T22 attempt 4 / T23 final attempt"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.trackingAttempt.mode",
      "path" : "NgHivTrackingRegister.entry.trackingAttempt.mode",
      "short" : "Tracking mode",
      "definition" : "Mode used for the attempt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-tracking-mode-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T19–T23 Tracking mode"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.trackingAttempt.personContacted",
      "path" : "NgHivTrackingRegister.entry.trackingAttempt.personContacted",
      "short" : "Person contacted",
      "definition" : "Guardian, client, treatment partner or not contacted.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-tracking-person-contacted-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T19–T23 Person contacted"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.trackingAttempt.reasonForDefaulting",
      "path" : "NgHivTrackingRegister.entry.trackingAttempt.reasonForDefaulting",
      "short" : "Reason for defaulting",
      "definition" : "Reason the client missed the appointment when successful contact established the cause.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-tracking-default-reason-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T19–T23 Reason for defaulting"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.trackingAttempt.reasonForDefaultingOther",
      "path" : "NgHivTrackingRegister.entry.trackingAttempt.reasonForDefaultingOther",
      "short" : "Other reason for defaulting",
      "definition" : "Narrative description when reason-for-defaulting code 11 is selected.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T19–T23 code 11 narrative"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.careDiscontinued",
      "path" : "NgHivTrackingRegister.entry.careDiscontinued",
      "short" : "T24 Care in facility discontinued",
      "definition" : "True when the client no longer receives HIV care at the facility.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T24 Yes / No"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.discontinuationDate",
      "path" : "NgHivTrackingRegister.entry.discontinuationDate",
      "short" : "T25 Date of discontinuation",
      "definition" : "Date care at the facility was discontinued when T24 is true.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T25"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.discontinuationReason",
      "path" : "NgHivTrackingRegister.entry.discontinuationReason",
      "short" : "T26 Reason for discontinuation",
      "definition" : "Major reason the client stopped receiving care at the facility.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-tracking-discontinuation-reason-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T26"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.nextAgreedAppointmentDate",
      "path" : "NgHivTrackingRegister.entry.nextAgreedAppointmentDate",
      "short" : "T27 Next agreed clinic appointment date",
      "definition" : "Date the contacted client agreed to return. The SOP states that this should be before 28 days after the missed appointment.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T27"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.returnDate",
      "path" : "NgHivTrackingRegister.entry.returnDate",
      "short" : "T28 Date client returned",
      "definition" : "Date the client returned to the facility for any health service.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T28"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.entry.referredService",
      "path" : "NgHivTrackingRegister.entry.referredService",
      "short" : "T29 Service referred for",
      "definition" : "One or more services to which the returning client was referred.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T29"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.totalClientsThisPage",
      "path" : "NgHivTrackingRegister.totalClientsThisPage",
      "short" : "Total this page",
      "definition" : "Total number of client rows on the page. Other printed column totals should be derived from entry data.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "TOTAL THIS PAGE"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.completedByName",
      "path" : "NgHivTrackingRegister.completedByName",
      "short" : "T30 Completed by",
      "definition" : "Name of the contact-tracking focal person or representative who completed the register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T30"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.completedByDesignation",
      "path" : "NgHivTrackingRegister.completedByDesignation",
      "short" : "T31 Designation",
      "definition" : "Designation of the person who completed the register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T31"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.completedDate",
      "path" : "NgHivTrackingRegister.completedDate",
      "short" : "T32 Completion date",
      "definition" : "Date the register page was completed.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T32 date"
      }]
    },
    {
      "id" : "NgHivTrackingRegister.completedSignature",
      "path" : "NgHivTrackingRegister.completedSignature",
      "short" : "T32 Signature or signature reference",
      "definition" : "Signature or an electronic signature reference for the person completing the register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-tracking-register-columns",
        "map" : "T32 signature"
      }]
    }]
  }
}

```
