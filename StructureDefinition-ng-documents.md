# Nigeria Document Reference - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Document Reference**

## Resource Profile: Nigeria Document Reference 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-documents | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgDocuments |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.25 | |

 
Profile for indexing and exchanging clinical, administrative, and public-health documents associated with a patient. 

**Usages:**

* Examples for this Profile: [DocumentReference/NgDocuments-001](DocumentReference-NgDocuments-001.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md), [Nigeria Core General Hospital Requestor Capability](CapabilityStatement-NgGeneralHospitalRequestorCapability.md), [Nigeria Core General Hospital Responder Capability](CapabilityStatement-NgGeneralHospitalResponderCapability.md), [Nigeria Core Tertiary Referral Requestor Capability](CapabilityStatement-NgTertiaryRequestorCapability.md) and [Nigeria Core Tertiary Referral Responder Capability](CapabilityStatement-NgTertiaryResponderCapability.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-documents.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-documents.csv), [Excel](StructureDefinition-ng-documents.xlsx), [Schematron](StructureDefinition-ng-documents.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-documents",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-documents",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.25"
  }],
  "version" : "0.0.0",
  "name" : "NgDocuments",
  "title" : "Nigeria Document Reference",
  "status" : "draft",
  "date" : "2026-08-17T16:10:29+01:00",
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
  "description" : "Profile for indexing and exchanging\nclinical, administrative, and public-health documents \nassociated with a patient.",
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
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.identifier",
      "path" : "DocumentReference.identifier",
      "short" : "Business identifier assigned to the document",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.status",
      "path" : "DocumentReference.status",
      "short" : "Current status of the document reference",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.docStatus",
      "path" : "DocumentReference.docStatus",
      "short" : "Clinical status of the referenced document",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "short" : "Type of document",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/document-relationship-type"
      }
    },
    {
      "id" : "DocumentReference.category",
      "path" : "DocumentReference.category",
      "short" : "High-level classification of the document",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "short" : "Patient to whom the document relates",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.date",
      "path" : "DocumentReference.date",
      "short" : "When the document reference was created",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.author",
      "path" : "DocumentReference.author",
      "short" : "Person, organization, or device responsible for the document",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner-role",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-device",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-related-person"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.authenticator",
      "path" : "DocumentReference.authenticator",
      "short" : "Person or organization that authenticated the document",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.custodian",
      "path" : "DocumentReference.custodian",
      "short" : "Organization responsible for maintaining the document",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "short" : "The referenced or embedded document",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment",
      "path" : "DocumentReference.content.attachment",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "short" : "MIME type of the document",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.data",
      "path" : "DocumentReference.content.attachment.data",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.size",
      "path" : "DocumentReference.content.attachment.size",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.hash",
      "path" : "DocumentReference.content.attachment.hash",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.title",
      "path" : "DocumentReference.content.attachment.title",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.creation",
      "path" : "DocumentReference.content.attachment.creation",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.format",
      "path" : "DocumentReference.content.format",
      "short" : "Document format or implementation guide",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context",
      "path" : "DocumentReference.context",
      "short" : "Clinical or administrative context of the document",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.encounter",
      "path" : "DocumentReference.context.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.period",
      "path" : "DocumentReference.context.period",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.facilityType",
      "path" : "DocumentReference.context.facilityType",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.practiceSetting",
      "path" : "DocumentReference.context.practiceSetting",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.sourcePatientInfo",
      "path" : "DocumentReference.context.sourcePatientInfo",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.related",
      "path" : "DocumentReference.context.related",
      "mustSupport" : true
    }]
  }
}

```
