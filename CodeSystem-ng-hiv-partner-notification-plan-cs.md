# HIV Partner Notification Plan CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Partner Notification Plan CodeSystem**

## CodeSystem: HIV Partner Notification Plan CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-partner-notification-plan-cs | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgHivPartnerNotificationPlanCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.58 | |

 
Codes used for indicating the plan for notifying the partner regarding the index case's HIV status. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NgHivPartnerNotificationPlanVS](ValueSet-ng-hiv-partner-notification-plan-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-partner-notification-plan-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-partner-notification-plan-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.58"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPartnerNotificationPlanCS",
  "title" : "HIV Partner Notification Plan CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-12T13:22:49+01:00",
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
  "description" : "Codes used for indicating the plan for notifying the partner regarding the index case's HIV status.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "No-Notification-IPV+",
    "display" : "No Notification (IPV+)"
  },
  {
    "code" : "Client-Referral",
    "display" : "Client Referral"
  },
  {
    "code" : "Provider-Referral",
    "display" : "Provider Referral"
  },
  {
    "code" : "Dual-Referral",
    "display" : "Dual Referral"
  },
  {
    "code" : "Contact-Referral",
    "display" : "Contact Referral"
  }]
}

```
