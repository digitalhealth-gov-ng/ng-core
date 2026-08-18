# NG HIV EAC Register Suspected Causes of Virologic Failure - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV EAC Register Suspected Causes of Virologic Failure**

## CodeSystem: NG HIV EAC Register Suspected Causes of Virologic Failure 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-eac-register-virologic-failure-cause-cs | *Version*:0.0.0 |
| Draft as of 2026-07-29 | *Computable Name*:NgHivEacRegisterVirologicFailureCauseCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.46 | |

 
Codes printed in the Enhanced Adherence Counselling Monitoring Register for recording the suspected cause or causes of virologic failure after EAC. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV EAC Register Suspected Causes of Virologic Failure](ValueSet-ng-hiv-eac-register-virologic-failure-cause-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-eac-register-virologic-failure-cause-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-eac-register-virologic-failure-cause-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.46"
  }],
  "version" : "0.0.0",
  "name" : "NgHivEacRegisterVirologicFailureCauseCS",
  "title" : "NG HIV EAC Register Suspected Causes of Virologic Failure",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-29",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Codes printed in the Enhanced Adherence Counselling Monitoring Register for\nrecording the suspected cause or causes of virologic failure after EAC.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "1a",
    "display" : "Missed doses",
    "definition" : "The client missed one or more ART doses."
  },
  {
    "code" : "1b",
    "display" : "Abnormal or irregular dosing frequency",
    "definition" : "The client took ART at an abnormal or irregular frequency."
  },
  {
    "code" : "2a",
    "display" : "Drug–drug interaction",
    "definition" : "A drug–drug interaction is suspected to have contributed to virologic failure."
  },
  {
    "code" : "2b",
    "display" : "Drug–herb interaction",
    "definition" : "A drug–herb interaction is suspected to have contributed to virologic failure."
  },
  {
    "code" : "2c",
    "display" : "Drug–substance interaction",
    "definition" : "A drug–substance interaction is suspected to have contributed to virologic failure."
  },
  {
    "code" : "3",
    "display" : "Other suspected cause",
    "definition" : "A suspected cause not represented by another register code; describe it separately."
  }]
}

```
