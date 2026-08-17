# Nigeria Alert Code System - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Alert Code System**

## CodeSystem: Nigeria Alert Code System 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-alert-code-cs | *Version*:0.0.0 |
| Active as of 2026-07-23 | *Computable Name*:NgAlertCodeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.3 | |

 
Common alert types used by Nigerian health information systems and represented using the Nigeria Alert Flag profile. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Nigeria Alert Code Value Set](ValueSet-ng-alert-code-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-alert-code-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-alert-code-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.3"
  }],
  "version" : "0.0.0",
  "name" : "NgAlertCodeCS",
  "title" : "Nigeria Alert Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-23",
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
  "description" : "Common alert types used by Nigerian health information systems and represented using the Nigeria Alert Flag profile.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "compositional" : false,
  "content" : "complete",
  "count" : 22,
  "concept" : [{
    "code" : "contraindication",
    "display" : "Contraindication",
    "definition" : "A clinical contraindication relevant to a planned intervention, medication, immunization, or procedure."
  },
  {
    "code" : "allergy-risk",
    "display" : "Allergy risk",
    "definition" : "A known or suspected allergy or intolerance risk requiring attention."
  },
  {
    "code" : "medication-interaction",
    "display" : "Medication interaction",
    "definition" : "A possible clinically significant interaction involving one or more medications."
  },
  {
    "code" : "duplicate-therapy",
    "display" : "Duplicate therapy",
    "definition" : "Potentially duplicative medication or treatment has been identified."
  },
  {
    "code" : "missed-dose",
    "display" : "Missed dose",
    "definition" : "A scheduled medication or immunization dose was not administered as expected."
  },
  {
    "code" : "dose-due",
    "display" : "Dose due",
    "definition" : "A scheduled medication or immunization dose is currently due."
  },
  {
    "code" : "dose-overdue",
    "display" : "Dose overdue",
    "definition" : "A scheduled medication or immunization dose is overdue."
  },
  {
    "code" : "abnormal-result",
    "display" : "Abnormal result",
    "definition" : "A clinical or diagnostic result is outside its expected or acceptable range."
  },
  {
    "code" : "critical-result",
    "display" : "Critical result",
    "definition" : "A critical clinical or diagnostic result requires urgent review or action."
  },
  {
    "code" : "pending-result",
    "display" : "Pending result",
    "definition" : "A clinically relevant diagnostic result is still pending."
  },
  {
    "code" : "infection-risk",
    "display" : "Infection risk",
    "definition" : "An infection, exposure, or transmission risk requires attention or precautions."
  },
  {
    "code" : "isolation-required",
    "display" : "Isolation required",
    "definition" : "The subject requires isolation or specific infection-prevention precautions."
  },
  {
    "code" : "safeguarding-concern",
    "display" : "Safeguarding concern",
    "definition" : "A safeguarding concern requires review or protective action."
  },
  {
    "code" : "possible-duplicate-record",
    "display" : "Possible duplicate record",
    "definition" : "The subject may have more than one health record."
  },
  {
    "code" : "identity-mismatch",
    "display" : "Identity mismatch",
    "definition" : "Demographic, biometric, or identifier information may not match the intended subject."
  },
  {
    "code" : "data-quality-issue",
    "display" : "Data quality issue",
    "definition" : "A data-quality, completeness, consistency, or record-integrity issue requires review."
  },
  {
    "code" : "consent-restriction",
    "display" : "Consent restriction",
    "definition" : "A consent directive limits access, disclosure, or use of the subject's information."
  },
  {
    "code" : "follow-up-required",
    "display" : "Follow-up required",
    "definition" : "The subject requires clinical, public-health, or administrative follow-up."
  },
  {
    "code" : "referral-required",
    "display" : "Referral required",
    "definition" : "Referral to another provider, facility, service, or level of care is required."
  },
  {
    "code" : "reporting-required",
    "display" : "Reporting required",
    "definition" : "A statutory, programmatic, or public-health report or notification must be submitted."
  },
  {
    "code" : "urgent-review",
    "display" : "Urgent review",
    "definition" : "The subject's information or clinical status requires urgent review."
  },
  {
    "code" : "other",
    "display" : "Other",
    "definition" : "An alert type not represented by another code in this code system."
  }]
}

```
