# Basic Provenance - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* **Basic Provenance**

## Basic Provenance

### Provenance in Nigeria Core

The FHIR [Provenance] Resource tracks information about the activity that created, updated, transformed, transmitted, or otherwise affected a version of a resource. It describes the entities and agents involved in the activity and supports trust, accountability, audit, reconciliation, and safe reuse of health data.

FHIR resources also contain elements that represent “small-p provenance” information about how the resource was created, authored, recorded, reported, performed, or obtained. These elements may overlap with the formal `Provenance` resource.

This page provides abridged guidance on two levels of provenance in Nigeria Core:

1. **Organizational-level provenance**, using the FHIR`Provenance`resource to identify where data came from, who transmitted it, and which organisation or system made the latest meaningful update.
1. **Individual-level provenance**, using resource-specific elements to identify the person, role, device, patient, related person, facility, or organisation associated with the clinical or administrative action.

Nigeria Core implementers **SHOULD** support provenance where data are exchanged across systems, incorporated into a Shared Health Record, used for referrals, submitted to registries, used for claims, transformed by an interoperability layer, or relied upon for public health, regulatory, or clinical decision-making.

### Organizational-Level Provenance

Nigeria Core Provenance focuses on a practical subset of elements that communicate the most useful provenance information for real-world exchange. In many cases, the most important information is the “last hop”: the last organisation, system, or actor that made a meaningful update or transmitted the data to the receiving system.

Full end-to-end provenance may require the original creator and every intermediary system that received, transformed, or redistributed the data. Nigeria Core does not require full chain provenance for every use case, but systems **SHOULD** preserve and exchange it where available, especially for Shared Health Record, registry, claims, regulator, and programme reporting workflows.

#### Key Provenance Elements

The guidance for Provenance in Nigeria Core focuses on the following key elements:

| | | |
| :--- | :--- | :--- |
| Target | Resource or resources the Provenance record supports | `Provenance.target` |
| Timestamp | Date and time the activity was recorded | `Provenance.recorded` |
| Author | Person, device, or system responsible for creating, updating, or accepting the information | `Provenance.agent.who` |
| Author Organisation | Organisation, facility, programme, regulator, or platform the author acted on behalf of | `Provenance.agent.onBehalfOf` |
| Transmitter | System, platform, HIE, registry, or gateway that transmitted the information | `Provenance.agent.who` |
| Transmitter Organisation | Organisation responsible for the transmission | `Provenance.agent.onBehalfOf` |
| Activity | Type of activity performed, such as create, update, transform, transmit, reconcile, or import | `Provenance.activity` |
| Entity | Source data, document, Bundle, registry record, or external system used as input | `Provenance.entity` |

Where available, agents **SHOULD** be represented using Nigeria Core profiles such as `Practitioner`, `PractitionerRole`, `Organization`, `Device`, `RelatedPerson`, or `Patient`.

Identifiers **SHOULD** use recognised national, regulator, programme, facility, or local identifiers where available.

### Use Cases

Nigeria Core provenance is particularly important for the following use cases:

* Shared Health Record contribution and retrieval
* Referral and counter-referral
* Clinical information reconciliation
* Health Information Exchange redistribution
* HIE or integration-layer transformation
* Facility registry and health workforce registry updates
* ePrescription, ePharmacy, and dispensing workflows
* Claims, insurance, and payer workflows
* Public health and programme reporting
* Laboratory, imaging, and diagnostic reporting
* Offline data capture and later synchronization
* Sandbox, Connectathon, and conformance testing

### Clinical Information Reconciliation and Incorporation

Clinical Information Reconciliation and Incorporation allows a clinician or system to review information received from external sources and incorporate selected information into a local patient record.

Examples include:

* A referral hospital incorporating medication, allergy, diagnosis, and laboratory information from a PHC.
* A state Shared Health Record receiving clinical data from several EMRs.
* A clinician reconciling medication history from a pharmacy, patient report, and hospital record.
* A programme system incorporating immunization, HIV, TB, malaria, or MNCH data from facility systems.

