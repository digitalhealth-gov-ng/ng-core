# Resource NgCoreTerminologyService



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "NgCoreTerminologyService",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.url",
    "valueUri" : "https://fhir-ig.digitalhealth.gov.ng/ActorDefinition/NgCoreTerminologyService"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.version",
    "valueString" : "0.0.0"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.name",
    "valueString" : "NgCoreTerminologyService"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.title",
    "valueString" : "Nigeria Core Terminology Service"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.status",
    "valueCode" : "draft"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.date",
    "valueDateTime" : "2026-08-17T16:10:29+01:00"
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
    "valueMarkdown" : "A **terminology service** providing computational access to Nigeria Core\nCodeSystems, ValueSets, ConceptMaps, and supported external terminologies."
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
    "valueMarkdown" : "Defines the role responsible for consistent representation, validation, lookup,\nexpansion, and translation of coded information used by Nigeria Core\nimplementations."
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.type",
    "valueCode" : "system"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.documentation",
    "valueMarkdown" : "\n### Role\n\nThe **Nigeria Core Terminology Service** publishes, maintains, or provides\ncomputational access to:\n\n* `CodeSystem`;\n* `ValueSet`;\n* `ConceptMap`;\n* `NamingSystem`, where applicable;\n* national and program terminology; and\n* adopted international terminology such as ICD-11, SNOMED CT, LOINC, ATC,\n  and other approved systems where licensing permits.\n\n### Responsibilities\n\nThe service may:\n\n* publish governed terminology artefacts;\n* validate codes and ValueSet membership;\n* expand ValueSets;\n* provide concept lookup;\n* translate codes using governed `ConceptMap` resources;\n* manage terminology versions and mappings; and\n* support terminology validation during Nigeria Core conformance testing.\n\nSupported operations may include:\n\n`$lookup` | `$validate-code` | `$expand` | `$translate` | `$subsumes`\n\nAvailability **SHALL** be determined from the service `CapabilityStatement`.\n\n### Conformance expectations\n\nA Terminology Service **SHALL**:\n\n* expose valid FHIR terminology resources;\n* preserve canonical URLs and terminology identifiers;\n* preserve relevant terminology versions;\n* distinguish coding systems using governed identifiers;\n* return FHIR-conformant responses;\n* advertise only reliably supported terminology and operations; and\n* provide an accurate `CapabilityStatement`.\n\nIt **SHALL NOT** silently substitute terminology versions where meaning or\nvalidity could change.\n\nWhere local terminology is exchanged, the original code and coding system\n**SHALL** be retained. Version information **SHOULD** be retained where\nrelevant, and governed mappings **SHOULD** use published `ConceptMap`\nresources.\n\nMappings **SHOULD NOT** be treated as simple text substitutions. Where no valid\nmapping exists, a service **SHOULD** report that no translation can be\ndetermined rather than inventing a code.\n\nRequired terminology bindings defined by Nigeria Core profiles **SHALL** be\nhonoured.\n\n### Governance and licensing\n\nTerminology governance **SHOULD** address approval, versioning, retirement,\nmapping, publication, correction, and stewardship.\n\nNational terminology **SHALL NOT** be locally modified while retaining the same\ncanonical identifier if the modification changes its governed meaning.\n\nImplementers **SHALL** comply with applicable licensing and distribution\nrequirements for external terminologies.\n\n### Relationships\n\nThe Terminology Service commonly supports the **Nigeria Core Requestor,\nResponder, Registry Service,** and **Conformance and Sandbox Service**.\n\nFacilities may consume shared national or subnational terminology services\nrather than operating independent terminology servers."
  }],
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.12.5"
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/fhir-types",
      "code" : "ActorDefinition"
    }]
  }
}

```
