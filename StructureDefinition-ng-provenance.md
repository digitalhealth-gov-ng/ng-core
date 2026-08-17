# NG Lightweight Provenance - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Lightweight Provenance**

## Resource Profile: NG Lightweight Provenance 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-provenance | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgProvenance |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.64 | |

 
Minimal provenance profile for Nigeria Core. Captures who created/updated a resource, when, and (optionally) which activity was performed. 

**Usages:**

* Examples for this Profile: [Provenance/NgProvenance-001](Provenance-NgProvenance-001.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md), [Nigeria Core Tertiary Referral Registry Service Capability](CapabilityStatement-NgTertiaryRegistryCapability.md), [Nigeria Core Tertiary Referral Requestor Capability](CapabilityStatement-NgTertiaryRequestorCapability.md) and [Nigeria Core Tertiary Referral Responder Capability](CapabilityStatement-NgTertiaryResponderCapability.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-provenance.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-provenance.csv), [Excel](StructureDefinition-ng-provenance.xlsx), [Schematron](StructureDefinition-ng-provenance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-provenance",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-provenance",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.64"
  }],
  "version" : "0.0.0",
  "name" : "NgProvenance",
  "title" : "NG Lightweight Provenance",
  "status" : "draft",
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
  "description" : "Minimal provenance profile for Nigeria Core. Captures who created/updated a resource, when, and (optionally) which activity was performed.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "fhirauditevent",
    "uri" : "http://hl7.org/fhir/auditevent",
    "name" : "FHIR AuditEvent Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Provenance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Provenance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Provenance",
      "path" : "Provenance"
    },
    {
      "id" : "Provenance.target",
      "path" : "Provenance.target",
      "short" : "The resource(s) for which this provenance record provides information",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.recorded",
      "path" : "Provenance.recorded",
      "short" : "When the activity was recorded",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.activity",
      "path" : "Provenance.activity",
      "short" : "High-level activity (e.g., create/update/delete)",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent",
      "path" : "Provenance.agent",
      "short" : "Actor(s) responsible for the activity",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent.type",
      "path" : "Provenance.agent.type",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/provenance-agent-type"
      }
    },
    {
      "id" : "Provenance.agent.who",
      "path" : "Provenance.agent.who",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner-role",
        "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "Provenance.agent.onBehalfOf",
      "path" : "Provenance.agent.onBehalfOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "Provenance.entity",
      "path" : "Provenance.entity",
      "max" : "0"
    }]
  }
}

```
