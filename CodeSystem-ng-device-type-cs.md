# NG DeviceType Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG DeviceType Codes**

## CodeSystem: NG DeviceType Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-device-type-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgDevicetypeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.13 | |

 
Local mirror of Device Type. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-device-type-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-device-type-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.13"
  }],
  "version" : "0.0.0",
  "name" : "NgDevicetypeCS",
  "title" : "NG DeviceType Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T07:55:48+01:00",
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
  "description" : "Local mirror of Device Type.",
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
    "code" : "measurement",
    "display" : "Measurement",
    "definition" : "Metric represents a measured value from a device."
  },
  {
    "code" : "setting",
    "display" : "Setting",
    "definition" : "Metric represents a device setting that affects behavior."
  },
  {
    "code" : "calculation",
    "display" : "Calculation",
    "definition" : "Metric represents a calculated/derived value."
  },
  {
    "code" : "unspecified",
    "display" : "Unspecified",
    "definition" : "Metric category is not specified."
  },
  {
    "code" : "apple",
    "display" : "Apple Whatch"
  },
  {
    "code" : "chemistryA",
    "display" : "Chemistry Analyzer"
  }]
}

```
