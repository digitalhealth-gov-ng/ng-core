# NG General Hospital Responder Capability - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG General Hospital Responder Capability**

## CapabilityStatement: NG General Hospital Responder Capability 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CapabilityStatement/NgGeneralHospitalResponderCapability | *Version*:0.0.0 |
| Active as of 2026-08-09 | *Computable Name*:NgGeneralHospitalResponderCapability |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.13.4 | |
| **Usage:**Clinical Venue:  | |

 
Minimum computable FHIR requirements for the Nigeria Core Responder role in General Hospital facilities. 

 
Defines the computable Nigeria Core requirements for the Nigeria Core Responder role in General Hospital facilities. Receives processes stores searches validates and returns routine and diagnostic clinical data. 
This CapabilityStatement supports implementation, procurement, vendor onboarding, SANDBOX FHIR configuration, interoperability testing, and automated conformance assessment. A deployed server SHALL expose only capabilities actually implemented by the deployment in its runtime /metadata response. 

 [Raw OpenAPI-Swagger Definition file](NgGeneralHospitalResponderCapability.openapi.json) | [Download](NgGeneralHospitalResponderCapability.openapi.json) 

## Nigeria Core General Hospital Responder Capability

This narrative is a developer-facing summary of the computable Nigeria Core capability requirements for this actor and facility level. The computable `CapabilityStatement` remains authoritative.

### Common resource interactions and outcomes

Unless this CapabilityStatement narrows a resource capability, each listed resource follows the R4 interaction outcomes below. Failed interactions SHALL return a FHIR `OperationOutcome` with an appropriate HTTP 4xx or 5xx status.

| | | |
| :--- | :--- | :--- |
| `read` | HTTP 200 + requested resource | HTTP 4xx/5xx +`OperationOutcome` |
| `vread` | HTTP 200 + requested historical version | HTTP 4xx/5xx +`OperationOutcome` |
| `create` | HTTP 201 Created; representation or minimal response as negotiated | HTTP 4xx/5xx +`OperationOutcome` |
| `update` | HTTP 200; or HTTP 201 for update-as-create | HTTP 4xx/5xx +`OperationOutcome` |
| `patch` | HTTP 200; representation or minimal response as negotiated | HTTP 4xx/5xx +`OperationOutcome` |
| `delete` | HTTP 200 or 204 when deletion is permitted | Rejected/protected deletion: HTTP 4xx/5xx +`OperationOutcome` |
| `history-instance` | HTTP 200 +`Bundle.type=history` | HTTP 4xx/5xx +`OperationOutcome` |
| `history-type` | HTTP 200 +`Bundle.type=history` | HTTP 4xx/5xx +`OperationOutcome` |
| `search-type` | HTTP 200 +`Bundle.type=searchset`, with paging where required | HTTP 4xx/5xx +`OperationOutcome` |

### Server-level Bundle interactions

Where declared by the computable CapabilityStatement, the following server-level Bundle interactions apply.

| | | |
| :--- | :--- | :--- |
| `transaction` | HTTP 200 with`Bundle.type=transaction-response` | Transaction failure: HTTP 4xx/5xx with`OperationOutcome`; processing is atomic. |
| `batch` | HTTP 200 with`Bundle.type=batch-response` | Each entry carries its own result and may carry an entry-level`OperationOutcome`. |

### Resource capability matrix

**Common searches:** `_id (token)`, `_lastUpdated (date)`, and `_profile (uri)`. Resource-specific searches are listed below. Unless narrowed by the computable statement, failed operations SHALL return an appropriate HTTP 4xx/5xx response with `OperationOutcome`.

