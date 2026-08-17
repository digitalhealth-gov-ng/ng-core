# Resource NgCoreRegistryService



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "NgCoreRegistryService",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.url",
    "valueUri" : "https://fhir-ig.digitalhealth.gov.ng/ActorDefinition/NgCoreRegistryService"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.version",
    "valueString" : "0.0.0"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.name",
    "valueString" : "NgCoreRegistryService"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.title",
    "valueString" : "Nigeria Core Registry Service"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.status",
    "valueCode" : "draft"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.date",
    "valueDateTime" : "2026-08-17T13:27:53+01:00"
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
    "valueMarkdown" : "A **registry service** that maintains or provides access to authoritative\ninformation about governed health-system entities."
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
    "valueMarkdown" : "Defines the role responsible for trusted registration, identification, lookup,\nmatching, verification, and retrieval of entities shared across health\nprograms, facilities, and interoperable systems."
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.type",
    "valueCode" : "system"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.documentation",
    "valueMarkdown" : "\n### Role\n\nThe **Nigeria Core Registry Service** provides authoritative or governed\ninformation about entities such as:\n\n* patients or clients;\n* practitioners and health workers;\n* organisations and health facilities;\n* locations and healthcare services;\n* pharmacies and laboratories;\n* payers, products, devices, or other governed entities.\n\nA Registry Service may operate nationally, subnationally, institutionally, or\nwithin a federated registry architecture.\n\n### Responsibilities\n\nA Registry Service may:\n\n* register entities using applicable Nigeria Core profiles;\n* maintain and verify governed identifiers;\n* provide authorised lookup and search;\n* support matching, duplicate detection, linking, and reconciliation;\n* manage updates and status changes;\n* preserve appropriate provenance and history; and\n* publish supported capabilities.\n\nTypical resource mappings include:\n\n| Registry domain          | FHIR resource       |\n| ------------------------ | ------------------- |\n| Patient/client           | `Patient`           |\n| Health worker            | `Practitioner`      |\n| Practitioner role        | `PractitionerRole`  |\n| Facility/organisation    | `Organization`      |\n| Location                 | `Location`          |\n| Caregiver/related person | `RelatedPerson`     |\n| Service directory        | `HealthcareService` |\n\n### Conformance expectations\n\nA Registry Service **SHALL**:\n\n* use applicable Nigeria Core profiles;\n* use nationally governed identifiers where defined;\n* preserve identifier systems, namespaces, and issuing authorities;\n* comply with applicable profile and terminology constraints;\n* return FHIR-conformant responses; and\n* provide an accurate `CapabilityStatement` when exposing a FHIR endpoint.\n\nIt **SHALL NOT** issue or redefine a nationally governed identifier without the\nauthority to do so.\n\n### Identity and stewardship\n\nWhere matching is supported, sufficient identifiers and demographic or other\ngoverned attributes **SHOULD** be used to minimise false matches and duplicate\nregistrations. Algorithmic matching **SHOULD** be governed, tested, and\nauditable.\n\nRegistry governance **SHOULD** define the authoritative source, identifier\nlifecycle, update rules, data-quality controls, access policies, stewardship,\nand duplicate/conflict resolution.\n\nAccess to registry information **SHALL** follow applicable security and privacy\nrequirements according to the sensitivity of the registry domain.\n\n### Relationships\n\nThe Registry Service commonly interacts with the **Nigeria Core Requestor,\nResponder, Terminology Service,** and **Conformance and Sandbox Service**.\n\nA Registry Service may itself act as a Requestor when consulting another\nauthoritative service."
  }],
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.12.2"
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/fhir-types",
      "code" : "ActorDefinition"
    }]
  }
}

```
