# NG General Hospital Terminology Service Capability - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG General Hospital Terminology Service Capability**

## CapabilityStatement: NG General Hospital Terminology Service Capability 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CapabilityStatement/NgGeneralHospitalTerminologyCapability | *Version*:0.0.0 |
| Active as of 2026-08-09 | *Computable Name*:NgGeneralHospitalTerminologyCapability |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.13.10 | |
| **Usage:**Clinical Venue:  | |

 
Minimum computable FHIR requirements for the Nigeria Core Terminology Service role in General Hospital facilities. 

 
Defines the computable Nigeria Core requirements for the Nigeria Core Terminology Service role in General Hospital facilities. Supports coded-data validation lookup expansion and concept translation. 
This CapabilityStatement supports implementation, procurement, vendor onboarding, SANDBOX FHIR configuration, interoperability testing, and automated conformance assessment. A deployed server SHALL expose only capabilities actually implemented by the deployment in its runtime /metadata response. 

 [Raw OpenAPI-Swagger Definition file](NgGeneralHospitalTerminologyCapability.openapi.json) | [Download](NgGeneralHospitalTerminologyCapability.openapi.json) 

## Nigeria Core General Hospital Terminology Service Capability

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
| `CodeSystem` | Base FHIR resource | `url (uri)``name (string)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result`$lookup`— HTTP 200 with`Parameters`containing concept details |
| `ValueSet` | Base FHIR resource | `url (uri)``name (string)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result`$expand`— HTTP 200 with the expanded`ValueSet``$validate-code`— HTTP 200 with`Parameters`containing the code-validation result |
| `ConceptMap` | Base FHIR resource | `url (uri)``name (string)``status (token)` | `$validate`— HTTP 200 with`OperationOutcome`validation result`$translate`— HTTP 200 with`Parameters`containing the translation result |



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "NgGeneralHospitalTerminologyCapability",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CapabilityStatement/NgGeneralHospitalTerminologyCapability",
  "version" : "0.0.0",
  "name" : "NgGeneralHospitalTerminologyCapability",
  "title" : "Nigeria Core General Hospital Terminology Service Capability",
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
  "description" : "Minimum computable FHIR requirements for the Nigeria Core Terminology Service role in General Hospital facilities.",
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
  "purpose" : "Defines the computable Nigeria Core requirements for the Nigeria Core Terminology Service\nrole in General Hospital facilities. Supports coded-data validation lookup expansion and concept translation.\n\nThis CapabilityStatement supports implementation, procurement, vendor onboarding,\nSANDBOX FHIR configuration, interoperability testing, and automated conformance\nassessment. A deployed server SHALL expose only capabilities actually implemented\nby the deployment in its runtime /metadata response.",
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml"],
  "patchFormat" : ["application/json-patch+json", "application/xml-patch+xml"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "Nigeria Core Nigeria Core Terminology Service requirements for General Hospital facilities. Provides terminology lookup expansion code validation and ConceptMap translation.\n\nReference Policy: systems SHALL support literal FHIR references and logical\nidentifier-based references. Same-server and same-Bundle relationships SHOULD\nuse Reference.reference. Cross-platform relationships MAY additionally use\nReference.identifier with stable national, programme, regulator-issued, or local\nidentifiers. External absolute references are not assumed to be resolvable unless\nrequired by an exchange agreement or a more specific CapabilityStatement.\n\nSearch Policy: supported searches SHALL follow FHIR R4 semantics. Search success\nreturns HTTP 200 with Bundle.type = searchset. Search failures SHALL return an\nappropriate HTTP 4xx/5xx response with OperationOutcome. Servers SHALL document\nrequired filters and SHALL NOT apply undocumented hidden filters.\n\nOperation Policy: the referenced OperationDefinition is authoritative for scope,\nparameters, input types, output types, and cardinalities. Failed operations SHALL\nreturn an appropriate HTTP 4xx/5xx response with OperationOutcome.",
    "security" : {
      "description" : "Production systems SHALL authenticate and authorise access according to Nigeria\nCore security guidance and applicable national, programme, organisational, and\nregulatory policy. Access controls SHOULD consider user, role, organisation,\nfacility, geography, purpose, consent, and data sensitivity. Communication over\nopen networks SHALL protect confidentiality and integrity."
    },
    "resource" : [{
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
        "documentation" : "Success: HTTP 200 with Parameters containing the validation result. Failure: HTTP 4xx/5xx with OperationOutcome. Inputs and outputs SHALL conform to the referenced OperationDefinition."
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
