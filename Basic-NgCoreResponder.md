# Resource NgCoreResponder



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "NgCoreResponder",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.url",
    "valueUri" : "https://fhir-ig.digitalhealth.gov.ng/ActorDefinition/NgCoreResponder"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.version",
    "valueString" : "0.0.0"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.name",
    "valueString" : "NgCoreResponder"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.title",
    "valueString" : "Nigeria Core Responder"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.status",
    "valueCode" : "draft"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.date",
    "valueDateTime" : "2026-08-18T06:18:50+01:00"
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
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.description",
    "valueMarkdown" : "A **server, repository, gateway, or service** that processes FHIR requests and\nreturns responses conforming to the Nigeria Core specifications."
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
    "valueMarkdown" : "Defines the service-side role responsible for receiving and processing requests\nfrom a [Nigeria Core Requestor](ActorDefinition-NgCoreRequestor.html) using\ndeclared resources, interactions, searches, operations, and exchange patterns."
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.type",
    "valueCode" : "system"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.documentation",
    "valueMarkdown" : "\n### Role\n\nThe **Nigeria Core Responder** is an authorised FHIR-enabled service that\nreceives and processes requests.\n\nExamples include FHIR servers, EMR/EHR back ends, HIEs, registries,\nlaboratory, pharmacy and imaging services, program platforms, gateways,\nterminology services, and sandbox services.\n\n### Responsibilities\n\nA Responder may:\n\n* receive REST requests, operations, Bundles, documents, or other supported\n  exchanges;\n* validate resources against applicable profiles and terminology;\n* retrieve, create, update, or persist resources where supported;\n* execute declared FHIR operations;\n* apply applicable business and access-control rules; and\n* return FHIR resources, Bundles, operation results, or `OperationOutcome`.\n\n### Conformance expectations\n\nA Responder **SHALL**:\n\n* process supported requests according to applicable Nigeria Core requirements;\n* enforce applicable cardinalities, invariants, terminology bindings, required\n  references, and **Must Support** expectations;\n* use governed identifiers and terminology where specified;\n* publish or make available an accurate `CapabilityStatement`;\n* advertise only capabilities it can reliably support;\n* return FHIR-conformant responses; and\n* return an appropriate `OperationOutcome` when a request cannot be processed.\n\nThe Responder **SHOULD** provide sufficient error information for correction\nwithout exposing sensitive implementation details.\n\nAccess to technically available information **SHALL** remain subject to\napplicable authentication, authorisation, privacy, consent, and security rules.\n\n### Capability discovery\n\nThe Responder's `CapabilityStatement` **SHOULD** identify supported FHIR\nversion, profiles, resources, interactions, operations, search parameters,\nformats, security requirements, and relevant limitations.\n\n### Relationships\n\nThe Responder commonly interacts with the **Nigeria Core Requestor, Registry\nService, Terminology Service,** and **Conformance and Sandbox Service**.\n\nA system may act as both Requestor and Responder."
  }],
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.12.4"
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/fhir-types",
      "code" : "ActorDefinition"
    }]
  }
}

```
