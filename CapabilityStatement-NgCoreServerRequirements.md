# NG Authoritative Server Requirements - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Authoritative Server Requirements**

## CapabilityStatement: NG Authoritative Server Requirements 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CapabilityStatement/NgCoreServerRequirements | *Version*:0.0.0 |
| Active as of 2026-08-09 | *Computable Name*:NgCoreServerRequirements |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.13.21 | |
| **Usage:**Clinical Venue: , Clinical Venue: , Clinical Venue:  | |

 
Authoritative computable FHIR R4 server requirements defining the Nigeria Core national server capability baseline. 

 
Defines the computable Nigeria Core requirements for the Nigeria Core Responder role in primary health care General Hospital and tertiary referral facilities. Defines the national server capability floor for clinical administrative registry reporting terminology conformance HIE Shared Health Record payer pharmacy laboratory imaging and public-health platforms. 
This CapabilityStatement supports implementation, procurement, vendor onboarding, SANDBOX FHIR configuration, interoperability testing, and automated conformance assessment. A deployed server SHALL expose only capabilities actually implemented by the deployment in its runtime /metadata response. 

 [Raw OpenAPI-Swagger Definition file](NgCoreServerRequirements.openapi.json) | [Download](NgCoreServerRequirements.openapi.json) 

## Nigeria Core Server Requirements

This is the human-readable rendering of the computable Nigeria Core `CapabilityStatement`. The computable elements remain authoritative. A conformant Nigeria Core Responder SHALL expose only capabilities actually implemented by the deployment in its runtime `/metadata`.

### Scope and actors

The Nigeria Core actors are **Nigeria Core Requestor**, **Nigeria Core Responder**, **Nigeria Core Registry Service**, **Nigeria Core Terminology Service**, and **Nigeria Core Conformance and Sandbox Service**. This CapabilityStatement defines the common server requirements of a Nigeria Core Responder. Specialised registry, terminology, program, regulator, HIE, Shared Health Record, and sandbox services may publish narrower or additional CapabilityStatements.

### Facility applicability

The baseline applies across **primary**, **secondary**, and **tertiary** health care facilities, and to supporting national, state, program, regulator, payer, pharmacy, laboratory, imaging, registry, HIE, and public-health platforms where the listed resources are implemented.

### Reference Policy

**Reference Policy:** Servers SHALL support literal FHIR references and logical identifier-based references. Same-server and same-Bundle relationships SHOULD use `Reference.reference`. Cross-platform relationships MAY additionally use `Reference.identifier` with stable national, program, regulator-issued, or local identifiers. External absolute URLs are not assumed to be resolvable unless required by an exchange agreement or a more specific CapabilityStatement.

### Formats and PATCH

* FHIR JSON: `json`
* FHIR XML: `xml`
* JSON Patch: `application/json-patch+json`
* XML Patch: `application/xml-patch+xml`

### Common resource interactions and outcomes

Unless a more specific CapabilityStatement narrows a resource capability, each listed resource declares the following R4 interactions. Failed interactions SHALL return a FHIR `OperationOutcome` with an appropriate HTTP 4xx or 5xx status.

| | | |
| :--- | :--- | :--- |
| `read` | HTTP 200 + requested resource | HTTP 4xx/5xx + OperationOutcome |
| `vread` | HTTP 200 + requested historical version | HTTP 4xx/5xx + OperationOutcome |
| `create` | HTTP 201 Created; representation or minimal response as negotiated | HTTP 4xx/5xx + OperationOutcome |
| `update` | HTTP 200; or HTTP 201 for update-as-create | HTTP 4xx/5xx + OperationOutcome |
| `patch` | HTTP 200; representation or minimal response as negotiated | HTTP 4xx/5xx + OperationOutcome |
| `delete` | HTTP 200 or 204 when deletion is permitted | Rejected/protected deletion: HTTP 4xx/5xx + OperationOutcome |
| `history-instance` | HTTP 200 + Bundle(type=history) | HTTP 4xx/5xx + OperationOutcome |
| `history-type` | HTTP 200 + Bundle(type=history) | HTTP 4xx/5xx + OperationOutcome |
| `search-type` | HTTP 200 + Bundle(type=searchset), with paging where required | HTTP 4xx/5xx + OperationOutcome |

### Server-level Bundle interactions

