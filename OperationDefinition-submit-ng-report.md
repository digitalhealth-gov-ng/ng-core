# Submit Nigeria Core Measure Report - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Submit Nigeria Core Measure Report**

## OperationDefinition: Submit Nigeria Core Measure Report 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/OperationDefinition/submit-ng-report | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgSubmitReport |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.33.3 | |

 
Submits a Nigeria Core MeasureReport for validation and processing by the receiving reporting service. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "submit-ng-report",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/OperationDefinition/submit-ng-report",
  "version" : "0.0.0",
  "name" : "NgSubmitReport",
  "title" : "Submit Nigeria Core Measure Report",
  "status" : "draft",
  "kind" : "operation",
  "experimental" : false,
  "date" : "2026-08-17T13:27:53+01:00",
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
  "description" : "Submits a Nigeria Core MeasureReport for validation and processing by the\nreceiving reporting service.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "affectsState" : true,
  "code" : "submit-ng-report",
  "resource" : ["Measure"],
  "system" : false,
  "type" : true,
  "instance" : false
}

```
