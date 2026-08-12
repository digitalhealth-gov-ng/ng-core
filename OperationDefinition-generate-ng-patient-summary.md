# Generate Nigeria Core Patient Summary - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Generate Nigeria Core Patient Summary**

## OperationDefinition: Generate Nigeria Core Patient Summary 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/OperationDefinition/generate-ng-patient-summary | *Version*:0.0.0 |
| Draft as of 2026-08-12 | *Computable Name*:NgGeneratePatientSummary |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.33.2 | |

 
Generates a Nigeria Core patient summary for the Patient on which the operation is invoked. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "generate-ng-patient-summary",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/OperationDefinition/generate-ng-patient-summary",
  "version" : "0.0.0",
  "name" : "NgGeneratePatientSummary",
  "title" : "Generate Nigeria Core Patient Summary",
  "status" : "draft",
  "kind" : "operation",
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
  "description" : "Generates a Nigeria Core patient summary for the Patient on which the\noperation is invoked.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "affectsState" : false,
  "code" : "generate-ng-patient-summary",
  "resource" : ["Patient"],
  "system" : false,
  "type" : false,
  "instance" : true
}

```
