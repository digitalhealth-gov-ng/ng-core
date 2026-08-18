# NG CarePlan Activity Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG CarePlan Activity Codes**

## CodeSystem: NG CarePlan Activity Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-careplan-activity-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgCareplanActivityCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.6 | |

 
Activities for CarePlan.activity.detail.code. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG CarePlan Activity VS](ValueSet-ng-careplan-activity-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-careplan-activity-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-careplan-activity-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.6"
  }],
  "version" : "0.0.0",
  "name" : "NgCareplanActivityCS",
  "title" : "NG CarePlan Activity Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Activities for CarePlan.activity.detail.code.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "anc-counsel",
    "display" : "ANC Counseling",
    "definition" : "Antenatal education/counseling."
  },
  {
    "code" : "bp-monitor",
    "display" : "BP Monitoring",
    "definition" : "Blood pressure monitoring at home."
  },
  {
    "code" : "immunize",
    "display" : "Immunization Administration",
    "definition" : "Administer scheduled vaccine."
  },
  {
    "code" : "defaulter-trace",
    "display" : "Defaulter Tracing",
    "definition" : "Outreach to missed immunization clients."
  },
  {
    "code" : "rx-counsel",
    "display" : "Medication Counseling",
    "definition" : "Explain regimen and side effects."
  },
  {
    "code" : "med-dispense",
    "display" : "Medication Dispense",
    "definition" : "Dispense prescribed medication."
  },
  {
    "code" : "referral-followup",
    "display" : "Referral Follow-up",
    "definition" : "Confirm referral attended."
  },
  {
    "code" : "device-setup",
    "display" : "Device Setup",
    "definition" : "Configure device and train patient."
  },
  {
    "code" : "device-check",
    "display" : "Device Check/Calibration",
    "definition" : "Validate device performance."
  },
  {
    "code" : "claim-submit",
    "display" : "Claim Submission",
    "definition" : "Submit claim to payer."
  },
  {
    "code" : "claim-reconcile",
    "display" : "Claim Reconciliation",
    "definition" : "Match payments to claims."
  }]
}

```
