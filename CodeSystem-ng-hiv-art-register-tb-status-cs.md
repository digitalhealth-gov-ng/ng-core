# NG HIV ART Register TB Status Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV ART Register TB Status Codes**

## CodeSystem: NG HIV ART Register TB Status Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-register-tb-status-cs | *Version*:0.0.0 |
| Draft as of 2026-07-28 | *Computable Name*:NgHivArtRegisterTbStatusCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.26 | |

 
Combined TB screening, diagnostic and treatment status codes printed on column A20 of the National ART Register. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV ART Register TB Status](ValueSet-ng-hiv-art-register-tb-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-art-register-tb-status-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-art-register-tb-status-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.26"
  }],
  "version" : "0.0.0",
  "name" : "NgHivArtRegisterTbStatusCS",
  "title" : "NG HIV ART Register TB Status Codes",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-28",
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
  "description" : "Combined TB screening, diagnostic and treatment status codes printed on column A20 of the National ART Register.",
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
    "code" : "1",
    "display" : "No signs or symptoms of TB"
  },
  {
    "code" : "2",
    "display" : "Presumptive TB"
  },
  {
    "code" : "3",
    "display" : "Currently on TB preventive therapy"
  },
  {
    "code" : "4",
    "display" : "Confirmed active TB"
  },
  {
    "code" : "4a",
    "display" : "Confirmed active TB by GeneXpert"
  },
  {
    "code" : "4b",
    "display" : "Confirmed active TB by chest X-ray"
  },
  {
    "code" : "4c",
    "display" : "Confirmed active TB by LF-LAM"
  },
  {
    "code" : "5",
    "display" : "Currently on TB treatment"
  }]
}

```
