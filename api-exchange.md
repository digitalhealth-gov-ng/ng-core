# API & Swagger - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* **API & Swagger**

## API & Swagger

### Purpose

This page provides a developer-facing Swagger/OpenAPI reference for the Nigeria Core FHIR sandbox. It is intended for vendors, programme teams, implementers, testers, and Connectathon participants who need a quick way to understand and test the major API patterns in this Implementation Guide.

The OpenAPI specification remains inside this Markdown file as both embedded JSON and visible YAML, so the page remains useful even where JavaScript is blocked.

### Scope

The Swagger reference covers FHIR capability discovery, patient lookup and matching, NG Patient Summary and IPS-aligned Bundle exchange, portable certificates, Bundle validation and submission, registries, terminology, clinical exchange, and FHIR-to-NHMIS/DHIS2 reporting adapter testing.

### Visible Swagger Endpoint Summary [DRAFT]

| | | | |
| :--- | :--- | :--- | :--- |
| `GET` | `/metadata` | Capability | Get FHIR CapabilityStatement |
| `GET` | `/Patient` | Patient | Search patients |
| `POST` | `/Patient` | Patient | Create patient |
| `GET` | `/Patient/{id}` | Patient | Read patient |
| `POST` | `/Patient/$match` | Patient | Match patient |
| `POST` | `/Patient/{id}/$generate-ng-patient-summary` | NG Patient Summary / IPS | Generate NG Patient Summary |
| `GET` | `/DocumentReference` | NG Patient Summary / IPS, Certificates | Search summaries and certificates |
| `POST` | `/Patient/{id}/$generate-certificate` | Certificates | Generate portable certificate |
| `POST` | `/DocumentReference/{id}/$verify-certificate` | Certificates | Verify portable certificate |
| `POST` | `/Bundle/$validate-ng-bundle` | Bundles | Validate Nigeria Core Bundle |
| `POST` | `/Bundle/$submit-ng-bundle` | Bundles | Submit Nigeria Core Bundle |
| `POST` | `/Bundle/$resolve-conflicts` | Bundles | Resolve Bundle conflicts |
| `POST` | `/Bundle/$export-ng-bundle` | Bundles | Export Nigeria Core Bundle |
| `POST` | `/Bundle/$remove-obsolete-bundles` | Bundles | Remove obsolete test Bundles |
| `GET` | `/Organization` | Registries | Search facilities and organisations |
| `POST` | `/Organization/$verify` | Registries | Verify facility or organisation |
| `GET` | `/Practitioner` | Registries | Search practitioners and health workers |
| `POST` | `/Practitioner/$verify` | Registries | Verify practitioner |
| `GET` | `/Immunization` | Clinical, Certificates | Search immunizations |
| `GET` | `/Observation` | Clinical | Search observations |
| `GET` | `/MedicationRequest` | Clinical | Search medication requests |
| `GET` | `/ValueSet/$expand` | Terminology | Expand ValueSet |
| `GET` | `/ValueSet/$validate-code` | Terminology | Validate code |
| `GET` | `/ConceptMap/$translate` | Terminology | Translate code |
| `POST` | `/Measure/$submit-ng-report` | Reporting | Submit FHIR-derived NHMIS/DHIS2 report |

### Key Testing Scenarios

| | |
| :--- | :--- |
| Capability discovery | `GET /metadata` |
| Patient lookup and matching | `GET /Patient`,`POST /Patient/$match` |
| NG Patient Summary generation | `POST /Patient/{id}/$generate-ng-patient-summary` |
| Summary and certificate discovery | `GET /DocumentReference` |
| Bundle validation and submission | `POST /Bundle/$validate-ng-bundle`,`POST /Bundle/$submit-ng-bundle` |
| Bundle export and conflict resolution | `POST /Bundle/$export-ng-bundle`,`POST /Bundle/$resolve-conflicts` |
| Facility and provider verification | `Organization/$verify`,`Practitioner/$verify` |
| Terminology testing | `ValueSet/$expand`,`ValueSet/$validate-code`,`ConceptMap/$translate` |
| Certificate testing | `$generate-certificate`,`$verify-certificate`,`GET /Immunization` |
| FHIR-to-NHMIS/DHIS2 reporting | `POST /Measure/$submit-ng-report` |

### NG Patient Summary and IPS Testing [DRAFT]

Because the NG Patient Summary is central to this IG, sandbox testing **SHOULD** include generation, validation, and consumption of a FHIR document Bundle that contains a `Composition` and the required data blocks.

Minimum expectations include:

* `Bundle.type = document`.
* The first Bundle entry is a `Composition`.
* The patient resource is present.
* Mandatory NG Patient Summary data blocks are represented.
* Known absence or unknown status is represented where required.
* Originating organisation and creation date are present.
* Author, custodian, and Provenance are included where applicable.
* Programme-specific extensions do not break generic NG Patient Summary consumption.
* Resources validate against Nigeria Core and applicable IPS-aligned profiles.

### Certificate Testing [DRAFT]

Portable certificates are focused, verifiable documents derived from Nigeria Core and programme-specific profiles. Certificate sandbox testing **SHOULD** include certificate generation, retrieval using `DocumentReference`, QR code or verification payload testing, issuer verification, patient identity minimisation, verification of vaccine, laboratory, programme, or service events, validity period handling, and privacy review.

### Visible OpenAPI YAML Specification

Coming soon

### Connectathon and Sandbox Notes

Nigeria Core sandbox testing should follow the practical testing style environments:

* Use synthetic patients, facilities, providers, and programme records.
* Publish clear test tracks.
* Provide reference examples.
* Provide validation feedback using `OperationOutcome`.
* Test both successful and failing submissions.
* Test PHC, secondary, tertiary, registry, programme, and Shared Health Record workflows.
* Record conformance results and implementation feedback.
* Use the findings to improve profiles, operations, terminology, examples, and guidance.

### Implementation Notes

Systems implementing this Swagger view **SHOULD** also publish a FHIR `CapabilityStatement` and, where custom operations are used, corresponding `OperationDefinition` resources.

The Swagger/OpenAPI representation is provided to help developers test the sandbox. It does not replace the computable IG package or formal FHIR conformance artefacts.

