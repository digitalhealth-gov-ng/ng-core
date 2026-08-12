# Clinical Notes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* **Clinical Notes**

## Clinical Notes

This PLACEHOLDER section provides implementers with important definitions, requirements, and guidance on creating, using, searching, and sharing clinical notes in Nigeria Core.

### Clinical Notes

Clinical notes are a key component in communicating a patient's current status, clinical history, care plan, referral context, diagnostic findings, treatment decisions, and follow-up needs.

In the context of Nigeria Core, the term **clinical notes** refers to the wide variety of documents and narrative records generated on behalf of a patient during care delivery, referral, reporting, diagnostics, community health, pharmacy, public health, and health programme workflows. These may include structured notes, narrative-only notes, scanned notes, handwritten notes, discharge documents, referral notes, diagnostic reports, and attachments stored in existing systems.

Nigeria Core does not define the full content requirements for each note type. Instead, this guide focuses on how systems expose, reference, retrieve, and exchange clinical notes that already exist in EMRs, EHRs, laboratory systems, imaging systems, community health applications, referral platforms, shared health records, and health programme repositories (eg. Nigeria HIV data repository, Nigeria Immunization registry etc.).

Nigeria Core recommends support for a minimum set of common clinical note types to promote consistent access across systems.

Servers **MAY** support, the following common clinical notes where applicable to their setting:

1. Consultation Note
1. Discharge Summary
1. History and Physical Note
1. Progress Note
1. Procedure Note
1. Surgical Operation Note
1. Emergency Department Note
1. Referral Note
1. Nurse Note
1. Community Health Worker Note
1. Antenatal Care Note
1. Immunization Encounter Note
1. Medication Review or Pharmacy Note
1. Care Plan Note
1. Death Summary or Mortality Review Note, where applicable

Where international terminology codes are available, systems **SHOULD** use standard codes such as LOINC codes. Where a required note type is not available in an adopted international terminology, systems **MAY** use a Nigeria Core CodeSystem or programme-specific CodeSystem, provided that the system URI, code, and display are clearly defined.

Servers **MAY** also support diagnostic report categories relevant to Nigerian care delivery and programme workflows, including:

1. Laboratory
1. Radiology or Imaging
1. Pathology
1. Cardiology
1. Microbiology
1. Other diagnostic or procedure reports supported by the implementation

A DiagnosticReport category query allows a Client to retrieve multiple diagnostic reports in a single query. A DocumentReference query allows a Client to retrieve narrative notes, scanned notes, attachments, and documents associated with a patient.

### FHIR Resources to Exchange Clinical Notes

Nigeria Core uses the FHIR `DocumentReference` and `DiagnosticReport` resources as the primary mechanisms for exchanging clinical notes and reports.

#### DocumentReference

`DocumentReference` is the preferred resource when the note or document is broader than a specific diagnostic order or diagnostic report. It can point to a short note, a scanned document, an XHTML narrative, a PDF, a CDA document, a Composition, or another Binary resource.

Examples of content suitable for `DocumentReference` include:

* Consultation notes
* Referral notes
* Discharge summaries
* Progress notes
* Nursing notes
* Community health worker notes
* Antenatal care notes
* Care plans
* Scanned clinical documents
* External clinical documents
* Paper forms digitised into an EMR
* Patient-held or facility-held clinical summaries

#### DiagnosticReport

`DiagnosticReport` is preferred where the content represents a diagnostic service, investigation, coded result interpretation, or report associated with laboratory, imaging, pathology, cardiology, microbiology, or other diagnostic workflows.

The `DiagnosticReport.result` element supports links to discrete results such as `Observation` resources. The `DiagnosticReport.presentedForm` element can represent the complete narrative report or attachment.

Examples of content suitable for `DiagnosticReport` include:

* Laboratory reports
* Radiology or imaging reports
* Pathology reports
* Microbiology reports
* Cardiology reports
* Procedure reports where results are represented as a diagnostic report
* Narrative reports linked to discrete observations

### Resource Selection

Nigeria Core adopts the same general resource selection pattern used by major FHIR implementation guides:

* Use `DocumentReference` to index and retrieve broad clinical notes, scanned documents, attachments, and narrative documents.
* Use `DiagnosticReport` for diagnostic reports that may include discrete results and a narrative report.
* Use `Composition` where a structured clinical document needs to be represented and exchanged.

The main design goal is to make it possible for a Client to answer questions such as:

* What clinical notes exist for this patient?
* What referral note accompanied this patient?
* What discharge summary was issued after admission?
* What diagnostic reports are available?
* What document was uploaded from a paper record?
* What note should be added to the Shared Health Record?

Because Nigerian systems may store notes as text, XHTML, PDF, scanned images, CDA documents, or structured FHIR documents, `DocumentReference` and `DiagnosticReport` serve as practical index resources to the underlying content.

### Scanned and Narrative-Only Reports

There is no single best practice for representing a scanned or narrative-only report because system implementations vary. Some systems treat every scanned clinical document as `DocumentReference`. Other systems store scanned laboratory, pathology, or radiology reports as `DiagnosticReport`.

