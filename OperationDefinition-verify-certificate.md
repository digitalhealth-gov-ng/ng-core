# Verify Nigeria Core Certificate - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Verify Nigeria Core Certificate**

## OperationDefinition: Verify Nigeria Core Certificate 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/OperationDefinition/verify-certificate | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgVerifyCertificate |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.33.4 | |

 
Verifies the authenticity and integrity of a certificate represented by the DocumentReference on which the operation is invoked. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "verify-certificate",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/OperationDefinition/verify-certificate",
  "version" : "0.0.0",
  "name" : "NgVerifyCertificate",
  "title" : "Verify Nigeria Core Certificate",
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
  "description" : "Verifies the authenticity and integrity of a certificate represented by\nthe DocumentReference on which the operation is invoked.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "affectsState" : false,
  "code" : "verify-certificate",
  "resource" : ["DocumentReference"],
  "system" : false,
  "type" : false,
  "instance" : true
}

```
