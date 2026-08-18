# NG HIV ART Register DSD Status Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV ART Register DSD Status Codes**

## CodeSystem: NG HIV ART Register DSD Status Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-register-dsd-status-cs | *Version*:0.0.0 |
| Draft as of 2026-07-28 | *Computable Name*:NgHivArtRegisterDsdStatusCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.23 | |

 
Facility- and community-based differentiated-service-delivery model codes printed in column A33 of the National ART Register. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV ART Register DSD Status](ValueSet-ng-hiv-art-register-dsd-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-art-register-dsd-status-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-register-dsd-status-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.23"
  }],
  "version" : "0.0.0",
  "name" : "NgHivArtRegisterDsdStatusCS",
  "title" : "NG HIV ART Register DSD Status Codes",
  "status" : "draft",
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
  "description" : "Facility- and community-based differentiated-service-delivery model codes printed in column A33 of the National ART Register.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 17,
  "concept" : [{
    "code" : "FBM1",
    "display" : "Fast-track"
  },
  {
    "code" : "FBM2",
    "display" : "Facility ART group: healthcare-worker led"
  },
  {
    "code" : "FBM3",
    "display" : "Facility ART group: support-group led"
  },
  {
    "code" : "FBM4",
    "display" : "Decentralisation: hub and spoke"
  },
  {
    "code" : "FBM5",
    "display" : "Child, teen or adolescent club: peer managed"
  },
  {
    "code" : "FBM6",
    "display" : "Mother–infant pair or mentor-mother led"
  },
  {
    "code" : "CBM1",
    "display" : "Community pharmacy ART refill"
  },
  {
    "code" : "CBM2",
    "display" : "Community ART refill group: healthcare-worker led"
  },
  {
    "code" : "CBM3",
    "display" : "Community ART refill group: PLHIV led"
  },
  {
    "code" : "CBM4",
    "display" : "Adolescent community ART or peer-led group"
  },
  {
    "code" : "CBM5",
    "display" : "Home delivery"
  },
  {
    "code" : "CBM6",
    "display" : "OSS or Community Service Coordination Centre"
  },
  {
    "code" : "CBM7",
    "display" : "Drop-in centre"
  },
  {
    "code" : "CBM8",
    "display" : "Courier service"
  },
  {
    "code" : "CBM9",
    "display" : "Closed setting"
  },
  {
    "code" : "ND",
    "display" : "Non-devolved"
  },
  {
    "code" : "NE",
    "display" : "Not eligible"
  }]
}

```