To support consistent access, if a scanned or narrative-only diagnostic report is exposed as a `DiagnosticReport.presentedForm.url`, the same attachment **SHOULD** also be discoverable through `DocumentReference.content.attachment.url` where this is necessary to prevent Clients from missing clinically relevant information.

This approach is especially useful where:

* Paper laboratory reports are scanned into an EMR.
* Radiology or pathology reports are uploaded as PDFs.
* Referral forms are scanned and stored as attachments.
* Historical paper records are digitised.
* Programme reports are stored as documents rather than structured resources.

Not all documents stored through `DocumentReference` should be exposed through `DiagnosticReport`. For example, an insurance card, consent form, administrative letter, or patient registration document may be stored as `DocumentReference` but should not be represented as `DiagnosticReport`.

### Support Requirements

Systems that support clinical notes **SHOULD** implement the Nigeria Core DocumentReference Profile and support the minimum common clinical note types relevant to their care setting.

Systems that support diagnostic reporting **SHOULD** implement the Nigeria Core DiagnosticReport Profile and support diagnostic report categories relevant to their services, such as laboratory, radiology, pathology, cardiology, and microbiology.

Systems **MAY** support additional note and report types required by:

* National programmes
* State systems
* Facility workflows
* Regulators
* Payers
* Shared Health Record implementations
* Referral networks
* Community health platforms
* Sandbox or Connectathon test tracks

Servers that support `DiagnosticReport` **SHOULD** include the clinical note narrative or report attachment in `DiagnosticReport.presentedForm` when the narrative report exists.

Servers that support `DocumentReference` **SHOULD** include a retrievable attachment, reference, or location in `DocumentReference.content.attachment`.

Where a Binary endpoint is used for note content, access to the Binary **SHALL** be protected using the same security and consent rules that apply to the indexing resource.

### Search

The standard FHIR [search] API retrieves clinical notes and reports. Nigeria Core CapabilityStatements and profile "Quick Start" sections define the required or recommended search parameters.

Common Client search scenarios include:

1. A Client interested in all clinical notes for a patient: `GET [base]/DocumentReference?patient=[id]&category=clinical-note`
1. A Client interested in discharge summaries for a patient: `GET [base]/DocumentReference?patient=[id]&type=http://loinc.org|18842-5`
1. A Client interested in referral notes for a patient: `GET [base]/DocumentReference?patient=[id]&type=http://loinc.org|57133-1`
1. A Client interested in laboratory reports for a patient: `GET [base]/DiagnosticReport?patient=[id]&category=http://terminology.hl7.org/CodeSystem/v2-0074|LAB`
1. A Client interested in radiology or imaging reports for a patient: `GET [base]/DiagnosticReport?patient=[id]&category=http://terminology.hl7.org/CodeSystem/v2-0074|RAD`
1. A Client interested in notes updated since a specific date: `GET [base]/DocumentReference?patient=[id]&_lastUpdated=ge2026-01-01`
1. A Client interested in diagnostic reports updated since a specific date: `GET [base]/DiagnosticReport?patient=[id]&_lastUpdated=ge2026-01-01`

Servers **SHOULD** support search by patient, type, category, date, status, and `_lastUpdated` where applicable.

Clients **SHOULD** use `_include` where supported to retrieve related resources such as Patient, Encounter, Practitioner, Organization, Location, or Binary references.

### Determining Server Note and Report Types

In addition to inspecting a Server CapabilityStatement, a Client **MAY** determine note and report types supported by a Server by invoking the standard FHIR ValueSet Expansion (`$expand`) operation where supported.

A Server claiming support for Nigeria Core clinical note exchange **SHOULD** support `$expand` for note type and report type discovery where the terminology server or FHIR server provides this capability.

#### Discovering Note and Report Types

The note and report types for a particular Server may be discovered by invoking: `GET [base]/ValueSet/$expand?context=[context]&contextDirection=[contextDirection]`

Where:

* `contextDirection=outgoing` is used for read operations.
* `contextDirection=incoming` is used for write operations.
* `context` identifies the profile element for which note or report type support is being discovered.

#### Discovering Server Read and Write Formats

The read and write formats for a particular Server may be discovered by invoking `$expand` for content type contexts where supported.

Examples of content types include:

* `text/plain`
* `text/html`
* `application/xhtml+xml`
* `application/pdf`
* `application/json`
* `application/xml`
* `text/markdown`
* `image/jpeg`
* `image/png`

Programme guides **SHOULD** document allowed formats for specific workflows. For example, a national referral workflow may permit PDF and XHTML attachments, while a Shared Health Record workflow may require structured FHIR resources plus XHTML narrative.

### Clinical Notes in Referral Workflows

Referral workflows are a priority use case for Nigeria Core. Referral notes may be exchanged using `DocumentReference`, `ServiceRequest`, `Task`, `Composition`, or a Bundle containing these resources.

A referral note **SHOULD** include or reference:

