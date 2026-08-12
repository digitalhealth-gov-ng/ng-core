# Registries & Shared Services - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* **Registries & Shared Services**

## Registries & Shared Services

### Purpose

This page provides implementation guidance for using Nigeria Core with national, state, programme, regulator, and institutional registries and shared services.

Nigeria Core recognises that interoperability depends not only on clinical data exchange, but also on a trusted set of shared services that provide common identifiers, reference data, terminology, consent, audit, and longitudinal record linkage.

This guidance applies to shared services such as:

* Client or patient registries
* Health Facility Registry
* Health Workforce Registry
* Provider and professional regulator registries
* Organisation and programme registries
* Pharmacy, laboratory, payer, and facility licensing registries
* Terminology services
* Consent and privacy services
* Audit and Provenance services
* Nigeria Shared Health Record
* Conformance and sandbox services

### Role of Registries and Shared Services in Nigeria Core

Registries and shared services provide authoritative or reference information used by multiple digital health systems. They help reduce duplication, improve identity resolution, support reporting, improve data quality, and enable safe exchange across Nigeria’s decentralised and hybrid digital health architecture.

Nigeria Core provides FHIR profiles, identifiers, terminology, RESTful interactions, and implementation guidance for representing and interacting with these services in a consistent way.

The objective is to allow EMRs, eCHIS platforms, laboratory systems, pharmacy systems, claims systems, programme databases, DHIS2 reporting adapters, Shared Health Record platforms, and interoperability layers to reference the same trusted sources.

### Shared Service Principles

Implementers **SHOULD** apply the following principles when using registries and shared services:

* Use authoritative registries where available.
* Preserve local identifiers while adding national or regulator identifiers.
* Maintain mappings between local, programme, state, regulator, and national identifiers.
* Use FHIR resources and profiles to represent registry entities consistently.
* Use terminology services to validate and map codes.
* Apply security, consent, privacy, audit, and Provenance controls.
* Support offline and low-connectivity workflows where needed.
* Design registry integrations for decentralised and hybrid deployment.
* Validate registry-related resources in the Nigeria Core sandbox before production use.

### Overview of Key Registries and Shared Services

| | | |
| :--- | :--- | :--- |
| Client or Patient Registry | Supports patient identity, demographic lookup, matching, and longitudinal record linkage | `Patient`,`RelatedPerson`,`Person`,`Bundle`,`OperationOutcome` |
| Health Facility Registry | Provides authoritative facility identity, type, ownership, level, status, and location | `Organization`,`Location`,`OrganizationAffiliation` |
| Health Workforce Registry | Provides authoritative health worker identity, cadre, role, qualification, status, and deployment | `Practitioner`,`PractitionerRole`,`Organization`,`Location`,`Qualification` |
| Provider and Regulator Registries | Supports verification of professional registration, facility licensing, pharmacy licensing, laboratory accreditation, and other statutory registers | `Practitioner`,`PractitionerRole`,`Organization`,`Location`,`VerificationResult` |
| Terminology Service | Provides CodeSystems, ValueSets, ConceptMaps, validation, expansion, and code mapping | `CodeSystem`,`ValueSet`,`ConceptMap`,`NamingSystem`,`Parameters` |
| Consent and Privacy Service | Supports computable consent, disclosure rules, access restrictions, and purpose-based access | `Consent`,`Provenance`,`AuditEvent`,`Patient`,`RelatedPerson` |
| Shared Health Record | Supports longitudinal patient record contribution, retrieval, reconciliation, and summary generation | `Bundle`,`Composition`,`Patient`,`Observation`,`Condition`,`MedicationRequest`,`DiagnosticReport`,`DocumentReference`,`Immunization`,`AllergyIntolerance` |
| Conformance Sandbox | Supports validation, vendor onboarding, test data, reference servers, and Connectathon-style testing | `CapabilityStatement`,`StructureDefinition`,`OperationDefinition`,`TestScript`,`Bundle`,`OperationOutcome` |

### Client or Patient Registry

