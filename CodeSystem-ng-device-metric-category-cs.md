# NG DeviceMetric Category Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG DeviceMetric Category Codes**

## CodeSystem: NG DeviceMetric Category Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-device-metric-category-cs | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgDeviceMetricCategoryCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.12 | |

 
Local mirror of DeviceMetric.category. Consider using 'http://terminology.hl7.org/CodeSystem/metric-category' in production. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-device-metric-category-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-device-metric-category-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.12"
  }],
  "version" : "0.0.0",
  "name" : "NgDeviceMetricCategoryCS",
  "title" : "NG DeviceMetric Category Codes",
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
  "description" : "Local mirror of DeviceMetric.category. Consider using 'http://terminology.hl7.org/CodeSystem/metric-category' in production.",
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
  }]
}

```
