# NG Appointment - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Appointment**

## Resource Profile: NG Appointment 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-appointment | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgAppointment |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.11 | |

 
Appointment profile for Nigeria Core (e.g., immunization, ePharmacy counseling, referrals). 

**Usages:**

* Use this Profile: [Bundle NG Immunization SMART Scheduler](StructureDefinition-ng-imm-smart-scheduler-bundle.md)
* Examples for this Profile: [Appointment/NgAppointment-001](Appointment-NgAppointment-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-appointment.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-appointment.csv), [Excel](StructureDefinition-ng-appointment.xlsx), [Schematron](StructureDefinition-ng-appointment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-appointment",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-appointment",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.11"
  }],
  "version" : "0.0.0",
  "name" : "NgAppointment",
  "title" : "NG Appointment",
  "status" : "active",
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Appointment profile for Nigeria Core (e.g., immunization, ePharmacy counseling, referrals).",
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
    "identity" : "ical",
    "uri" : "http://ietf.org/rfc/2445",
    "name" : "iCalendar"
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
  "type" : "Appointment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Appointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Appointment",
      "path" : "Appointment"
    },
    {
      "id" : "Appointment.modifierExtension",
      "path" : "Appointment.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Appointment.status",
      "path" : "Appointment.status",
      "short" : "proposed | pending | booked | arrived | fulfilled | cancelled | noshow | checked-in | waitlist",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.cancelationReason",
      "path" : "Appointment.cancelationReason",
      "short" : "pat | prov | maint | other - see full options"
    },
    {
      "id" : "Appointment.description",
      "path" : "Appointment.description",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.created",
      "path" : "Appointment.created",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant",
      "path" : "Appointment.participant",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant.modifierExtension",
      "path" : "Appointment.participant.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Appointment.participant.type",
      "path" : "Appointment.participant.type",
      "max" : "0"
    },
    {
      "id" : "Appointment.participant.actor",
      "path" : "Appointment.participant.actor",
      "short" : "Who is involved (patient, clinician, facility, etc.)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner-role"]
      }]
    },
    {
      "id" : "Appointment.participant.required",
      "path" : "Appointment.participant.required",
      "max" : "0"
    },
    {
      "id" : "Appointment.requestedPeriod",
      "path" : "Appointment.requestedPeriod",
      "mustSupport" : true
    }]
  }
}

```
