# NG HIV Enhanced Adherence Counselling Form Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Enhanced Adherence Counselling Form Codes**

## CodeSystem: NG HIV Enhanced Adherence Counselling Form Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-eac-form-cs | *Version*:0.0.0 |
| Active as of 2026-07-28 | *Computable Name*:NgHivEacFormCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.44 | |

 
Local coded answers transcribed from the Nigeria Enhanced Adherence Counselling Form for adherence assessment, adherence barriers, service interventions and intervention tools. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV EAC Adherence](ValueSet-ng-hiv-eac-adherence-vs.md)
* [NG HIV EAC Adherence Barriers](ValueSet-ng-hiv-eac-barriers-vs.md)
* [NG HIV EAC Intervention Services](ValueSet-ng-hiv-eac-intervention-services-vs.md)
* [NG HIV EAC Intervention Tools](ValueSet-ng-hiv-eac-intervention-tools-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-eac-form-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-eac-form-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.44"
  }],
  "version" : "0.0.0",
  "name" : "NgHivEacFormCS",
  "title" : "NG HIV Enhanced Adherence Counselling Form Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-28",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Local coded answers transcribed from the Nigeria Enhanced Adherence\nCounselling Form for adherence assessment, adherence barriers, service\ninterventions and intervention tools.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 38,
  "concept" : [{
    "code" : "adherence-good",
    "display" : "Good",
    "definition" : "The client demonstrates good adherence to the prescribed ART regimen."
  },
  {
    "code" : "adherence-fair",
    "display" : "Fair",
    "definition" : "The client demonstrates fair adherence to the prescribed ART regimen."
  },
  {
    "code" : "adherence-poor",
    "display" : "Poor",
    "definition" : "The client demonstrates poor adherence to the prescribed ART regimen."
  },
  {
    "code" : "barrier-forgot",
    "display" : "Forgot",
    "definition" : "The client forgot to take one or more prescribed ART doses."
  },
  {
    "code" : "barrier-knowledge-beliefs",
    "display" : "Knowledge or beliefs",
    "definition" : "Knowledge, understanding or beliefs affect the client's adherence."
  },
  {
    "code" : "barrier-side-effects",
    "display" : "Side effects",
    "definition" : "Actual or anticipated medication side effects affect adherence."
  },
  {
    "code" : "barrier-physical-illness",
    "display" : "Physical illness",
    "definition" : "Physical illness affects the client's ability or willingness to take ART."
  },
  {
    "code" : "barrier-substance-use",
    "display" : "Substance use",
    "definition" : "Alcohol or other substance use affects adherence."
  },
  {
    "code" : "barrier-depression",
    "display" : "Depression",
    "definition" : "Depression or depressive symptoms affect adherence."
  },
  {
    "code" : "barrier-pill-burden",
    "display" : "Pill burden",
    "definition" : "The number, size or frequency of medicines affects adherence."
  },
  {
    "code" : "barrier-lost-ran-out-of-drugs",
    "display" : "Lost or ran out of drugs",
    "definition" : "The client lost the medicines or exhausted the supply before the next refill."
  },
  {
    "code" : "barrier-transport",
    "display" : "Transport",
    "definition" : "Transport availability or cost affects access to ART services or medicines."
  },
  {
    "code" : "barrier-child-refusing",
    "display" : "Child refusing",
    "definition" : "A child refuses to take the prescribed ART medicines."
  },
  {
    "code" : "barrier-scheduling",
    "display" : "Scheduling",
    "definition" : "The client's daily schedule or medication schedule affects adherence."
  },
  {
    "code" : "barrier-fear-of-disclosure",
    "display" : "Fear of disclosure",
    "definition" : "Fear that the client's HIV status may be disclosed affects adherence."
  },
  {
    "code" : "barrier-family-partner",
    "display" : "Family or partner",
    "definition" : "A family or partner-related issue affects adherence."
  },
  {
    "code" : "barrier-food-insecurity",
    "display" : "Food insecurity",
    "definition" : "Lack of reliable access to adequate food affects adherence."
  },
  {
    "code" : "barrier-drug-stock-out",
    "display" : "Drug stock-out",
    "definition" : "The medicine was unavailable because of a facility or supply-chain stock-out."
  },
  {
    "code" : "barrier-long-waiting-time",
    "display" : "Long waiting time",
    "definition" : "Long waiting time at the service-delivery point affects adherence."
  },
  {
    "code" : "barrier-stigma",
    "display" : "Stigma",
    "definition" : "Experienced or anticipated HIV-related stigma affects adherence."
  },
  {
    "code" : "barrier-other",
    "display" : "Other barrier",
    "definition" : "An adherence barrier not represented by another code; specify separately."
  },
  {
    "code" : "service-education",
    "display" : "Education",
    "definition" : "Education was provided to address adherence needs."
  },
  {
    "code" : "service-individual-counselling",
    "display" : "Individual counselling",
    "definition" : "Individual adherence counselling was provided."
  },
  {
    "code" : "service-group-counselling",
    "display" : "Group counselling",
    "definition" : "Group adherence counselling was provided."
  },
  {
    "code" : "service-peer-support",
    "display" : "Peer support",
    "definition" : "Peer-based adherence support was provided."
  },
  {
    "code" : "service-treatment-buddy",
    "display" : "Treatment buddy",
    "definition" : "A treatment buddy was established or supported."
  },
  {
    "code" : "service-extended-drug-pick-up",
    "display" : "Extended drug pick-up",
    "definition" : "An extended medicine pick-up arrangement was provided."
  },
  {
    "code" : "service-community-art-group",
    "display" : "Community ART group",
    "definition" : "The client was linked to or supported through a community ART group."
  },
  {
    "code" : "service-directly-observed-therapy",
    "display" : "Directly observed therapy",
    "definition" : "Direct observation of treatment was provided or arranged."
  },
  {
    "code" : "service-other",
    "display" : "Other service intervention",
    "definition" : "A service intervention not represented by another code; specify separately."
  },
  {
    "code" : "tool-pill-box",
    "display" : "Pill box",
    "definition" : "A pill box was provided or recommended as an adherence aid."
  },
  {
    "code" : "tool-calendar",
    "display" : "Calendar",
    "definition" : "A calendar was provided or recommended as an adherence aid."
  },
  {
    "code" : "tool-incentive-calendar-paediatric",
    "display" : "Incentive calendar (paediatric)",
    "definition" : "A paediatric incentive calendar was provided or recommended."
  },
  {
    "code" : "tool-arv-swallowing-instruction",
    "display" : "ARV swallowing instruction",
    "definition" : "Instruction on swallowing or administering ARV medicines was provided."
  },
  {
    "code" : "tool-written-instructions",
    "display" : "Written instructions",
    "definition" : "Written medication or adherence instructions were provided."
  },
  {
    "code" : "tool-phone-call-sms",
    "display" : "Phone calls or SMS",
    "definition" : "Phone calls or SMS messages were used or planned as adherence reminders."
  },
  {
    "code" : "tool-alarms",
    "display" : "Alarms",
    "definition" : "An alarm or electronic reminder was used or recommended."
  },
  {
    "code" : "tool-other",
    "display" : "Other intervention tool",
    "definition" : "An adherence tool not represented by another code; specify separately."
  }]
}

```
