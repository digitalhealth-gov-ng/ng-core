# NG Consent - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Consent**

## Resource Profile: NG Consent 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-consent | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgConsent |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.17 | |

 
Minimal consent profile for Nigerian implementations (e.g., NDPR / NIS ISO/TR 17975 use). Keeps constraints light to reduce QA noise. 

**Usages:**

* Examples for this Profile: [Consent/NgConsent-001](Consent-NgConsent-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-consent.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-consent.csv), [Excel](StructureDefinition-ng-consent.xlsx), [Schematron](StructureDefinition-ng-consent.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-consent",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-consent",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.17"
  }],
  "version" : "0.0.0",
  "name" : "NgConsent",
  "title" : "NG Consent",
  "status" : "active",
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
  "description" : "Minimal consent profile for Nigerian implementations (e.g., NDPR / NIS ISO/TR 17975 use). Keeps constraints light to reduce QA noise.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Consent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Consent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Consent",
      "path" : "Consent"
    },
    {
      "id" : "Consent.status",
      "path" : "Consent.status",
      "mustSupport" : true
    },
    {
      "id" : "Consent.scope",
      "path" : "Consent.scope",
      "mustSupport" : true
    },
    {
      "id" : "Consent.category",
      "path" : "Consent.category",
      "mustSupport" : true
    },
    {
      "id" : "Consent.patient",
      "path" : "Consent.patient",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision",
      "path" : "Consent.provision",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.type",
      "path" : "Consent.provision.type",
      "min" : 1
    }]
  }
}

```