When a clinician reviews and accepts external data into the local record, the accepting clinician or system may become the latest author for the reconciled resource. However, the original data source **SHOULD** still be preserved using `Provenance.entity`, `Provenance.agent`, or other appropriate metadata.

Example query to retrieve resources with associated provenance:

```
GET [base]/AllergyIntolerance?patient=[id]&_revinclude=Provenance:target

```

Systems **SHOULD** support provenance for reconciled information such as:

* Allergies and intolerances
* Problems and diagnoses
* Medications
* Immunizations
* Procedures
* Laboratory results
* Referrals
* Care plans
* Clinical notes, where applicable

Clinical notes that are merely stored or redistributed without content change **SHOULD** retain their original author and author organisation.

### HIE and Shared Health Record Redistribution

A Health Information Exchange or Shared Health Record may receive information from one system and redistribute it to other authorised systems without changing the clinical content.

Where no clinical content is changed, the preferred provenance pattern is:

* `Provenance.agent.type = author` 
* `Provenance.agent.who` identifies the practitioner, device, patient, or system that authored the content where known.
* `Provenance.agent.onBehalfOf` identifies the facility, programme, regulator, or organisation the author acted for.
 
* `Provenance.agent.type = transmitter` 
* `Provenance.agent.who` identifies the HIE, Shared Health Record, registry, or platform that transmitted the data.
* `Provenance.agent.onBehalfOf` identifies the organisation responsible for that transmission.
 

The `Provenance.target` and `Provenance.recorded` elements **SHOULD** be included for all Provenance records.

Where the original author is not available, the transmitting organisation or system **SHOULD** still provide the best available source information and avoid falsely claiming authorship of clinical content.

### HIE or Integration-Layer Transformation

Transformation occurs when a system converts source data from one format or model into another. Examples include:

* HL7 v2 laboratory result to FHIR Observation and DiagnosticReport.
* Paper form or spreadsheet import into FHIR resources.
* DHIS2 or programme data transformed into FHIR reporting resources.
* CDA or PDF metadata indexed as DocumentReference.
* Local EMR schema transformed into Nigeria Core profiles.
* Bundle validation, normalisation, or enrichment by an interoperability layer.

Transformation may change how authorship is represented. The transforming system **SHOULD** preserve the original source and identify itself as the assembler, transformer, transmitter, or responsible system using appropriate `Provenance.agent.type` values.

Systems **SHOULD** not overwrite the original clinical author unless the content has been clinically reconciled or re-authored by an authorised person or organisation.

### Registry Provenance

Nigeria Core supports interaction with national, state, programme, and regulator registries, including facility, workforce, provider, pharmacy, payer, and organisation registries.

For registry data, systems **SHOULD** record:

* The registry source.
* The responsible organisation or regulator.
* The date and time of verification or lookup.
* The identifier used for lookup.
* The version or status of the registry record where available.
* Whether the data was imported, verified, corrected, or updated.

Registry provenance is important for:

* Health Facility Registry references.
* Health Workforce Registry references.
* Professional council registration checks.
* Pharmacy and ePharmacy verification.
* Facility licensing and accreditation.
* Payer and provider verification.
* Programme participation and eligibility checks.

### Bundle and Synchronization Provenance

Nigeria’s decentralised and hybrid architecture may involve offline-first systems, local facility servers, state-level repositories, programme repositories, and national services. Data may be captured offline and synchronized later.

For Bundle submission, synchronization, and import workflows, systems **SHOULD** preserve:

* Source system.
* Source facility or organisation.
* Submitter.
* Submission date and time.
* Capture date and time where different from submission time.
* Transformation or validation performed.
* Conflict resolution decisions.
* Receiving system.
* Version of the profile or implementation guide used.
* Validation outcome or OperationOutcome reference where applicable.

Where data are synchronized after offline capture, systems **SHOULD** distinguish the clinical event time from the synchronization time.

### Individual-Level Provenance

Many FHIR resources include elements that communicate individual-level provenance. These “small-p provenance” elements may identify who authored, recorded, performed, requested, reported, administered, dispensed, interpreted, or verified an event.

Examples include:

