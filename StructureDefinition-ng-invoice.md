# NG Invoice - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Invoice**

## Resource Profile: NG Invoice 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-invoice | *Version*:0.0.0 |
| Draft as of 2026-08-12 | *Computable Name*:NgInvoice |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.37 | |

 
Invoice profile for pharmacy dispensing and payment in Nigeria Core. 

**Usages:**

* Examples for this Profile: [Invoice/NgInvoice-001](Invoice-NgInvoice-001.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md), [Nigeria Core Tertiary Referral Requestor Capability](CapabilityStatement-NgTertiaryRequestorCapability.md) and [Nigeria Core Tertiary Referral Responder Capability](CapabilityStatement-NgTertiaryResponderCapability.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-invoice.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-invoice.csv), [Excel](StructureDefinition-ng-invoice.xlsx), [Schematron](StructureDefinition-ng-invoice.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-invoice",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-invoice",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.37"
  }],
  "version" : "0.0.0",
  "name" : "NgInvoice",
  "title" : "NG Invoice",
  "status" : "draft",
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
  "description" : "Invoice profile for pharmacy dispensing and payment in Nigeria Core.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Invoice",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Invoice",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Invoice",
      "path" : "Invoice"
    },
    {
      "id" : "Invoice.status",
      "path" : "Invoice.status",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.type",
      "path" : "Invoice.type",
      "short" : "Invoice category (e.g., Rx invoice)",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.subject",
      "path" : "Invoice.subject",
      "short" : "The patient this invoice is about",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.date",
      "path" : "Invoice.date",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.participant",
      "path" : "Invoice.participant",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.participant.role",
      "path" : "Invoice.participant.role",
      "short" : "Role (e.g., performer, payee)"
    },
    {
      "id" : "Invoice.participant.actor",
      "path" : "Invoice.participant.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "Invoice.issuer",
      "path" : "Invoice.issuer",
      "short" : "Organization issuing the invoice (e.g., pharmacy)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Invoice.lineItem",
      "path" : "Invoice.lineItem",
      "mustSupport" : true
    },
    {
      "id" : "Invoice.lineItem.sequence",
      "path" : "Invoice.lineItem.sequence",
      "short" : "Line order"
    },
    {
      "id" : "Invoice.lineItem.chargeItem[x]",
      "path" : "Invoice.lineItem.chargeItem[x]",
      "short" : "What is being billed (code or reference)"
    },
    {
      "id" : "Invoice.totalPriceComponent",
      "path" : "Invoice.totalPriceComponent",
      "short" : "Invoice-level price components (e.g., subtotal, VAT)"
    },
    {
      "id" : "Invoice.totalNet",
      "path" : "Invoice.totalNet",
      "short" : "Total after adjustments"
    },
    {
      "id" : "Invoice.totalGross",
      "path" : "Invoice.totalGross",
      "short" : "Total before adjustments"
    },
    {
      "id" : "Invoice.paymentTerms",
      "path" : "Invoice.paymentTerms",
      "short" : "Payment instructions/terms"
    },
    {
      "id" : "Invoice.note.text",
      "path" : "Invoice.note.text",
      "short" : "Free text note (e.g., co-pay, coverage info)"
    }]
  }
}

```