| | | |
| :--- | :--- | :--- |
| `transaction` | HTTP 200 with`Bundle.type=transaction-response` | Transaction failure: HTTP 4xx/5xx with`OperationOutcome`; processing is atomic. |
| `batch` | HTTP 200 with`Bundle.type=batch-response` | Each entry carries its own result and may carry an entry-level`OperationOutcome`. |

### Common search parameters

These searches are declared once at the REST level and apply across the resource set. Resource-specific searches are listed in the resource matrix below.

| | | |
| :--- | :--- | :--- |
| `_id` | `token` | Search by logical resource id. |
| `_lastUpdated` | `date` | Supports incremental synchronisation using`meta.lastUpdated`. |
| `_profile` | `uri` | Search by profile assertion in`Resource.meta.profile`. |

### Resource capability matrix

Every resource below also supports the common interactions shown above, literal and logical reference policies, versioned update behaviour, conditional create/read/update/delete as declared in the computable CapabilityStatement, and `$validate`.

| | | | |
| :--- | :--- | :--- | :--- |
| `Patient` | `NgPatient` | `identifier (token)``name (string)``birthdate (date)``gender (token)``active (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result`$match`— HTTP 200 with searchset Bundle containing candidate Patient matchesDefinition:`http://hl7.org/fhir/OperationDefinition/Patient-match``$generate-ng-patient-summary`— HTTP 2xx with the patient-summary output defined by the Nigeria Core OperationDefinitionDefinition:`https://fhir-ig.digitalhealth.gov.ng/OperationDefinition/generate-ng-patient-summary``$generate-certificate`— HTTP 2xx with the generated certificate output defined by the Nigeria Core OperationDefinitionDefinition:`https://fhir-ig.digitalhealth.gov.ng/OperationDefinition/generate-certificate` |
| `RelatedPerson` | `NgRelatedPerson` | `identifier (token)``name (string)``patient (reference)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Practitioner` | `NgPractitioner` | `identifier (token)``name (string)``active (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `PractitionerRole` | `NgPractitionerRole` | `practitioner (reference)``organization (reference)``role (token)``active (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Organization` | `NgOrganization``NgProviderOrganization``NgPharmacyOrganization``NgInsurerOrganization` | `identifier (token)``name (string)``type (token)``active (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Location` | `NgLocation` | `identifier (token)``name (string)``organization (reference)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `HealthcareService` | Base FHIR resource | `identifier (token)``organization (reference)``location (reference)``active (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `AllergyIntolerance` | `NgAllergyIntolerance` | `patient (reference)``code (token)``clinical-status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Condition` | `NgCondition` | `patient (reference)``code (token)``clinical-status (token)``verification-status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Encounter` | `NgEncounter` | `patient (reference)``identifier (token)``date (date)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Observation` | `NgObservationPregnancyStatus``NgObservationPregnancyEdd``NgObservationPregnancyOutcome``NgObservationTobaccoUse``NgObservationResultsRadiology` | `patient (reference)``category (token)``code (token)``date (date)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `DiagnosticReport` | `NgDiagnosticReport` | `patient (reference)``category (token)``code (token)``date (date)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `ServiceRequest` | `NgServiceRequest` | `patient (reference)``identifier (token)``code (token)``status (token)``intent (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Specimen` | `NgSpecimen` | `patient (reference)``identifier (token)``type (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Procedure` | `NgProcedure` | `patient (reference)``code (token)``date (date)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `CarePlan` | Base FHIR resource | `patient (reference)``category (token)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Immunization` | `NgImmunization` | `patient (reference)``date (date)``status (token)``vaccine-code (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Flag` | `NgFlag` | `patient (reference)``subject (reference)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Task` | `NgTask` | `status (token)``owner (reference)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Medication` | `NgMedication` | `code (token)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `MedicationRequest` | `NgMedicationRequest` | `patient (reference)``status (token)``intent (token)``medication (reference)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `MedicationStatement` | `NgMedicationStatement` | `patient (reference)``status (token)``medication (reference)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `MedicationDispense` | `NgMedicationDispense` | `patient (reference)``status (token)``medication (reference)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Invoice` | `NgInvoice` | `identifier (token)``status (token)``date (date)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `DocumentReference` | `NgDocuments` | `patient (reference)``identifier (token)``type (token)``category (token)``date (date)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result`$verify-certificate`— HTTP 2xx with the certificate-verification result defined by the Nigeria Core OperationDefinitionDefinition:`https://fhir-ig.digitalhealth.gov.ng/OperationDefinition/verify-certificate` |
| `Composition` | Base FHIR resource | `patient (reference)``type (token)``date (date)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `ImagingStudy` | Base FHIR resource | `patient (reference)``identifier (token)``started (date)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Questionnaire` | `NgQuestionnaire` | `url (uri)``status (token)``title (string)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `QuestionnaireResponse` | Base FHIR resource | `questionnaire (reference)``patient (reference)``authored (date)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Provenance` | `NgProvenance` | `target (reference)``recorded (date)``agent (reference)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `Measure` | Base FHIR resource | `url (uri)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result`$submit-ng-report`— HTTP 2xx with the submission result defined by the Nigeria Core OperationDefinitionDefinition:`https://fhir-ig.digitalhealth.gov.ng/OperationDefinition/submit-ng-report` |
| `MeasureReport` | Base FHIR resource | `measure (reference)``date (date)``status (token)``subject (reference)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `CodeSystem` | Base FHIR resource | `url (uri)``name (string)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result`$lookup`— HTTP 200 with Parameters containing concept detailsDefinition:`http://hl7.org/fhir/OperationDefinition/CodeSystem-lookup``$validate-code`— HTTP 200 with Parameters containing the code-validation resultDefinition:`http://hl7.org/fhir/OperationDefinition/CodeSystem-validate-code` |
| `ValueSet` | Base FHIR resource | `url (uri)``name (string)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result`$expand`— HTTP 200 with the expanded ValueSetDefinition:`http://hl7.org/fhir/OperationDefinition/ValueSet-expand``$validate-code`— HTTP 200 with Parameters containing the code-validation resultDefinition:`http://hl7.org/fhir/OperationDefinition/ValueSet-validate-code` |
| `ConceptMap` | Base FHIR resource | `url (uri)``name (string)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result`$translate`— HTTP 200 with Parameters containing the translation resultDefinition:`http://hl7.org/fhir/OperationDefinition/ConceptMap-translate` |
| `StructureDefinition` | Base FHIR resource | `url (uri)``name (string)``type (token)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `SearchParameter` | Base FHIR resource | `url (uri)``code (token)``base (token)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `OperationDefinition` | Base FHIR resource | `url (uri)``code (token)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result |
| `CapabilityStatement` | Base FHIR resource | `url (uri)``name (string)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result`$implements`— HTTP 200 with OperationOutcome containing no issue of severity error or fatal when the requested capabilities are implementedDefinition:`http://hl7.org/fhir/OperationDefinition/CapabilityStatement-implements` |

### OperationOutcome

A FHIR `OperationOutcome` communicates issues identified during an interaction or operation. Each `issue` SHALL contain `severity` and `code`. Servers SHOULD provide `details`, `diagnostics`, and `expression` where useful to developers.

#### Severity and successful outcomes

FHIR R4 defines four `issue.severity` values. **Success is an interaction outcome, not an OperationOutcome severity.**

* **success**: `fatal`
  * Successful interaction or operation;**not a FHIR severity code**.: Processing failed and cannot continue.
  * Represent using the applicable HTTP`2xx`status and the response defined for the interaction or`OperationDefinition`.: Request failed; correct the cause before retrying.
* **success**: `error`
  * Successful interaction or operation;**not a FHIR severity code**.: An issue caused the action to fail.
  * Represent using the applicable HTTP`2xx`status and the response defined for the interaction or`OperationDefinition`.: Request or operation was not successfully completed.
* **success**: `warning`
  * Successful interaction or operation;**not a FHIR severity code**.: Action may succeed but with a significant issue.
  * Represent using the applicable HTTP`2xx`status and the response defined for the interaction or`OperationDefinition`.: Review before relying on the result.
* **success**: `information`
  * Successful interaction or operation;**not a FHIR severity code**.: Informational issue unrelated to success or failure.
  * Represent using the applicable HTTP`2xx`status and the response defined for the interaction or`OperationDefinition`.: No corrective action is normally required.

#### Common issue types

`OperationOutcome.issue.code` SHALL use a FHIR R4 `IssueType`. Commonly applicable codes are summarised below; implementations MAY use any appropriate code from the required FHIR R4 IssueType value set.

| | |
| :--- | :--- |
| `invalid` | Resource is invalid against FHIR or an applicable Nigeria Core profile. |
| `structure` | Malformed or structurally invalid JSON/XML. |
| `required` | A mandatory element or value is missing. |
| `value` | An element, parameter, or header contains an invalid value. |
| `invariant` | A FHIR or Nigeria Core validation rule failed. |
| `security` | General authentication, authorisation, privacy, or permission problem. |
| `login` | Authentication is required. |
| `forbidden` | The authenticated client is not authorised to perform the action. |
| `not-supported` | Requested resource, profile, interaction, operation, or feature is unsupported. |
| `not-found` | Requested resource, reference, or required content was not found. |
| `duplicate` | The request would create a duplicate record. |
| `multiple-matches` | More than one match was found where one was expected. |
| `code-invalid` | A terminology code or system is unknown or invalid in the required context. |
| `business-rule` | Valid content violates an applicable business or workflow rule. |
| `conflict` | The request conflicts with the current resource state or version. |
| `exception` | An unexpected internal processing error occurred. |
| `timeout` | Processing or a dependent service timed out. |
| `throttled` | The server rejected or limited the request because of load or rate limits. |
| `informational` | An informational note unrelated to processing success. |

Developers SHOULD make issues actionable: use `details` for a specific description, `diagnostics` for technical information, and `expression` to identify the affected element or parameter using FHIRPath.

### Search behaviour

Search success returns HTTP 200 with `Bundle.type=searchset`. Servers SHALL use paging when required and SHALL enforce authorisation, purpose limitation, and appropriate result limits for broad or population-level searches. Servers SHALL NOT apply undocumented hidden filters. Search failures SHALL return an appropriate HTTP 4xx/5xx response with `OperationOutcome`.

### Operations and OperationDefinition

The operation names listed above are computable through `CapabilityStatement.rest.resource.operation`. The referenced `OperationDefinition` is authoritative for operation scope, input parameters, output parameters, cardinalities, and data types. Successful operation execution returns the resource or `Parameters`/`OperationOutcome` defined by that OperationDefinition. Failure to execute an operation SHALL return an appropriate HTTP 4xx/5xx response with `OperationOutcome`.

### Security and deletion

Production systems SHALL authenticate and authorise access according to Nigeria Core security policy and applicable governance. Sandbox and Connectathon deployments MAY use simplified authentication where approved and SHALL use synthetic, anonymised, pseudonymised, or otherwise authorised test data. Declaring `delete` does not require unsafe physical erasure. A server MAY reject deletion of protected clinical, registry, claims, program, provenance, or audit-relevant information and SHALL explain the rejection using `OperationOutcome`.

### Runtime conformance

The runtime CapabilityStatement returned by `GET [base]/metadata` SHALL describe the capabilities actually enabled on the deployment. A server claiming this national requirements statement SHOULD include the canonical for `NgCoreServerRequirements` in `CapabilityStatement.instantiates`.



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "NgCoreServerRequirements",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CapabilityStatement/NgCoreServerRequirements",
  "version" : "0.0.0",
  "name" : "NgCoreServerRequirements",
  "title" : "Authoritative Nigeria Core Server Requirements",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-09",
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
  "description" : "Authoritative computable FHIR R4 server requirements defining the Nigeria Core\nnational server capability baseline.",
  "useContext" : [{
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "venue"
    },
    "valueCodeableConcept" : {
      "text" : "Primary health care facilities"
    }
  },
  {
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "venue"
    },
    "valueCodeableConcept" : {
      "text" : "General Hospital facilities"
    }
  },
  {
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "venue"
    },
    "valueCodeableConcept" : {
      "text" : "Tertiary referral facilities"
    }
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "purpose" : "Defines the computable Nigeria Core requirements for the Nigeria Core Responder\nrole in primary health care General Hospital and tertiary referral facilities. Defines the national server capability floor for clinical administrative registry reporting terminology conformance HIE Shared Health Record payer pharmacy laboratory imaging and public-health platforms.\n\nThis CapabilityStatement supports implementation, procurement, vendor onboarding,\nSANDBOX FHIR configuration, interoperability testing, and automated conformance\nassessment. A deployed server SHALL expose only capabilities actually implemented\nby the deployment in its runtime /metadata response.",
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml"],
  "patchFormat" : ["application/json-patch+json", "application/xml-patch+xml"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "Nigeria Core Nigeria Core Responder requirements for primary health care General Hospital and tertiary referral facilities. Provides the authoritative Nigeria Core server baseline and supports interaction with Nigeria Core Requestors Registry Services Terminology Services and Conformance and Sandbox Services.\n\nReference Policy: systems SHALL support literal FHIR references and logical\nidentifier-based references. Same-server and same-Bundle relationships SHOULD\nuse Reference.reference. Cross-platform relationships MAY additionally use\nReference.identifier with stable national, programme, regulator-issued, or local\nidentifiers. External absolute references are not assumed to be resolvable unless\nrequired by an exchange agreement or a more specific CapabilityStatement.\n\nSearch Policy: supported searches SHALL follow FHIR R4 semantics. Search success\nreturns HTTP 200 with Bundle.type = searchset. Search failures SHALL return an\nappropriate HTTP 4xx/5xx response with OperationOutcome. Servers SHALL document\nrequired filters and SHALL NOT apply undocumented hidden filters.\n\nOperation Policy: the referenced OperationDefinition is authoritative for scope,\nparameters, input types, output types, and cardinalities. Failed operations SHALL\nreturn an appropriate HTTP 4xx/5xx response with OperationOutcome.",
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
      "type" : "RelatedPerson",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-related-person"],
      "documentation" : "Nigeria Core RelatedPerson read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested RelatedPerson. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical RelatedPerson version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
      "type" : "Practitioner",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner"],
      "documentation" : "Nigeria Core Practitioner read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Practitioner. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Practitioner version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
      "documentation" : "Nigeria Core PractitionerRole read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested PractitionerRole. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical PractitionerRole version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
      "type" : "Organization",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization",
      "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-provider-organization",
      "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-pharmacy-organization",
      "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-insurer-organization"],
      "documentation" : "Nigeria Core Organization read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Organization. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Organization version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
      "documentation" : "Nigeria Core Location read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Location. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Location version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
      "type" : "HealthcareService",
      "documentation" : "Nigeria Core HealthcareService read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested HealthcareService. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical HealthcareService version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
        "type" : "token",
        "documentation" : "Nigeria Core required identifier search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "organization",
        "type" : "reference",
        "documentation" : "Nigeria Core required organization search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "location",
        "type" : "reference",
        "documentation" : "Nigeria Core required location search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
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
      "type" : "Condition",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-condition"],
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
      "type" : "Procedure",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-procedure"],
      "documentation" : "Nigeria Core Procedure read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Procedure. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Procedure version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
      "type" : "CarePlan",
      "documentation" : "Nigeria Core CarePlan read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested CarePlan. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical CarePlan version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
      "type" : "Immunization",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization"],
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
      "type" : "Medication",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication"],
      "documentation" : "Nigeria Core Medication read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Medication. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Medication version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
        "name" : "code",
        "type" : "token",
        "documentation" : "Nigeria Core required code search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
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
      "type" : "MedicationDispense",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication-dispense"],
      "documentation" : "Nigeria Core MedicationDispense read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested MedicationDispense. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical MedicationDispense version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
      "type" : "Invoice",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-invoice"],
      "documentation" : "Nigeria Core Invoice read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Invoice. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Invoice version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
        "type" : "token",
        "documentation" : "Nigeria Core required identifier search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "Nigeria Core required status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "date",
        "type" : "date",
        "documentation" : "Nigeria Core required date search using FHIR R4 date search semantics. Search failure SHALL return OperationOutcome."
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
    },
    {
      "type" : "Composition",
      "documentation" : "Nigeria Core Composition read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Composition. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Composition version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
        "name" : "type",
        "type" : "token",
        "documentation" : "Nigeria Core required type search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
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
      "type" : "ImagingStudy",
      "documentation" : "Nigeria Core ImagingStudy read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested ImagingStudy. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical ImagingStudy version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
        "name" : "started",
        "type" : "date",
        "documentation" : "Nigeria Core required started search using FHIR R4 date search semantics. Search failure SHALL return OperationOutcome."
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
      "type" : "Questionnaire",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-questionnaire"],
      "documentation" : "Nigeria Core Questionnaire read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Questionnaire. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Questionnaire version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
        "name" : "url",
        "type" : "uri",
        "documentation" : "Nigeria Core required url search using FHIR R4 uri search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "Nigeria Core required status search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "title",
        "type" : "string",
        "documentation" : "Nigeria Core required title search using FHIR R4 string search semantics. Search failure SHALL return OperationOutcome."
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
      "type" : "Provenance",
      "supportedProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-provenance"],
      "documentation" : "Nigeria Core Provenance read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Provenance. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Provenance version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
        "name" : "target",
        "type" : "reference",
        "documentation" : "Nigeria Core required target search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "recorded",
        "type" : "date",
        "documentation" : "Nigeria Core required recorded search using FHIR R4 date search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "agent",
        "type" : "reference",
        "documentation" : "Nigeria Core required agent search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "Measure",
      "documentation" : "Nigeria Core Measure read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested Measure. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical Measure version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
        "name" : "url",
        "type" : "uri",
        "documentation" : "Nigeria Core required url search using FHIR R4 uri search semantics. Search failure SHALL return OperationOutcome."
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
        "name" : "submit-ng-report",
        "definition" : "https://fhir-ig.digitalhealth.gov.ng/OperationDefinition/submit-ng-report",
        "documentation" : "Success: HTTP 2xx with the submission result defined by the Nigeria Core OperationDefinition. Failure: HTTP 4xx/5xx with OperationOutcome. Inputs and outputs SHALL conform to the referenced Nigeria Core OperationDefinition."
      }]
    },
    {
      "type" : "MeasureReport",
      "documentation" : "Nigeria Core MeasureReport read/write/search capability. Reference Policy: literal and logical references are supported. Create success returns HTTP 201; read/update/patch/search success returns the FHIR R4 result appropriate to the interaction. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested MeasureReport. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical MeasureReport version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
        "name" : "measure",
        "type" : "reference",
        "documentation" : "Nigeria Core required measure search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
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
        "name" : "subject",
        "type" : "reference",
        "documentation" : "Nigeria Core required subject search using FHIR R4 reference search semantics. Search failure SHALL return OperationOutcome."
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "CodeSystem",
      "documentation" : "Nigeria Core CodeSystem read/search capability. Reference Policy: literal and logical references are supported. Successful read/vread returns HTTP 200 with CodeSystem; successful search returns HTTP 200 with Bundle.type = searchset. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested CodeSystem. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical CodeSystem version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
        "name" : "url",
        "type" : "uri",
        "documentation" : "Nigeria Core required url search using FHIR R4 uri search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "name",
        "type" : "string",
        "documentation" : "Nigeria Core required name search using FHIR R4 string search semantics. Search failure SHALL return OperationOutcome."
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
        "name" : "lookup",
        "definition" : "http://hl7.org/fhir/OperationDefinition/CodeSystem-lookup",
        "documentation" : "Success: HTTP 200 with Parameters containing concept details. Failure: HTTP 4xx/5xx with OperationOutcome. Inputs and outputs SHALL conform to the referenced OperationDefinition."
      },
      {
        "name" : "validate-code",
        "definition" : "http://hl7.org/fhir/OperationDefinition/CodeSystem-validate-code",
        "documentation" : "Success: HTTP 200 with Parameters containing the code-validation result. Failure: HTTP 4xx/5xx with OperationOutcome. Inputs and outputs SHALL conform to the referenced OperationDefinition."
      }]
    },
    {
      "type" : "ValueSet",
      "documentation" : "Nigeria Core ValueSet read/search capability. Reference Policy: literal and logical references are supported. Successful read/vread returns HTTP 200 with ValueSet; successful search returns HTTP 200 with Bundle.type = searchset. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested ValueSet. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical ValueSet version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
        "name" : "url",
        "type" : "uri",
        "documentation" : "Nigeria Core required url search using FHIR R4 uri search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "name",
        "type" : "string",
        "documentation" : "Nigeria Core required name search using FHIR R4 string search semantics. Search failure SHALL return OperationOutcome."
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
        "name" : "expand",
        "definition" : "http://hl7.org/fhir/OperationDefinition/ValueSet-expand",
        "documentation" : "Success: HTTP 200 with the expanded ValueSet. Failure: HTTP 4xx/5xx with OperationOutcome. Inputs and outputs SHALL conform to the referenced OperationDefinition."
      },
      {
        "name" : "validate-code",
        "definition" : "http://hl7.org/fhir/OperationDefinition/ValueSet-validate-code",
        "documentation" : "Success: HTTP 200 with Parameters containing the code-validation result. Failure: HTTP 4xx/5xx with OperationOutcome. Inputs and outputs SHALL conform to the referenced OperationDefinition."
      }]
    },
    {
      "type" : "ConceptMap",
      "documentation" : "Nigeria Core ConceptMap read/search capability. Reference Policy: literal and logical references are supported. Successful read/vread returns HTTP 200 with ConceptMap; successful search returns HTTP 200 with Bundle.type = searchset. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested ConceptMap. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical ConceptMap version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
        "name" : "url",
        "type" : "uri",
        "documentation" : "Nigeria Core required url search using FHIR R4 uri search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "name",
        "type" : "string",
        "documentation" : "Nigeria Core required name search using FHIR R4 string search semantics. Search failure SHALL return OperationOutcome."
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
        "name" : "translate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/ConceptMap-translate",
        "documentation" : "Success: HTTP 200 with Parameters containing the translation result. Failure: HTTP 4xx/5xx with OperationOutcome. Inputs and outputs SHALL conform to the referenced OperationDefinition."
      }]
    },
    {
      "type" : "StructureDefinition",
      "documentation" : "Nigeria Core StructureDefinition read/search capability. Reference Policy: literal and logical references are supported. Successful read/vread returns HTTP 200 with StructureDefinition; successful search returns HTTP 200 with Bundle.type = searchset. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested StructureDefinition. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical StructureDefinition version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
        "name" : "url",
        "type" : "uri",
        "documentation" : "Nigeria Core required url search using FHIR R4 uri search semantics. Search failure SHALL return OperationOutcome."
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
      "type" : "SearchParameter",
      "documentation" : "Nigeria Core SearchParameter read/search capability. Reference Policy: literal and logical references are supported. Successful read/vread returns HTTP 200 with SearchParameter; successful search returns HTTP 200 with Bundle.type = searchset. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested SearchParameter. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical SearchParameter version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
        "name" : "url",
        "type" : "uri",
        "documentation" : "Nigeria Core required url search using FHIR R4 uri search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "code",
        "type" : "token",
        "documentation" : "Nigeria Core required code search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "base",
        "type" : "token",
        "documentation" : "Nigeria Core required base search using FHIR R4 token search semantics. Search failure SHALL return OperationOutcome."
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
      "type" : "OperationDefinition",
      "documentation" : "Nigeria Core OperationDefinition read/search capability. Reference Policy: literal and logical references are supported. Successful read/vread returns HTTP 200 with OperationDefinition; successful search returns HTTP 200 with Bundle.type = searchset. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested OperationDefinition. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical OperationDefinition version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
        "name" : "url",
        "type" : "uri",
        "documentation" : "Nigeria Core required url search using FHIR R4 uri search semantics. Search failure SHALL return OperationOutcome."
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
      }],
      "operation" : [{
        "name" : "validate",
        "definition" : "http://hl7.org/fhir/OperationDefinition/Resource-validate",
        "documentation" : "Success: HTTP 200 with OperationOutcome describing validation results. Failure to execute: HTTP 4xx/5xx with OperationOutcome."
      }]
    },
    {
      "type" : "CapabilityStatement",
      "documentation" : "Nigeria Core CapabilityStatement read/search capability. Reference Policy: literal and logical references are supported. Successful read/vread returns HTTP 200 with CapabilityStatement; successful search returns HTTP 200 with Bundle.type = searchset. Failure SHALL return HTTP 4xx/5xx with OperationOutcome.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Success: HTTP 200 with the requested CapabilityStatement. Failure: HTTP 4xx/5xx with OperationOutcome."
      },
      {
        "code" : "vread",
        "documentation" : "Success: HTTP 200 with the requested historical CapabilityStatement version. Failure: HTTP 4xx/5xx with OperationOutcome."
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
        "name" : "url",
        "type" : "uri",
        "documentation" : "Nigeria Core required url search using FHIR R4 uri search semantics. Search failure SHALL return OperationOutcome."
      },
      {
        "name" : "name",
        "type" : "string",
        "documentation" : "Nigeria Core required name search using FHIR R4 string search semantics. Search failure SHALL return OperationOutcome."
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
        "name" : "implements",
        "definition" : "http://hl7.org/fhir/OperationDefinition/CapabilityStatement-implements",
        "documentation" : "Success: HTTP 200 with OperationOutcome indicating whether the requested capabilities are implemented. Failure: HTTP 4xx/5xx with OperationOutcome. Inputs and outputs SHALL conform to the referenced OperationDefinition."
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
