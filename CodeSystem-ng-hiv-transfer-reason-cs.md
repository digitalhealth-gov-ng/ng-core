# NG HIV Care and Treatment Transfer Reasons - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Care and Treatment Transfer Reasons**

## CodeSystem: NG HIV Care and Treatment Transfer Reasons 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-transfer-reason-cs | *Version*:0.0.0 |
| Draft as of 2026-07-28 | *Computable Name*:NgHivTransferReasonCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.84 | |

 
Reasons for transferring a client between HIV treatment sites, transcribed from the November 2025 HIV Care and Treatment Transfer Form. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Care and Treatment Transfer Reasons](ValueSet-ng-hiv-transfer-reason-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-transfer-reason-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-transfer-reason-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.84"
  }],
  "version" : "0.0.0",
  "name" : "NgHivTransferReasonCS",
  "title" : "NG HIV Care and Treatment Transfer Reasons",
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
  "description" : "Reasons for transferring a client between HIV treatment sites, transcribed from the November 2025 HIV Care and Treatment Transfer Form.",
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
    "code" : "relocating",
    "display" : "Relocating",
    "definition" : "The client is relocating from the area served by the transferring facility."
  },
  {
    "code" : "closer-new-facility",
    "display" : "Closeness to new facility",
    "definition" : "The receiving facility is more conveniently located for the client."
  },
  {
    "code" : "self-transfer",
    "display" : "Self transfer",
    "definition" : "The client independently requested or initiated transfer to another treatment site."
  },
  {
    "code" : "stigma",
    "display" : "Stigma",
    "definition" : "The client is transferring because of experienced or anticipated HIV-related stigma."
  },
  {
    "code" : "pmtct",
    "display" : "PMTCT",
    "definition" : "The client is transferring for prevention of mother-to-child transmission services."
  }]
}

```