A Client or Patient Registry supports identity management and linkage of patient records across facilities, programmes, states, and health information systems.

Nigeria Core Patient profiles provide the baseline for representing patient demographics and identifiers. A patient registry may support:

* Patient creation and update.
* Patient lookup.
* Patient matching.
* Duplicate detection.
* Record linkage.
* Merge and unmerge workflows.
* Patient demographic updates.
* Cross-facility and cross-programme linkage.
* Shared Health Record identity resolution.

#### Recommended FHIR Resources

| | |
| :--- | :--- |
| Patient demographic record | `Patient` |
| Related person, caregiver, parent, guardian | `RelatedPerson` |
| Cross-record linkage or person-level identity | `Person`where supported |
| Search result or match candidates | `Bundle` |
| Match or validation errors | `OperationOutcome` |

#### Recommended Interactions

Patient registries **SHOULD** support appropriate read and search operations such as:

```
GET [base]/Patient/[id]
GET [base]/Patient?identifier=[system]|[value]
GET [base]/Patient?family=[family]&given=[given]&birthdate=[date]
GET [base]/Patient?phone=[phone]

```

Where patient matching is supported, registries **MAY** support the FHIR `$match` operation or another documented operation.

Example:

```
POST [base]/Patient/$match

```

#### Patient Identifier Guidance

Patient identifiers may include:

* National identifiers where legally and operationally appropriate.
* Facility medical record numbers.
* State or programme patient identifiers.
* Shared Health Record identifiers.
* Insurance or coverage identifiers.
* Community health identifiers.
* Temporary or emergency identifiers.
* Mother-child or household-linked identifiers where used by programme workflows.

Systems **SHOULD** preserve all relevant identifiers with clear `Identifier.system`, `Identifier.value`, `Identifier.type`, and `Identifier.assigner`.

### Health Facility Registry

The Health Facility Registry provides authoritative information about health facilities, service delivery locations, ownership, facility type, operational status, and geographic location.

Nigeria Core represents facility and location information using `Organization` and `Location`.

#### Recommended FHIR Resources

| | |
| :--- | :--- |
| Facility | `Organization` |
| Physical facility location | `Location` |
| Service delivery point, ward, unit, department | `Location` |
| Facility ownership or managing authority | `Organization` |
| Relationship between organisations | `OrganizationAffiliation` |
| Facility verification or accreditation status | `VerificationResult`where supported |

#### Recommended Interactions

Health Facility Registry services **SHOULD** support:

```
GET [base]/Organization/[id]
GET [base]/Organization?identifier=[system]|[value]
GET [base]/Organization?type=[code]
GET [base]/Organization?name=[name]
GET [base]/Location?organization=Organization/[id]
GET [base]/Location?identifier=[system]|[value]

```

#### Facility Identifier Guidance

Implementations **SHOULD** maintain mappings between:

* Health Facility Registry identifier.
* DHIS2 organisation unit UID.
* State facility code.
* Programme facility code.
* Facility license or regulator identifier.
* Local EMR facility identifier.
* Partner or donor programme identifiers where needed.

The Health Facility Registry identifier **SHOULD** be used as the preferred facility identifier where available.

### Health Workforce Registry

The Health Workforce Registry provides authoritative information about health workers, cadres, professional roles, qualifications, deployment, facility association, and workforce status.

Nigeria Core represents health worker information using `Practitioner` and `PractitionerRole`.

#### Recommended FHIR Resources

| | |
| :--- | :--- |
| Health worker identity | `Practitioner` |
| Role, cadre, facility assignment, programme role | `PractitionerRole` |
| Employing or hosting facility | `Organization` |
| Service delivery location | `Location` |
| Qualification or licence | `Practitioner.qualification`or profile-specific extension |
| Verification status | `VerificationResult`where supported |

#### Recommended Interactions

Health Workforce Registry services **SHOULD** support:

```
GET [base]/Practitioner/[id]
GET [base]/Practitioner?identifier=[system]|[value]
GET [base]/Practitioner?family=[family]&given=[given]
GET [base]/PractitionerRole?practitioner=Practitioner/[id]
GET [base]/PractitionerRole?organization=Organization/[id]
GET [base]/PractitionerRole?role=[code]

```

