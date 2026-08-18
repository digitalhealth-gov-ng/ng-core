# Resource NgCoreConformanceSandboxService



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "NgCoreConformanceSandboxService",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.url",
    "valueUri" : "https://fhir-ig.digitalhealth.gov.ng/ActorDefinition/NgCoreConformanceSandboxService"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.version",
    "valueString" : "0.0.0"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.name",
    "valueString" : "NgCoreConformanceSandboxService"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.title",
    "valueString" : "Nigeria Core Conformance and Sandbox Service"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.status",
    "valueCode" : "active"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.date",
    "valueDateTime" : "2026-08-18T16:47:52+01:00"
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
    "valueMarkdown" : "A **testing and validation service** providing a controlled environment for\nimplementing and testing systems against the Nigeria Core specifications."
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
    "valueMarkdown" : "Defines the role responsible for supporting implementation, interoperability\ntesting, validation, vendor onboarding, and certification readiness before\nproduction deployment."
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.type",
    "valueCode" : "system"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.documentation",
    "valueMarkdown" : "\n### Role\n\nThe **Nigeria Core Conformance and Sandbox Service** provides a non-production\nenvironment for developers, vendors, facilities, programs, government teams,\nand conformance testers to exercise Nigeria Core implementations.\n\nIt supports implementation learning and testing and **does not replace\nproduction clinical systems, registries, or health information exchanges**.\n\n### Testing capabilities\n\nThe Sandbox may support:\n\n* FHIR resource and profile validation;\n* terminology validation;\n* REST interaction and search testing;\n* FHIR operation testing;\n* reference and Bundle validation;\n* terminology operations;\n* `CapabilityStatement` testing;\n* synthetic test data;\n* reference implementations;\n* interoperability testing between systems;\n* `TestScript` execution;\n* vendor onboarding; and\n* certification-readiness assessment.\n\nValidation may evaluate:\n\n* cardinalities and **Must Support** expectations;\n* invariants, fixed/pattern values, slicing, and references;\n* terminology bindings;\n* supported searches and operations; and\n* program-specific constraints.\n\nValidation results **SHOULD** use `OperationOutcome` or another documented test\nformat and identify relevant errors, warnings, and informational findings.\n\nSuccessful syntactic validation alone **SHALL NOT** be considered proof of\ncomplete implementation conformance.\n\n### Conformance expectations\n\nThe Sandbox **SHALL**:\n\n* test against the applicable published Nigeria Core specification;\n* identify relevant profiles or artefacts used during validation;\n* return meaningful FHIR-conformant test responses;\n* publish an accurate `CapabilityStatement`;\n* advertise only reliably supported testing capabilities;\n* distinguish test results from formal certification; and\n* clearly identify limitations of the testing environment.\n\nSuccessful Sandbox testing **SHALL NOT** constitute certification, regulatory\napproval, or production authorisation unless explicitly defined by an\nauthorised national process.\n\n### Test data and security\n\nSynthetic, anonymised, or otherwise approved test data **SHOULD** be used.\nProduction patient information **SHOULD NOT** be submitted, and the Sandbox\n**SHALL NOT** be treated as an authoritative clinical repository.\n\nThe Sandbox **SHALL** use HTTPS and simple authentication for protected testing\nfunctions. Authentication may use username/password, API key, access token, or\nanother approved lightweight mechanism.\n\nSandbox authentication **SHALL NOT** be assumed sufficient for production\nclinical systems.\n\n### Version and environment management\n\nThe Sandbox **SHOULD** identify the Nigeria Core IG version used for each\nrelevant test. Implementers **SHOULD** repeat testing following substantive\nchanges to profiles, terminology, operations, search parameters, or conformance\nrequirements.\n\nSandbox resources may be reset or replaced and **SHOULD NOT** be relied upon\nfor production persistence or availability.\n\n### Relationships\n\nThe Sandbox commonly interacts with the **Nigeria Core Requestor, Responder,\nRegistry Service,** and **Terminology Service** and may act as a reference\nRequestor or Responder during interoperability testing.\n\nIts intended outcome is to identify interoperability and conformance problems\nbefore production deployment and improve implementation consistency and vendor\nreadiness."
  }],
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.12.1"
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/fhir-types",
      "code" : "ActorDefinition"
    }]
  }
}

```
