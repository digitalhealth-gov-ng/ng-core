# Resource NgCoreRequestor



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "NgCoreRequestor",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.url",
    "valueUri" : "https://fhir-ig.digitalhealth.gov.ng/ActorDefinition/NgCoreRequestor"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.version",
    "valueString" : "0.0.0"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.name",
    "valueString" : "NgCoreRequestor"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.title",
    "valueString" : "Nigeria Core Requestor"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.status",
    "valueCode" : "draft"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.date",
    "valueDateTime" : "2026-08-12T13:22:49+01:00"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.publisher",
    "valueString" : "NDHI"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.contact",
    "valueContactDetail" : {
      "name" : "NDHI",
      "telecom" : [{
        "system" : "url",
        "value" : "https://digitalhealth.gov.ng"
      },
      {
        "system" : "email",
        "value" : "emeka2015@gmail.com"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.contact",
    "valueContactDetail" : {
      "name" : "Nigeria Digital in Health Initiative.",
      "telecom" : [{
        "system" : "email",
        "value" : "lekeojewale@gmail.com",
        "use" : "work"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.contact",
    "valueContactDetail" : {
      "name" : "Nigeria Digital in Health Initiative.",
      "telecom" : [{
        "system" : "email",
        "value" : "emeka2015@gmail.com",
        "use" : "work"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.description",
    "valueMarkdown" : "A **client application or service** that initiates FHIR requests or exchanges\nusing the Nigeria Core specifications."
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.jurisdiction",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "urn:iso:std:iso:3166",
        "code" : "NG",
        "display" : "Nigeria"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.purpose",
    "valueMarkdown" : "Defines the system role responsible for initiating interoperable exchanges with\nNigeria Core conformant services. A deployed system may act as a Requestor,\nResponder, or both, depending on the workflow."
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.type",
    "valueCode" : "system"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.documentation",
    "valueMarkdown" : "\n### Role\n\nThe **Nigeria Core Requestor** is an authorised application or service that\ninitiates interactions with a FHIR-enabled service.\n\nExamples include EMR/EHR systems, facility applications, mobile and community\nhealth applications, laboratory, pharmacy and imaging systems, program\nsystems, HIEs, registries, middleware, and reporting applications.\n\n### Responsibilities\n\nA Requestor may:\n\n* retrieve information using supported `read`, `search`, and other interactions;\n* create, update, submit, or exchange FHIR resources and Bundles;\n* invoke supported FHIR operations;\n* query registry and terminology services;\n* submit resources for validation or conformance testing; and\n* process successful responses and `OperationOutcome` results.\n\n### Conformance expectations\n\nA Requestor **SHALL**:\n\n* construct requests conforming to applicable Nigeria Core profiles;\n* provide mandatory and applicable **Must Support** elements;\n* use governed identifiers and terminology where required;\n* preserve required references and relationships;\n* use only interactions and operations supported by the receiving service; and\n* appropriately process FHIR responses and errors.\n\nThe Requestor **SHOULD** inspect the receiving service's\n`CapabilityStatement` before relying on optional capabilities and **SHALL NOT**\nassume that every Responder supports every Nigeria Core resource, operation,\nsearch parameter, or program profile.\n\nApplicable national authentication, authorisation, privacy, consent, audit,\nand secure-exchange requirements **SHALL** be followed.\n\n### Relationships\n\nThe Requestor commonly interacts with the **Nigeria Core Responder, Registry\nService, Terminology Service,** and **Conformance and Sandbox Service**.\n\nA single implementation may perform multiple actor roles."
  }],
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.12.3"
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/fhir-types",
      "code" : "ActorDefinition"
    }]
  }
}

```