#### Workforce Identifier Guidance

Health worker identifiers may include:

* National health workforce registry identifier.
* Professional council registration number.
* State HRH database identifier.
* Facility staff identifier.
* Programme-specific provider identifier.
* Training or certification identifier.

Systems **SHOULD** distinguish between the person’s identity (`Practitioner`) and their role or assignment (`PractitionerRole`).

### Provider and Regulator Registries

Provider and regulator registries support verification of professionals, facilities, pharmacies, laboratories, payers, and other regulated actors.

Examples include:

* Medical and dental practitioner registration.
* Nursing and midwifery registration.
* Pharmacy professional registration.
* Pharmacy premises registration.
* Laboratory registration or accreditation.
* Facility licensing.
* Payer or insurance provider registration.
* Medical device distributor or facility registration where applicable.

Nigeria Core does not define every regulator-specific register, but provides a consistent way to reference and verify regulated entities.

#### Recommended Patterns

* Professionals **SHOULD** be represented as `Practitioner`.
* Professional roles, cadre, facility assignment, and scope of practice **SHOULD** be represented as `PractitionerRole`.
* Facilities, pharmacies, laboratories, payers, and regulators **SHOULD** be represented as `Organization`.
* Physical service points **SHOULD** be represented as `Location`.
* Verification outcomes **MAY** be represented using `VerificationResult` or implementation-specific verification operations.

Example verification search:

```
GET [base]/Practitioner?identifier=https://fhir.health.gov.ng/NamingSystem/mdcn|MDCN-12345
GET [base]/Organization?identifier=https://fhir.health.gov.ng/NamingSystem/pcn-premises|PCN-ABJ-0001

```

### Organisation and Programme Registries

Programme registries may define participating facilities, implementing partners, service delivery points, supported interventions, and programme-specific configurations.

Examples include:

* Immunization programme facility lists.
* HIV treatment sites.
* TB DOTS centres.
* Malaria service delivery points.
* Nutrition treatment sites.
* NHIA or payer networks.
* ePharmacy participating providers.
* Medical device testing sites.

Programme registries **SHOULD** reuse Nigeria Core `Organization`, `Location`, and `OrganizationAffiliation` patterns rather than creating separate incompatible facility lists.

### Terminology Service

A terminology service provides the controlled vocabularies and mappings needed for consistent data exchange and analytics.

Nigeria Core terminology services may support:

* National CodeSystems.
* Programme CodeSystems.
* Regulator CodeSystems.
* ValueSet expansion.
* Code validation.
* Code translation and mapping.
* ConceptMap maintenance.
* NamingSystem publication.
* Mapping between local codes and international standards.

#### Recommended FHIR Resources and Operations

| | |
| :--- | :--- |
| Publish a code system | `CodeSystem` |
| Publish a value set | `ValueSet` |
| Publish mappings | `ConceptMap` |
| Publish identifier systems | `NamingSystem` |
| Expand a value set | `ValueSet/$expand` |
| Validate a code | `ValueSet/$validate-code` |
| Translate a code | `ConceptMap/$translate` |

Example terminology interactions:

```
GET [base]/ValueSet/$expand?url=[valueSetUrl]
GET [base]/ValueSet/$validate-code?url=[valueSetUrl]&system=[system]&code=[code]
GET [base]/ConceptMap/$translate?system=[system]&code=[code]&targetsystem=[targetSystem]

```

Terminology services **SHOULD** support mapping between:

* Local EMR codes and Nigeria Core codes.
* Programme codes and national codes.
* Nigeria Core codes and international terminologies such as ICD-11, SNOMED CT, LOINC, ATC, and UCUM.
* Facility, workforce, and regulator classification codes.

### Consent and Privacy Services

Consent and privacy services support computable consent, access rules, disclosure restrictions, proxy access, purpose limitation, and patient preferences.

