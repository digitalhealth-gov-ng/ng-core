# HIV Family Index Case Contacts Questionnaire - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Family Index Case Contacts Questionnaire**

## CodeSystem: HIV Family Index Case Contacts Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-family-index-case-contacts-questionnaire-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHivFamilyIndexCaseContactsQuestionnairesCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.51 | |

 
Proprietary Codes used in the Family Index Case Contacts Questionnaire. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-family-index-case-contacts-questionnaire-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-family-index-case-contacts-questionnaire-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.51"
  }],
  "version" : "0.0.0",
  "name" : "NgHivFamilyIndexCaseContactsQuestionnairesCS",
  "title" : "HIV Family Index Case Contacts Questionnaire",
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
  "description" : "Proprietary Codes used in the Family Index Case Contacts Questionnaire.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "Other-Reason-Not-Tested-for-HIV",
    "display" : "Other reason for not being tested for HIV"
  }]
}

```