| | |
| :--- | :--- |
| Clinical notes | `DocumentReference.author`,`DocumentReference.custodian` |
| Diagnostic reports | `DiagnosticReport.performer`,`DiagnosticReport.resultsInterpreter` |
| Observations | `Observation.performer` |
| Medication requests | `MedicationRequest.requester`,`MedicationRequest.reported[x]`,`MedicationRequest.recorder` |
| Medication dispense | `MedicationDispense.performer`,`MedicationDispense.authorizingPrescription` |
| Medication administration | `MedicationAdministration.performer` |
| Service requests | `ServiceRequest.requester`,`ServiceRequest.performer` |
| Procedures | `Procedure.performer`,`Procedure.recorder` |
| Immunization | `Immunization.performer`,`Immunization.recorded`,`Immunization.primarySource` |
| Conditions | `Condition.recorder`,`Condition.asserter` |
| AllergyIntolerance | `AllergyIntolerance.recorder`,`AllergyIntolerance.asserter` |
| Encounters | `Encounter.participant`,`Encounter.serviceProvider` |
| Claims | `Claim.provider`,`Claim.enterer`,`Claim.insurer` |

Where a system captures these elements, it **SHOULD** exchange them using the applicable Nigeria Core Profile. Where the individual role is important, the referenced resource **SHOULD** contain sufficient role information, such as `PractitionerRole`, `Organization`, `Location`, `Device`, `Patient`, or `RelatedPerson`.

### Provenance for Patient-Reported and Community-Reported Data

Some data may be reported by a patient, caregiver, related person, community health worker, or non-clinical actor.

Systems **SHOULD** distinguish patient-reported or community-reported information from provider-authored information using the appropriate resource elements. Examples include:

* `MedicationRequest.reported[x]`
* `Immunization.primarySource`
* `Condition.asserter`
* `AllergyIntolerance.asserter`
* `Observation.performer`
* `QuestionnaireResponse.author`
* `Provenance.agent`

Patient-reported or community-reported data may still be clinically useful, but receiving systems **SHOULD** display or process it with its source clearly identified.

### Querying Provenance

Clients may request Provenance records using `_revinclude` where supported.

Examples:

```
GET [base]/Observation?patient=[id]&_revinclude=Provenance:target
GET [base]/MedicationRequest?patient=[id]&_revinclude=Provenance:target
GET [base]/DocumentReference?patient=[id]&_revinclude=Provenance:target

```

Servers **SHOULD** document Provenance search capabilities in their CapabilityStatement.

### Privacy, Security, and Audit

Provenance may contain sensitive information about patients, providers, facilities, organisations, regulators, devices, locations, or source systems. Systems **SHALL** protect Provenance records using the same security and access control expectations applied to the target resource.

Systems **SHOULD**:

* Limit Provenance access to authorised users and systems.
* Avoid exposing sensitive organisational, provider, or patient information unnecessarily.
* Preserve Provenance for audit and accountability.
* Protect Provenance records from unauthorised alteration or deletion.
* Use synthetic or anonymised Provenance data in public sandbox and Connectathon environments.
* Ensure that Provenance and `AuditEvent` are complementary: Provenance explains the source and activity related to data, while AuditEvent records access and system events.

### Implementation Notes for Nigeria

Nigeria Core implementers should consider the following:

* Use `Provenance` where data cross organisational, state, programme, registry, or system boundaries.
* Preserve the original clinical author where content is redistributed without clinical change.
* Identify the HIE, Shared Health Record, registry, or integration layer as transmitter or assembler where appropriate.
* Use resource-specific “small-p provenance” elements for individual authorship and roles.
* Preserve registry lookup and verification provenance where facility, provider, pharmacy, payer, or regulator identifiers are used.
* Distinguish event time, authoring time, submission time, transformation time, and synchronization time where relevant.
* Record Provenance for reconciled clinical information, especially allergies, conditions, medications, immunizations, and clinical notes.
* Include Provenance in sandbox and conformance testing where workflows involve transformation, reconciliation, registry validation, or Shared Health Record exchange.

Footnotes