Nigeria Core implementations **SHOULD** use the FHIR `Consent` resource where consent needs to be exchanged, validated, stored, or enforced across systems.

Consent services may support:

* Patient consent capture.
* Consent withdrawal.
* Consent verification.
* Disclosure restrictions.
* Programme-specific consent.
* Caregiver or proxy access.
* Sensitive data restrictions.
* Purpose-of-use enforcement.
* Consent for Shared Health Record contribution.
* Consent for patient-facing access.

Example consent search:

```
GET [base]/Consent?patient=Patient/[id]&status=active

```

Sensitive workflows such as HIV, reproductive health, mental health, claims, and patient-facing access **SHOULD** define clear consent and access control rules.

### Audit and Provenance Services

Audit and Provenance services support trust, accountability, and traceability.

`Provenance` explains how a resource was created, updated, transmitted, transformed, reconciled, or imported.

`AuditEvent` records access and system activity, such as reads, searches, submissions, exports, and administrative changes.

Systems **SHOULD** record Provenance when:

* Data are submitted to a Shared Health Record.
* Data are transformed by an interoperability layer.
* Data are imported from another system.
* Registry data are verified or updated.
* Clinical information is reconciled.
* Bundle submissions are accepted or rejected.
* Programme reports are generated from source data.

Systems **SHOULD** record AuditEvent or equivalent logs when:

* A user searches for or reads patient data.
* A system submits data.
* A registry lookup occurs.
* A Bundle is exported or imported.
* A user changes permissions or roles.
* A sensitive record is accessed.
* A break-glass or emergency access workflow is used.

### Nigeria Shared Health Record

The Nigeria Shared Health Record is expected to support longitudinal patient information sharing across authorised systems and care settings. It may be based on or aligned with the International Patient Summary, while including Nigeria-specific identifiers, registry references, programme data, and consent rules.

The Shared Health Record may include:

* Patient demographics.
* Allergies and intolerances.
* Conditions and diagnoses.
* Medications.
* Immunizations.
* Procedures.
* Observations and vital signs.
* Laboratory and diagnostic reports.
* Clinical notes and discharge summaries.
* Referrals and care plans.
* Provenance and source information.

Shared Health Record implementations **SHOULD**:

* Reuse Nigeria Core profiles.
* Maintain patient identity linkage.
* Preserve facility, provider, and source system metadata.
* Support consent and access control.
* Preserve Provenance.
* Support incremental updates where appropriate.
* Avoid unnecessary duplication.
* Support reconciliation workflows.
* Provide summary views where appropriate.

### Conformance and Sandbox Services

Conformance and sandbox services support implementation readiness and vendor onboarding.

A Nigeria Core sandbox may provide:

* Reference FHIR servers.
* Synthetic patient, facility, workforce, and programme data.
* FHIR validation.
* Terminology validation.
* CapabilityStatement testing.
* Example transactions.
* Bundle validation and submission.
* Registry lookup simulation.
* SMART-on-FHIR or OAuth2 testing.
* Connectathon-style test tracks.
* Conformance scoring and feedback.

Systems participating in sandbox testing **SHOULD** validate:

* Profile conformance.
* Must Support element handling.
* Identifier usage.
* Terminology binding.
* Registry references.
* Search parameters.
* Security and access control behaviour.
* Bundle submission and validation.
* OperationOutcome handling.
* Provenance and audit behaviour where applicable.

### Registry API Patterns

Registry services may use simple read/search APIs, FHIR operations, or both.

#### Read by Logical ID

```
GET [base]/Organization/[id]
GET [base]/Practitioner/[id]
GET [base]/Patient/[id]

```

#### Search by Identifier

```
GET [base]/Organization?identifier=[system]|[value]
GET [base]/Practitioner?identifier=[system]|[value]
GET [base]/Location?identifier=[system]|[value]
GET [base]/Patient?identifier=[system]|[value]

```

#### Search by Name or Type

```
GET [base]/Organization?name=[name]
GET [base]/Organization?type=[code]
GET [base]/Practitioner?family=[family]&given=[given]
GET [base]/Location?type=[code]

```

