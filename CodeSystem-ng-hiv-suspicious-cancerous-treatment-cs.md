# NG HIV-Suspicious Cancerous Treatment - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV-Suspicious Cancerous Treatment**

## CodeSystem: NG HIV-Suspicious Cancerous Treatment 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-suspicious-cancerous-treatment-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHivSuspiciousCancerousTreatmentCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.73 | |

 
A list of codes describing the suspicious Cancerous treatment 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV-Cervical Cancer Treatment Received](ValueSet-ng-hiv-cervical-cancer-treatment-received-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-suspicious-cancerous-treatment-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-suspicious-cancerous-treatment-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.73"
  }],
  "version" : "0.0.0",
  "name" : "NgHivSuspiciousCancerousTreatmentCS",
  "title" : "NG HIV-Suspicious Cancerous Treatment",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T06:18:50+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "A list of codes describing the suspicious Cancerous treatment",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "treated-at-facility",
    "display" : "Treated at the facility"
  },
  {
    "code" : "referred-to-another-facility",
    "display" : "Referred to another facility"
  },
  {
    "code" : "arrival-in-receiving-facility-confirmed",
    "display" : "Arrival in receiving facility confirmed"
  },
  {
    "code" : "feedback-received-by-referring-hf",
    "display" : "Feedback received by referring HF"
  }]
}

```