| | | | |
| :--- | :--- | :--- | :--- |
| `Patient` | `NgPatient` | `identifier (token)``name (string)``birthdate (date)``gender (token)``active (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result`$match`— HTTP 200 with`Bundle.type=searchset`containing candidate Patient matches`$generate-ng-patient-summary`— HTTP 2xx with the patient-summary output defined by the Nigeria Core OperationDefinition`$generate-certificate`— HTTP 2xx with the generated certificate output defined by the Nigeria Core OperationDefinition |
| `Practitioner` | `NgPractitioner` | `identifier (token)``name (string)``active (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `PractitionerRole` | `NgPractitionerRole` | `practitioner (reference)``organization (reference)``role (token)``active (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `RelatedPerson` | `NgRelatedPerson` | `identifier (token)``name (string)``patient (reference)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Organization` | `NgOrganization` | `identifier (token)``name (string)``type (token)``active (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Location` | `NgLocation` | `identifier (token)``name (string)``organization (reference)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Encounter` | `NgEncounter` | `patient (reference)``identifier (token)``date (date)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Observation` | Base FHIR resource | `patient (reference)``category (token)``code (token)``date (date)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Condition` | Base FHIR resource | `patient (reference)``code (token)``clinical-status (token)``verification-status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `MedicationRequest` | Base FHIR resource | `patient (reference)``status (token)``intent (token)``medication (reference)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `MedicationStatement` | Base FHIR resource | `patient (reference)``status (token)``medication (reference)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `ServiceRequest` | Base FHIR resource | `patient (reference)``identifier (token)``code (token)``status (token)``intent (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Specimen` | Base FHIR resource | `patient (reference)``identifier (token)``type (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `DiagnosticReport` | Base FHIR resource | `patient (reference)``category (token)``code (token)``date (date)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `AllergyIntolerance` | Base FHIR resource | `patient (reference)``code (token)``clinical-status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Immunization` | Base FHIR resource | `patient (reference)``date (date)``status (token)``vaccine-code (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `QuestionnaireResponse` | Base FHIR resource | `questionnaire (reference)``patient (reference)``authored (date)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Flag` | Base FHIR resource | `patient (reference)``subject (reference)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Task` | Base FHIR resource | `status (token)``owner (reference)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `DocumentReference` | Base FHIR resource | `patient (reference)``identifier (token)``type (token)``category (token)``date (date)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result`$verify-certificate`— HTTP 2xx with the certificate-verification result defined by the Nigeria Core OperationDefinition |



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "NgGeneralHospitalResponderCapability",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CapabilityStatement/NgGeneralHospitalResponderCapability",
  "version" : "0.0.0",
  "name" : "NgGeneralHospitalResponderCapability",
  "title" : "Nigeria Core General Hospital Responder Capability",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-09",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Minimum computable FHIR requirements for the Nigeria Core Responder role in General Hospital facilities.",
  "useContext" : [{
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "venue"
    },
    "valueCodeableConcept" : {
      "text" : "General Hospital facilities"
    }
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "purpose" : "Defines the computable Nigeria Core requirements for the Nigeria Core Responder\nrole in General Hospital facilities. Receives processes stores searches validates and returns routine and diagnostic clinical data.\n\nThis CapabilityStatement supports implementation, procurement, vendor onboarding,\nSANDBOX FHIR configuration, interoperability testing, and automated conformance\nassessment. A deployed server SHALL expose only capabilities actually implemented\nby the deployment in its runtime /metadata response.",
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml"],
  "patchFormat" : ["application/json-patch+json", "application/xml-patch+xml"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "Nigeria Core Nigeria Core Responder requirements for General Hospital facilities. Provides clinical laboratory pharmacy diagnostic referral document and workflow endpoints.\n\nReference Policy: systems SHALL support literal FHIR references and logical\nidentifier-based references. Same-server and same-Bundle relationships SHOULD\nuse Reference.reference. Cross-platform relationships MAY additionally use\nReference.identifier with stable national, programme, regulator-issued, or local\nidentifiers. External absolute references are not assumed to be resolvable unless\nrequired by an exchange agreement or a more specific CapabilityStatement.\n\nSearch Policy: supported searches SHALL follow FHIR R4 semantics. Search success\nreturns HTTP 200 with Bundle.type = searchset. Search failures SHALL return an\nappropriate HTTP 4xx/5xx response with OperationOutcome. Servers SHALL document\nrequired filters and SHALL NOT apply undocumented hidden filters.\n\nOperation Policy: the referenced OperationDefinition is authoritative for scope,\nparameters, input types, output types, and cardinalities. Failed operations SHALL\nreturn an appropriate HTTP 4xx/5xx response with OperationOutcome.",
    "security" : {
      "description" : "Production systems SHALL authenticate and authorise access according to Nigeria\nCore security guidance and applicable national, programme, organisational, and\nregulatory policy. Access controls SHOULD consider user, role, organisation,\nfacility, geography, purpose, consent, and data sensitivity. Communication over\nopen networks SHALL protect confidentiality and integrity."
    },
    "resource" : [{
      "type" : "Patient",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"],
      "documentation" : "Nigeria Core Patient read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Patient. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Patient version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "create",
        "documentation" : "Success: HTTP 201 Created. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "update",
        "documentation" : "Success: HTTP 200 or HTTP 201 for update-as-create. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "patch",
        "documentation" : "Success: HTTP 200 with the updated resource or a minimal response as negotiated. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "history-instance",
        "documentation" : "Success: HTTP 200 with Bundle.type = history for the resource instance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned-update",
      "readHistory" : true,
      "updateCreate" : true,
      "conditionalCreate" : true,
      "conditionalRead" : "full-support",
      "conditionalUpdate" : true,
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Patient-identifier",
        "type" : "token",
        "documentation" : "Nigeria Core required identifier search. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "name",
        "type" : "string",
        "documentation" : "Nigeria Core required name search using FHIR R4 string search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "birthdate",
        "type" : "date",
        "documentation" : "Nigeria Core required birthdate search using FHIR R4 date search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "gender",
        "type" : "token",
        "documentation" : "Nigeria Core required gender search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "active",
        "type" : "token",
        "documentation" : "Nigeria Core required active search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "name" : "match",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Patient-match",
        "documentation" : "Success: HTTP 200 with searchset Bundle containing candidate Patient matches. Failure: HTTP 4xx/5xx with OperationOutcome. Inputs and outputs SHALL conform to the referenced OperationDefinition."
      },
      {
        "name" : "generate-ng-patient-summary",
        "definition" : "https://fhir-ig.digitalhealth.gov.ng/OperationDefinition/generate-ng-patient-summary",
        "documentation" : "Success: HTTP 2xx with the Nigeria Core patient summary output. Failure: HTTP 4xx/5xx with OperationOutcome. Inputs and outputs SHALL conform to the referenced Nigeria Core OperationDefinition."
      },
      {
        "name" : "generate-certificate",
        "definition" : "https://fhir-ig.digitalhealth.gov.ng/OperationDefinition/generate-certificate",
        "documentation" : "Success: HTTP 2xx with the generated certificate output. Failure: HTTP 4xx/5xx with OperationOutcome. Inputs and outputs SHALL conform to the referenced Nigeria Core OperationDefinition."
      }]
    },
    {
      "type" : "Practitioner",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner"],
      "documentation" : "Nigeria Core Practitioner read/search capability. Reference Policy: literal and logical references are supported. Successful read/vread returns HTTP 200 with Practitioner; successful search returns HTTP 200 with Bundle.type = searchset. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Practitioner. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Practitioner version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned",
      "readHistory" : true,
      "conditionalRead" : "full-support",
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-identifier",
        "type" : "token",
        "documentation" : "Nigeria Core required identifier search. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "name",
        "type" : "string",
        "documentation" : "Nigeria Core required name search using FHIR R4 string search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "active",
        "type" : "token",
        "documentation" : "Nigeria Core required active search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "PractitionerRole",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner-role"],
      "documentation" : "Nigeria Core PractitionerRole read/search capability. Reference Policy: literal and logical references are supported. Successful read/vread returns HTTP 200 with PractitionerRole; successful search returns HTTP 200 with Bundle.type = searchset. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested PractitionerRole. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical PractitionerRole version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned",
      "readHistory" : true,
      "conditionalRead" : "full-support",
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "practitioner",
        "type" : "reference",
        "documentation" : "Nigeria Core required practitioner search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "organization",
        "type" : "reference",
        "documentation" : "Nigeria Core required organization search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "role",
        "type" : "token",
        "documentation" : "Nigeria Core required role search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "active",
        "type" : "token",
        "documentation" : "Nigeria Core required active search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "RelatedPerson",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-related-person"],
      "documentation" : "Nigeria Core RelatedPerson read/search capability. Reference Policy: literal and logical references are supported. Successful read/vread returns HTTP 200 with RelatedPerson; successful search returns HTTP 200 with Bundle.type = searchset. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested RelatedPerson. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical RelatedPerson version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned",
      "readHistory" : true,
      "conditionalRead" : "full-support",
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "token",
        "documentation" : "Nigeria Core required identifier search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "name",
        "type" : "string",
        "documentation" : "Nigeria Core required name search using FHIR R4 string search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Nigeria Core required patient search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "Organization",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"],
      "documentation" : "Nigeria Core Organization read/search capability. Reference Policy: literal and logical references are supported. Successful read/vread returns HTTP 200 with Organization; successful search returns HTTP 200 with Bundle.type = searchset. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Organization. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Organization version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned",
      "readHistory" : true,
      "conditionalRead" : "full-support",
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-identifier",
        "type" : "token",
        "documentation" : "Nigeria Core required identifier search. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "name",
        "type" : "string",
        "documentation" : "Nigeria Core required name search using FHIR R4 string search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "type",
        "type" : "token",
        "documentation" : "Nigeria Core required type search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "active",
        "type" : "token",
        "documentation" : "Nigeria Core required active search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "Location",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-location"],
      "documentation" : "Nigeria Core Location read/search capability. Reference Policy: literal and logical references are supported. Successful read/vread returns HTTP 200 with Location; successful search returns HTTP 200 with Bundle.type = searchset. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Location. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Location version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned",
      "readHistory" : true,
      "conditionalRead" : "full-support",
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "token",
        "documentation" : "Nigeria Core required identifier search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "name",
        "type" : "string",
        "documentation" : "Nigeria Core required name search using FHIR R4 string search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "organization",
        "type" : "reference",
        "documentation" : "Nigeria Core required organization search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "Nigeria Core required status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "Encounter",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-encounter"],
      "documentation" : "Nigeria Core Encounter read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Encounter. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Encounter version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "create",
        "documentation" : "Success: HTTP 201 Created. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "update",
        "documentation" : "Success: HTTP 200 or HTTP 201 for update-as-create. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "patch",
        "documentation" : "Success: HTTP 200 with the updated resource or a minimal response as negotiated. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "history-instance",
        "documentation" : "Success: HTTP 200 with Bundle.type = history for the resource instance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned-update",
      "readHistory" : true,
      "updateCreate" : true,
      "conditionalCreate" : true,
      "conditionalRead" : "full-support",
      "conditionalUpdate" : true,
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Nigeria Core required patient search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "identifier",
        "type" : "token",
        "documentation" : "Nigeria Core required identifier search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "date",
        "type" : "date",
        "documentation" : "Nigeria Core required date search using FHIR R4 date search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "Nigeria Core required status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "Observation",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-pregnancy-status",
      "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-pregnancy-edd",
      "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-pregnancy-outcome",
      "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-tobacco-use",
      "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-observation-results-radiology"],
      "documentation" : "Nigeria Core Observation read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Observation. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Observation version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "create",
        "documentation" : "Success: HTTP 201 Created. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "update",
        "documentation" : "Success: HTTP 200 or HTTP 201 for update-as-create. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "patch",
        "documentation" : "Success: HTTP 200 with the updated resource or a minimal response as negotiated. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "history-instance",
        "documentation" : "Success: HTTP 200 with Bundle.type = history for the resource instance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned-update",
      "readHistory" : true,
      "updateCreate" : true,
      "conditionalCreate" : true,
      "conditionalRead" : "full-support",
      "conditionalUpdate" : true,
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Nigeria Core required patient search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "category",
        "type" : "token",
        "documentation" : "Nigeria Core required category search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "code",
        "type" : "token",
        "documentation" : "Nigeria Core required code search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "date",
        "type" : "date",
        "documentation" : "Nigeria Core required date search using FHIR R4 date search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "Nigeria Core required status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "Condition",
      "documentation" : "Nigeria Core Condition read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Condition. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Condition version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "create",
        "documentation" : "Success: HTTP 201 Created. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "update",
        "documentation" : "Success: HTTP 200 or HTTP 201 for update-as-create. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "patch",
        "documentation" : "Success: HTTP 200 with the updated resource or a minimal response as negotiated. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "history-instance",
        "documentation" : "Success: HTTP 200 with Bundle.type = history for the resource instance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned-update",
      "readHistory" : true,
      "updateCreate" : true,
      "conditionalCreate" : true,
      "conditionalRead" : "full-support",
      "conditionalUpdate" : true,
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Nigeria Core required patient search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "code",
        "type" : "token",
        "documentation" : "Nigeria Core required code search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "clinical-status",
        "type" : "token",
        "documentation" : "Nigeria Core required clinical-status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "verification-status",
        "type" : "token",
        "documentation" : "Nigeria Core required verification-status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "MedicationRequest",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication-request"],
      "documentation" : "Nigeria Core MedicationRequest read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested MedicationRequest. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical MedicationRequest version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "create",
        "documentation" : "Success: HTTP 201 Created. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "update",
        "documentation" : "Success: HTTP 200 or HTTP 201 for update-as-create. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "patch",
        "documentation" : "Success: HTTP 200 with the updated resource or a minimal response as negotiated. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "history-instance",
        "documentation" : "Success: HTTP 200 with Bundle.type = history for the resource instance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned-update",
      "readHistory" : true,
      "updateCreate" : true,
      "conditionalCreate" : true,
      "conditionalRead" : "full-support",
      "conditionalUpdate" : true,
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Nigeria Core required patient search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "Nigeria Core required status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "intent",
        "type" : "token",
        "documentation" : "Nigeria Core required intent search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "medication",
        "type" : "reference",
        "documentation" : "Nigeria Core required medication search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "MedicationStatement",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication-statement"],
      "documentation" : "Nigeria Core MedicationStatement read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested MedicationStatement. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical MedicationStatement version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "create",
        "documentation" : "Success: HTTP 201 Created. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "update",
        "documentation" : "Success: HTTP 200 or HTTP 201 for update-as-create. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "patch",
        "documentation" : "Success: HTTP 200 with the updated resource or a minimal response as negotiated. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "history-instance",
        "documentation" : "Success: HTTP 200 with Bundle.type = history for the resource instance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned-update",
      "readHistory" : true,
      "updateCreate" : true,
      "conditionalCreate" : true,
      "conditionalRead" : "full-support",
      "conditionalUpdate" : true,
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Nigeria Core required patient search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "Nigeria Core required status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "medication",
        "type" : "reference",
        "documentation" : "Nigeria Core required medication search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "ServiceRequest",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-service-request"],
      "documentation" : "Nigeria Core ServiceRequest read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested ServiceRequest. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical ServiceRequest version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "create",
        "documentation" : "Success: HTTP 201 Created. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "update",
        "documentation" : "Success: HTTP 200 or HTTP 201 for update-as-create. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "patch",
        "documentation" : "Success: HTTP 200 with the updated resource or a minimal response as negotiated. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "history-instance",
        "documentation" : "Success: HTTP 200 with Bundle.type = history for the resource instance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned-update",
      "readHistory" : true,
      "updateCreate" : true,
      "conditionalCreate" : true,
      "conditionalRead" : "full-support",
      "conditionalUpdate" : true,
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Nigeria Core required patient search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "identifier",
        "type" : "token",
        "documentation" : "Nigeria Core required identifier search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "code",
        "type" : "token",
        "documentation" : "Nigeria Core required code search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "Nigeria Core required status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "intent",
        "type" : "token",
        "documentation" : "Nigeria Core required intent search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "Specimen",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-specimen"],
      "documentation" : "Nigeria Core Specimen read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Specimen. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Specimen version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "create",
        "documentation" : "Success: HTTP 201 Created. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "update",
        "documentation" : "Success: HTTP 200 or HTTP 201 for update-as-create. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "patch",
        "documentation" : "Success: HTTP 200 with the updated resource or a minimal response as negotiated. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "history-instance",
        "documentation" : "Success: HTTP 200 with Bundle.type = history for the resource instance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned-update",
      "readHistory" : true,
      "updateCreate" : true,
      "conditionalCreate" : true,
      "conditionalRead" : "full-support",
      "conditionalUpdate" : true,
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Nigeria Core required patient search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "identifier",
        "type" : "token",
        "documentation" : "Nigeria Core required identifier search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "type",
        "type" : "token",
        "documentation" : "Nigeria Core required type search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "DiagnosticReport",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-diagnostic-report"],
      "documentation" : "Nigeria Core DiagnosticReport read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested DiagnosticReport. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical DiagnosticReport version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "create",
        "documentation" : "Success: HTTP 201 Created. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "update",
        "documentation" : "Success: HTTP 200 or HTTP 201 for update-as-create. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "patch",
        "documentation" : "Success: HTTP 200 with the updated resource or a minimal response as negotiated. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "history-instance",
        "documentation" : "Success: HTTP 200 with Bundle.type = history for the resource instance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned-update",
      "readHistory" : true,
      "updateCreate" : true,
      "conditionalCreate" : true,
      "conditionalRead" : "full-support",
      "conditionalUpdate" : true,
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Nigeria Core required patient search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "category",
        "type" : "token",
        "documentation" : "Nigeria Core required category search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "code",
        "type" : "token",
        "documentation" : "Nigeria Core required code search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "date",
        "type" : "date",
        "documentation" : "Nigeria Core required date search using FHIR R4 date search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "Nigeria Core required status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "AllergyIntolerance",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-allergy-intolerance"],
      "documentation" : "Nigeria Core AllergyIntolerance read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested AllergyIntolerance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical AllergyIntolerance version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "create",
        "documentation" : "Success: HTTP 201 Created. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "update",
        "documentation" : "Success: HTTP 200 or HTTP 201 for update-as-create. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "patch",
        "documentation" : "Success: HTTP 200 with the updated resource or a minimal response as negotiated. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "history-instance",
        "documentation" : "Success: HTTP 200 with Bundle.type = history for the resource instance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned-update",
      "readHistory" : true,
      "updateCreate" : true,
      "conditionalCreate" : true,
      "conditionalRead" : "full-support",
      "conditionalUpdate" : true,
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Nigeria Core required patient search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "code",
        "type" : "token",
        "documentation" : "Nigeria Core required code search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "clinical-status",
        "type" : "token",
        "documentation" : "Nigeria Core required clinical-status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "Immunization",
      "documentation" : "Nigeria Core Immunization read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Immunization. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Immunization version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "create",
        "documentation" : "Success: HTTP 201 Created. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "update",
        "documentation" : "Success: HTTP 200 or HTTP 201 for update-as-create. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "patch",
        "documentation" : "Success: HTTP 200 with the updated resource or a minimal response as negotiated. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "history-instance",
        "documentation" : "Success: HTTP 200 with Bundle.type = history for the resource instance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned-update",
      "readHistory" : true,
      "updateCreate" : true,
      "conditionalCreate" : true,
      "conditionalRead" : "full-support",
      "conditionalUpdate" : true,
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Nigeria Core required patient search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "date",
        "type" : "date",
        "documentation" : "Nigeria Core required date search using FHIR R4 date search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "Nigeria Core required status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "vaccine-code",
        "type" : "token",
        "documentation" : "Nigeria Core required vaccine-code search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "QuestionnaireResponse",
      "documentation" : "Nigeria Core QuestionnaireResponse read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested QuestionnaireResponse. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical QuestionnaireResponse version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "create",
        "documentation" : "Success: HTTP 201 Created. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "update",
        "documentation" : "Success: HTTP 200 or HTTP 201 for update-as-create. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "patch",
        "documentation" : "Success: HTTP 200 with the updated resource or a minimal response as negotiated. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "history-instance",
        "documentation" : "Success: HTTP 200 with Bundle.type = history for the resource instance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned-update",
      "readHistory" : true,
      "updateCreate" : true,
      "conditionalCreate" : true,
      "conditionalRead" : "full-support",
      "conditionalUpdate" : true,
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "questionnaire",
        "type" : "reference",
        "documentation" : "Nigeria Core required questionnaire search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Nigeria Core required patient search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "authored",
        "type" : "date",
        "documentation" : "Nigeria Core required authored search using FHIR R4 date search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "Nigeria Core required status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "Flag",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-flag"],
      "documentation" : "Nigeria Core Flag read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Flag. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Flag version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "create",
        "documentation" : "Success: HTTP 201 Created. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "update",
        "documentation" : "Success: HTTP 200 or HTTP 201 for update-as-create. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "patch",
        "documentation" : "Success: HTTP 200 with the updated resource or a minimal response as negotiated. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "history-instance",
        "documentation" : "Success: HTTP 200 with Bundle.type = history for the resource instance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned-update",
      "readHistory" : true,
      "updateCreate" : true,
      "conditionalCreate" : true,
      "conditionalRead" : "full-support",
      "conditionalUpdate" : true,
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Nigeria Core required patient search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "subject",
        "type" : "reference",
        "documentation" : "Nigeria Core required subject search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "Nigeria Core required status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "Task",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-task"],
      "documentation" : "Nigeria Core Task read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Task. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Task version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "create",
        "documentation" : "Success: HTTP 201 Created. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "update",
        "documentation" : "Success: HTTP 200 or HTTP 201 for update-as-create. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "patch",
        "documentation" : "Success: HTTP 200 with the updated resource or a minimal response as negotiated. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "history-instance",
        "documentation" : "Success: HTTP 200 with Bundle.type = history for the resource instance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned-update",
      "readHistory" : true,
      "updateCreate" : true,
      "conditionalCreate" : true,
      "conditionalRead" : "full-support",
      "conditionalUpdate" : true,
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "status",
        "type" : "token",
        "documentation" : "Nigeria Core required status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "owner",
        "type" : "reference",
        "documentation" : "Nigeria Core required owner search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "DocumentReference",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-documents"],
      "documentation" : "Nigeria Core DocumentReference read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested DocumentReference. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical DocumentReference version. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "create",
        "documentation" : "Success: HTTP 201 Created. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "update",
        "documentation" : "Success: HTTP 200 or HTTP 201 for update-as-create. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "patch",
        "documentation" : "Success: HTTP 200 with the updated resource or a minimal response as negotiated. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "history-instance",
        "documentation" : "Success: HTTP 200 with Bundle.type = history for the resource instance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "search-type",
        "documentation" : "Success: HTTP 200 with Bundle.type = searchset. Failure: HTTP 4xx/5xx with OperationOutcome."
      }],
      "versioning" : "versioned-update",
      "readHistory" : true,
      "updateCreate" : true,
      "conditionalCreate" : true,
      "conditionalRead" : "full-support",
      "conditionalUpdate" : true,
      "referencePolicy" : ["literal", "logical"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Nigeria Core required patient search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "identifier",
        "type" : "token",
        "documentation" : "Nigeria Core required identifier search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "type",
        "type" : "token",
        "documentation" : "Nigeria Core required type search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "category",
        "type" : "token",
        "documentation" : "Nigeria Core required category search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "date",
        "type" : "date",
        "documentation" : "Nigeria Core required date search using FHIR R4 date search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "Nigeria Core required status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "name" : "verify-certificate",
        "definition" : "https://fhir-ig.digitalhealth.gov.ng/OperationDefinition/verify-certificate",
        "documentation" : "Success: HTTP 2xx with the certificate verification result. Failure: HTTP 4xx/5xx with OperationOutcome. Inputs and outputs SHALL conform to the referenced Nigeria Core OperationDefinition."
      }]
    }],
    "interaction" : [{
      "code" : "transaction",
      "documentation" : "Success: HTTP 200 with Bundle.type = transaction-response. Failure: HTTP 4xx/5xx with OperationOutcome; transaction processing is atomic."
    },
    {
      "code" : "batch",
      "documentation" : "Success: HTTP 200 with Bundle.type = batch-response. Each entry carries its own result and MAY include an entry-level OperationOutcome."
    }],
    "searchParam" : [{
      "name" : "_id",
      "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
      "type" : "token",
      "documentation" : "Search by logical resource id."
    },
    {
      "name" : "_lastUpdated",
      "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
      "type" : "date",
      "documentation" : "Supports incremental synchronisation using Resource.meta.lastUpdated."
    },
    {
      "name" : "_profile",
      "definition" : "http://hl7.org/fhir/SearchParameter/Resource-profile",
      "type" : "uri",
      "documentation" : "Search by profile assertion in Resource.meta.profile."
    }]
  }]
}

```