#### Verify Entity

Where a verification operation is implemented, the operation **SHOULD** be documented using an `OperationDefinition`.

Example:

```
POST [base]/Organization/$verify
POST [base]/Practitioner/$verify

```

#### Bulk or Periodic Synchronization

Where systems need local registry copies for offline or low-connectivity operation, registries **MAY** support governed export or synchronization patterns.

Examples:

```
GET [base]/Organization?_lastUpdated=ge2026-01-01
GET [base]/PractitionerRole?_lastUpdated=ge2026-01-01
GET [base]/ValueSet?_lastUpdated=ge2026-01-01

```

Bulk export should be access-controlled, logged, and scoped to authorised use.

### Offline and Hybrid Architecture Considerations

Nigeria Core recognises that many systems may operate in low-connectivity environments. Local facility servers, state repositories, programme repositories, and national services may need to synchronize data periodically.

Implementations **SHOULD**:

* Maintain local cache of essential registry data where permitted.
* Record the version and date of cached registry data.
* Support `_lastUpdated` or other incremental update patterns.
* Preserve local identifiers and map them to national identifiers.
* Detect and resolve conflicts.
* Avoid overwriting authoritative registry updates without governance.
* Validate synchronized data against Nigeria Core profiles.
* Log synchronization events and errors.

### Governance and Stewardship

Registries and shared services require clear governance. Each registry **SHOULD** have an identified owner, steward, data update process, access policy, and change management process.

| | |
| :--- | :--- |
| Client Registry | Patient identity governance, matching rules, merge/unmerge policy, privacy, consent |
| Health Facility Registry | Facility lifecycle, ownership, licensing, location, status, DHIS2 alignment |
| Health Workforce Registry | Workforce identity, cadre, qualification, deployment, regulator linkage |
| Provider Registries | Professional registration, licence status, scope, disciplinary or status updates where applicable |
| Terminology Service | Code governance, ValueSet versioning, mapping review, programme alignment |
| Consent Service | Consent policy, patient rights, proxy access, withdrawal, audit |
| Shared Health Record | Contribution rules, retrieval rules, reconciliation, patient access, privacy |
| Sandbox | Test data governance, onboarding, conformance criteria, version control |

### Data Quality Expectations

Registry and shared service data **SHOULD** be:

* Unique where appropriate.
* Routinely updated.
* Versioned.
* Traceable to a responsible steward.
* Validated against defined rules.
* Mapped to related identifiers.
* Available through documented APIs.
* Protected according to privacy and security requirements.

Systems consuming registry data **SHOULD** handle inactive, duplicate, replaced, merged, suspended, or retired records safely.

### Security, Privacy, and Access Control

Registry and shared service APIs **SHALL** be protected using appropriate authentication, authorization, audit, and transport security.

Systems **SHOULD**:

* Use HTTPS/TLS for all API transactions.
* Authenticate client systems and users.
* Apply role-based, organisation-based, or purpose-based access control.
* Limit access to authorised data.
* Log registry lookups and updates.
* Protect sensitive identifiers.
* Avoid exposing full registry datasets publicly unless explicitly approved.
* Use synthetic data for public sandbox environments.
* Apply privacy and consent rules for patient-facing and shared record workflows.

### Implementation Notes for Nigeria

Implementers should consider the following:

* Nigeria Core should be used as the common FHIR layer for registries and shared services.
* Facility, workforce, provider, and terminology services are essential for reliable interoperability and reporting.
* Registry identifiers should be reused across EMRs, eCHIS, DHIS2, HIE, Shared Health Record, claims, pharmacy, laboratory, and programme systems.
* Programme systems should avoid creating isolated facility, workforce, or terminology lists where national or state registries already exist.
* Shared services should be tested through the Nigeria Core sandbox before production exchange.
* Registry updates should follow formal stewardship processes.
* Local identifiers should be preserved but mapped to national or authoritative identifiers.
* Systems should support progressive maturity: manual lookup, API lookup, cached synchronization, and full registry integration.

Footnotes

