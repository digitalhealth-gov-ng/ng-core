# HIV Index Case Sex Partner Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Index Case Sex Partner Questionnaire**

## CodeSystem: HIV Index Case Sex Partner Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-index-case-partner-questionnaire-cs | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgHivIndexCasePartnerQuestionnaireCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.53 | |

 
Proprietary Codes used in the Index Case Partner Questionnaire. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NgHivPartnerCaseClosureStatusVS](ValueSet-ng-hiv-partner-case-closure-status-vs.md)
* [NgHivReasonPartnerNotContactedVS](ValueSet-ng-hiv-reason-partner-not-contacted-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-index-case-partner-questionnaire-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-index-case-partner-questionnaire-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.53"
  }],
  "version" : "0.0.0",
  "name" : "NgHivIndexCasePartnerQuestionnaireCS",
  "title" : "HIV Index Case Sex Partner Questionnaire",
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
  "description" : "Proprietary Codes used in the Index Case Partner Questionnaire.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 14,
  "concept" : [{
    "code" : "Other-Reason-Partner-Not-Notified",
    "display" : "Other Reason Partner Not Notified"
  },
  {
    "code" : "Date-Notification-Offered",
    "display" : "Date Notification Offered"
  },
  {
    "code" : "Date-Partner-Contacted",
    "display" : "Date Partner Contacted"
  },
  {
    "code" : "Reason-Partner-Not-Contacted",
    "display" : "Reason Partner Not Contacted"
  },
  {
    "code" : "Partner-Unreachable",
    "display" : "Unable to Locate the Partner"
  },
  {
    "code" : "Other-Reason-Partner-Not-Contacted",
    "display" : "Other Reason Partner Not Contacted"
  },
  {
    "code" : "Linked-to-Partner-Services",
    "display" : "Linked to Partner Services"
  },
  {
    "code" : "Reason-Not-Linked-to-Partner-Services",
    "display" : "Reason Not Linked to Partner Services"
  },
  {
    "code" : "Other-Reason-Not-Linked-to-Partner-Services",
    "display" : "Other Reason Not Linked to Partner Services"
  },
  {
    "code" : "Partner-Case-Closure-Status",
    "display" : "Partner Case Closure Status"
  },
  {
    "code" : "Other-Reason-Partner-Case-Closure",
    "display" : "Other Reason Partner Case Closure"
  },
  {
    "code" : "Successful-Intervention",
    "display" : "Successful Intervention"
  },
  {
    "code" : "Intervention-Completed",
    "display" : "Intervention Completed"
  },
  {
    "code" : "Intervention-Partially-Completed",
    "display" : "Intervention Partially Completed"
  }]
}

```