* Patient
* Referring facility
* Receiving facility
* Referring practitioner or care team
* Reason for referral
* Relevant clinical findings
* Diagnosis or suspected diagnosis
* Medications
* Allergies
* Vital signs or observations
* Laboratory or imaging results, where available
* Urgency or priority
* Transport or care instructions
* Date and time of referral

Where the referral workflow uses `ServiceRequest` and `Task`, the referral note may be represented as a `DocumentReference` linked to the request, task, encounter, or patient.

### Clinical Notes in Community Health Workflows

Community health systems may generate notes during household visits, outreach, immunization sessions, antenatal care, nutrition follow-up, malaria case management, TB screening, or community referral.

Community health notes **SHOULD** be structured where possible, but may also include narrative. Where notes are collected offline and synchronized later, systems **SHOULD** preserve:

* Author or recorder
* Date and time of capture
* Facility, ward, settlement, or service area
* Programme context
* Synchronization date and time
* Source application or device
* Any changes made during synchronization

Community health notes that become part of a patient’s longitudinal record **SHOULD** be exposed through `DocumentReference`, `Encounter`, `Observation`, `Condition`, `ServiceRequest`, `CarePlan`, or other appropriate Nigeria Core Profiles.

### Clinical Notes and the Nigeria Shared Health Record

Clinical notes may be contributed to or retrieved from a Nigeria Shared Health Record where authorised.

Shared Health Record implementations **SHOULD** include only notes relevant to continuity of care, referral, emergency care, patient access, programme follow-up, or longitudinal record use.

Systems **SHOULD** avoid sending excessive, duplicated, low-value, or sensitive narrative content to the Shared Health Record unless needed for care continuity and authorised by policy.

Shared Health Record note exchange **SHOULD** include appropriate metadata:

* Patient
* Encounter
* Author
* Custodian
* Facility or organisation
* Date and time
* Type
* Category
* Security label, where needed
* Consent or access restriction, where applicable
* Provenance

### Privacy and Security for Clinical Notes

Clinical notes often contain sensitive information that may not be present in structured fields. Notes may include HIV status, reproductive health information, mental health information, family history, social circumstances, safeguarding concerns, financial information, identifiers, or details about third parties.

Systems **SHALL** protect clinical notes according to applicable privacy, consent, access control, and security requirements.

Systems **SHOULD**:

* Apply role-based and organisation-based access control.
* Respect consent and purpose-of-use restrictions.
* Apply security labels where special handling is required.
* Avoid exposing sensitive note content in public dashboards, logs, exports, or notifications.
* Avoid using real clinical notes in sandbox or public testing environments unless explicitly authorised.
* Use synthetic, anonymised, or pseudonymized notes for testing, training, and Connectathon scenarios.
* Audit access to clinical notes and attachments.
* Protect Binary endpoints and attachment URLs.

Narrative text **SHALL** be treated with the same level of protection as structured clinical data.

### Provenance and Authorship

Clinical notes **SHOULD** include metadata that identifies who authored, recorded, authenticated, or submitted the note.

Where appropriate, implementers **SHOULD** use:

* `DocumentReference.author`
* `DocumentReference.custodian`
* `DocumentReference.date`
* `DocumentReference.context.encounter`
* `DiagnosticReport.performer`
* `DiagnosticReport.resultsInterpreter`
* `Provenance`
* `AuditEvent`

Where a note is derived from another source, transformed, translated, scanned, or imported, systems **SHOULD** preserve source attribution and transformation history.

### Language Support for Clinical Notes

Nigeria is multilingual. Clinical notes may be created in English or in local languages, especially in community health, patient-facing, counselling, education, and referral contexts.

Systems **SHOULD** populate the resource `language` element where the language of the note is known.

Systems **MAY** use FHIR language and translation extensions where a note, display, or attachment title is translated.

Clinical notes **SHOULD NOT** be automatically translated for care delivery without appropriate human review or safety controls where mistranslation could affect diagnosis, treatment, referral, or medication use.

### Attachments and Binary Content

Clinical note attachments may be represented using `Attachment` elements and may reference FHIR `Binary` resources or secure external URLs.

Attachment metadata **SHOULD** include:

* `contentType`
* `language`, where known
* `title`
* `creation`
* `url` or inline data
* `size`, where available
* `hash`, where available

Systems **SHOULD NOT** expose public, unauthenticated URLs for clinical note content.

If an external document repository is used, the FHIR Server **SHOULD** ensure that links are secure, access-controlled, auditable, and durable enough for the intended workflow.

### Implementation Notes

Nigeria Core implementers should consider the following:

* Clinical note exchange should support both structured and unstructured health information.
* DocumentReference should be used as the primary index for broad clinical notes and scanned documents.
* DiagnosticReport should be used for diagnostic reports, especially when discrete results are linked.
* Referral notes should be discoverable and exchangeable across primary, secondary, and tertiary care.
* Community health notes should be integrated into patient records where clinically relevant.
* Programme guides should define note types, ValueSets, and examples for their specific workflows.
* Shared Health Record implementations should include only clinically relevant and authorised notes.
* Sandbox and Connectathon environments should use synthetic or anonymised clinical notes.
* Vendors should validate clinical note resources against Nigeria Core Profiles before production exchange.

