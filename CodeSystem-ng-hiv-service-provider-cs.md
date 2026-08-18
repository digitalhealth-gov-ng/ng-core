# HIV Service Providers CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Service Providers CodeSystem**

## CodeSystem: HIV Service Providers CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-service-provider-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHivServiceProviderTypeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.71 | |

 
Code used for representing the classification of organizations providing health services. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Local Concepts](ValueSet-ng-hiv-local-concepts.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-service-provider-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-service-provider-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.71"
  }],
  "version" : "0.0.0",
  "name" : "NgHivServiceProviderTypeCS",
  "title" : "HIV Service Providers CodeSystem",
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
  "description" : "Code used for representing the classification of organizations providing health services.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "Health-Center",
    "display" : "Health Center"
  },
  {
    "code" : "Public-Hospital",
    "display" : "Public hospital"
  },
  {
    "code" : "Private-Hospital",
    "display" : "Private hospital"
  },
  {
    "code" : "NBO-FBO-Hospital",
    "display" : "NBO/FBO hospital"
  },
  {
    "code" : "Private-Clinic",
    "display" : "Private clinic"
  },
  {
    "code" : "Self-referred",
    "display" : "Self-referred"
  },
  {
    "code" : "Community-Referred",
    "display" : "Community referred"
  },
  {
    "code" : "Other",
    "display" : "Other (Specify)"
  }]
}

```
