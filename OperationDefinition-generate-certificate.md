# Generate Nigeria Core Certificate - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Generate Nigeria Core Certificate**

## OperationDefinition: Generate Nigeria Core Certificate 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/OperationDefinition/generate-certificate | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgGenerateCertificate |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.33.1 | |

 
Generates a certificate or certificate document for the Patient on which the operation is invoked. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "generate-certificate",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/OperationDefinition/generate-certificate",
  "version" : "0.0.0",
  "name" : "NgGenerateCertificate",
  "title" : "Generate Nigeria Core Certificate",
  "status" : "draft",
  "kind" : "operation",
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
  "description" : "Generates a certificate or certificate document for the Patient on which\nthe operation is invoked.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "affectsState" : true,
  "code" : "generate-certificate",
  "resource" : ["Patient"],
  "system" : false,
  "type" : false,
  "instance" : true
}

```
