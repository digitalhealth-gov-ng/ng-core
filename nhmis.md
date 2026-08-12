# Relationship with NHMIS-DHIS2 - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* **Relationship with NHMIS-DHIS2**

## Relationship with NHMIS-DHIS2

### Purpose

This page describes the relationship between the Nigeria Core FHIR Implementation Guide and Nigeria’s National Health Management Information System (NHMIS), including the national DHIS2 platform used for routine health data reporting, review, validation, and use.

Nigeria Core and NHMIS/DHIS2 serve complementary purposes:

* **Nigeria Core** defines a FHIR-based interoperability foundation for exchanging patient-level, provider-level, facility-level, program, registry, referral, medication, diagnostic, claims, and shared health record data.
* **NHMIS/DHIS2** supports routine health information management, aggregate reporting, program monitoring, data validation, performance review, dashboards, and decision-making across facility, LGA, state, and national levels.

Nigeria Core is **NOT** intended to replace **NHMIS/DHIS2**. Instead, it provides a standards-based way for EMRs, eCHIS platforms, registries, laboratory systems, pharmacy systems, logistics systems, insurance systems, and program platforms to generate, validate, and exchange data that can contribute to NHMIS reporting and data use.

### Scope and Context

Nigeria’s health information ecosystem includes multiple service delivery, reporting, and registry systems. These include facility-based EMRs, community health systems, program databases, laboratory systems, pharmacy systems, health workforce and facility registries, payer systems, and DHIS2-based national and program reporting platforms.

NHMIS/DHIS2 is primarily used for:

* Routine monthly facility reporting.
* program indicator reporting.
* LGA, state, and national review.
* Completeness, timeliness, and quality checks.
* Dashboards and performance monitoring.
* Aggregate health sector reporting.
* Data use by program managers, M&E officers, Ward Development Officers, state teams, and national DPRS/HMIS teams.

Nigeria Core supports NHMIS/DHIS2 by providing a consistent FHIR-based data model for source systems and exchange workflows that may feed into aggregate reporting, validation, analytics, and program monitoring.

### Relationship Between Nigeria Core and NHMIS/DHIS2

| | | |
| :--- | :--- | :--- |
| Primary purpose | Interoperable exchange of health data using FHIR | Routine health information reporting, analytics, and dashboards |
| Main data level | Patient-level, encounter-level, provider-level, facility-level, transaction-level, and registry-level data | Mostly aggregate reporting, with possible event or tracker use where configured |
| Main users | EMR vendors, program systems, HIEs, registries, pharmacies, laboratories, payers, shared health records, developers | Facility records officers, M&E officers, LGA/state/national HMIS teams, program managers, DPRS |
| Standards focus | FHIR profiles, terminology, identifiers, REST APIs, CapabilityStatements, examples | DHIS2 metadata, data elements, indicators, organisation units, reporting periods, datasets, validation rules |
| Governance focus | National interoperability standards, conformance, sandbox testing, program IG alignment | National HMIS reporting governance, data quality, reporting cycles, dashboard use |
| Typical exchange | FHIR REST APIs, Bundles, operations, registry lookups, shared health record transactions | DHIS2 Web API, aggregate data values, datasets, events, tracker data, analytics |

### Implementation Principle

Systems **SHOULD** capture health data once at the point of service and reuse the data for multiple authorised purposes, including patient care, referral, program monitoring, claims, public health reporting, registry updates, surveillance and NHMIS reporting.

Where feasible, source systems should generate NHMIS/DHIS2 reporting outputs from structured clinical and administrative data rather than requiring duplicate manual entry.

### Data Flow Patterns

Nigeria Core captures and supports several implementation patterns for interaction with NHMIS/DHIS2.

#### Pattern 1: Facility System to DHIS2 Aggregate Reporting

In this pattern, a facility EMR, eCHIS, laboratory system, pharmacy system, surveillance system, or program system captures structured service data using Nigeria Core-aligned profiles. A reporting adapter then aggregates the data into NHMIS/DHIS2 data elements and submits the results through the DHIS2 Web API.

Example flow:

1. Facility system captures patient-level service data.
1. Data are represented internally or externally using Nigeria Core FHIR profiles.
1. A reporting adapter maps FHIR resources to NHMIS/DHIS2 data elements.
1. Aggregate monthly values are generated for the appropriate organisation unit and reporting period.
1. Values are validated against NHMIS/DHIS2 rules.
1. Aggregate data are submitted to DHIS2.
1. Aggregate data are submitted to SORMAS.
1. LGA, state, and national teams review the data.

This pattern is suitable for EMRs, eCHIS platforms, program systems, and private-sector systems that need to submit routine reports without exposing patient-level data to DHIS2.

#### Pattern 2: Paper-to-LGA Reporting With Future Digital Alignment

In many PHC settings, service data may still be recorded on paper and submitted to LGA M&E officers for entry or review in DHIS2. Nigeria Core does not remove this workflow immediately, but provides a future-ready standard for digitising source data and aligning forms, data elements, and reporting logic.

Example flow:

1. PHC records service delivery on paper registers or summary forms.
1. Facility submits reports to LGA M&E.
1. LGA M&E reviews and enters or validates data in DHIS2.
1. State and national teams review completeness, quality, and trends.
1. As facilities digitise, Nigeria Core profiles support structured source data capture and automated reporting.

This pattern allows gradual transition from paper-based reporting to standards-based digital reporting.

#### Pattern 3: General Hospital and Tertiary System Direct Reporting

General hospitals, tertiary hospitals, specialist hospitals, and high-volume facilities may use EMRs, laboratory systems, pharmacy systems, and other digital tools. These systems can produce Nigeria Core-aligned data and submit aggregate reports directly to DHIS2.

Example flow:

1. Hospital systems capture service data during care delivery.
1. Data are mapped to Nigeria Core Profiles.
1. Facility reporting services generate DHIS2 aggregate values.
1. Facility records or M&E teams review generated reports.
1. Approved reports are submitted to DHIS2.
1. DHPRS, state HMIS, and program teams monitor data quality and performance.

#### Pattern 4: program Repository to DHIS2

Some national programs may operate dedicated repositories for immunization, HIV, TB, malaria, MNCH, nutrition, logistics, or other services. These repositories may use Nigeria Core-derived program IGs and submit approved aggregate or event-level reporting outputs to DHIS2.

program systems **SHOULD** reuse Nigeria Core profiles and map program data elements to NHMIS/DHIS2 indicators where applicable.

#### Pattern 5: Registry-Assisted Reporting

Nigeria Core supports authoritative registry references that can improve NHMIS/DHIS2 reporting quality.

For example:

* Health Facility Registry identifiers can be used to align FHIR `Organization` and `Location` resources with DHIS2 organisation units.
* Health Workforce Registry identifiers can support workforce denominator reporting, productivity analysis, and provider attribution.
* Regulator registries can support verification of facilities, practitioners, pharmacies, laboratories, and service providers.
* Terminology services can support consistent mapping of local codes to national and international standards.

### Mapping Nigeria Core Resources to NHMIS/DHIS2

The table below gives an illustrative mapping between Nigeria Core FHIR resources and common NHMIS/DHIS2 concepts.

| | | |
| :--- | :--- | :--- |
| `Organization` | Organisation unit, facility, owner, managing authority | Should align with Health Facility Registry and DHIS2 orgUnit identifiers. |
| `Location` | Facility location, service delivery point, ward, unit | Useful for facility hierarchy and service delivery location. |
| `Patient` | Person-level source data, denominator input where authorised | Patient-level data should generally be aggregated before NHMIS submission unless a governed tracker/event workflow exists. |
| `Practitioner` | Health worker, provider | May support workforce-linked reporting where authorised. |
| `PractitionerRole` | Provider role, cadre, facility assignment | Useful for HRH and productivity analysis. |
| `Encounter` | Visit, attendance, service contact | Common source for attendance and service utilisation indicators. |
| `Observation` | Data element value, vital sign, test result, assessment result | Can feed aggregate indicators or event/tracker data. |
| `Condition` | Diagnosis, disease classification | Can feed morbidity, disease surveillance, and program indicators. |
| `Procedure` | Service, intervention, operation, procedure | Can feed service delivery indicators. |
| `Immunization` | Immunization service data | Can feed immunization indicators and child health reporting. |
| `MedicationRequest` | Prescription or planned medication | Useful for clinical and program monitoring. |
| `MedicationDispense` | Medicine dispensed, pharmacy fulfilment | Can feed pharmacy, program, and claims indicators. |
| `DiagnosticReport` | Laboratory, pathology, imaging report | Can feed diagnostic service reporting and program indicators. |
| `ServiceRequest` | Referral, laboratory request, procedure request | Can support referral and service request monitoring. |
| `Task` | Workflow status, referral tracking, fulfilment status | Useful for operational workflows and status monitoring. |
| `QuestionnaireResponse` | Digital form submission | Can support program forms, surveys, assessments, and DAK-derived tools. |
| `MeasureReport` | Indicator output or report | Can be used as a FHIR representation of computed indicator results before DHIS2 submission. |
| `Bundle` | Submission package | Can package multiple related resources for validation, transformation, or reporting. |

### Mapping to DHIS2 Metadata

FHIR-to-DHIS2 mappings **SHOULD** define how Nigeria Core data elements are transformed into DHIS2 metadata.

A complete mapping **SHOULD** include:

* FHIR resource.
* FHIR profile.
* FHIR element path.
* Terminology or value set used.
* DHIS2 data element.
* DHIS2 category option combination.
* DHIS2 organisation unit.
* Reporting period.
* Aggregation rule.
* Disaggregation rule.
* Validation rule.
* Indicator formula, where applicable.
* Source program or reporting form.
* Data quality notes.
* Governance owner.

Example mapping structure:

| | | | |
| :--- | :--- | :--- | :--- |
| `Encounter` | `Encounter.serviceType` | OPD attendance data element | Count encounters by service type, facility, month, age group, and sex. |
| `Immunization` | `Immunization.vaccineCode` | Vaccine dose data element | Count administered vaccine doses by antigen, dose, facility, period, age group, and sex. |
| `Observation` | `Observation.code`+`Observation.value[x]` | Laboratory test result data element | Count test results by test type, result category, facility, and period. |
| `Condition` | `Condition.code` | Morbidity data element | Count diagnoses by condition group, facility, period, age group, and sex. |
| `MedicationDispense` | `MedicationDispense.medication[x]` | Medicine dispensed data element | Count or sum dispensed quantity by product, facility, and period. |

### Organisation Unit and Facility Alignment

Facility alignment is critical for the relationship between Nigeria Core and NHMIS/DHIS2.

Systems **SHOULD** use the Health Facility Registry as the authoritative source for facility identity where available. FHIR `Organization.identifier` and `Location.identifier` should carry nationally recognised facility identifiers and, where needed, DHIS2 organisation unit identifiers.

Implementations **SHOULD** maintain mappings between:

* Health Facility Registry identifier.
* DHIS2 organisation unit UID.
* State facility code.
* program facility code.
* Facility license or regulator identifier.
* Local EMR facility identifier.

Where facility identifiers do not match, reporting systems **SHOULD** use an approved mapping table and document the source, version, and date of the mapping.

### Workforce and Provider Alignment

Nigeria Core can support workforce-linked reporting by aligning FHIR `Practitioner` and `PractitionerRole` resources with health workforce registries and regulator registers.

This may support:

* Service delivery attribution.
* Workforce productivity analysis.
* Facility staffing denominators.
* program supervision.
* Licensing and verification.
* Linkage between attendance and service output.
* Workforce registry strengthening.

Provider-level data **SHALL** be governed carefully and should only be used for authorised reporting, performance management, quality improvement, or regulatory functions.

### Aggregate Reporting Rules

When patient-level or encounter-level data are transformed into DHIS2 aggregate data values, implementations **SHOULD** define clear aggregation rules.

Aggregation rules **SHOULD** specify:

* Inclusion criteria.
* Exclusion criteria.
* Reporting period.
* Facility attribution.
* Age and sex disaggregation.
* program disaggregation.
* Handling of duplicates.
* Handling of referrals.
* Handling of repeat visits.
* Handling of cancelled or entered-in-error records.
* Handling of missing or suppressed data.
* Validation rules.
* Approval workflow before submission.

Systems **SHOULD** preserve a traceable path from aggregate DHIS2 values back to source system counts, without exposing patient-level data unless authorised.

### Data Quality and Validation

Nigeria Core can improve NHMIS/DHIS2 data quality by supporting validation before submission.

Validation may include:

* Required FHIR profile conformance.
* Valid facility identifiers.
* Valid health worker identifiers where required.
* Valid terminology codes.
* Valid dates and reporting periods.
* Duplicate detection.
* Logical consistency checks.
* program rule validation.
* Completeness and timeliness checks.
* Cross-checks between service registers, EMRs, laboratory systems, pharmacy systems, and DHIS2 reports.

Where a system submits aggregate data to DHIS2, it **SHOULD** return or store an [OperationOutcome] or equivalent validation report for failed submissions.

### Privacy and Data Protection

NHMIS/DHIS2 reporting is typically aggregate. Patient-level data **SHOULD NOT** be submitted to aggregate NHMIS datasets unless the DHIS2 implementation is explicitly configured and governed for event or tracker data and all required privacy, consent, and security safeguards are in place.

FHIR-to-DHIS2 pipelines **SHALL** apply:

* Data minimisation.
* Role-based access control.
* Organisation-based access control.
* Audit logging.
* Secure transport.
* De-identification or aggregation where appropriate.
* Purpose limitation.
* Protection of sensitive program data.

Sensitive data such as HIV, reproductive health, mental health, claims, or identifiable patient information **SHALL** be handled according to applicable privacy, consent, legal, institutional, and program rules.

### Governance

The relationship between Nigeria Core and NHMIS/DHIS2 requires coordination between digital health, HMIS, program, registry, standards, and data governance actors.

Governance responsibilities may include:

| | |
| :--- | :--- |
| FMoHSW / NDHI | Overall digital health architecture, interoperability governance, and alignment with national digital health priorities. |
| DPRS / National HMIS | Stewardship of NHMIS reporting requirements, routine data standards, reporting cycles, dashboards, and DHIS2 governance. |
| State Ministries of Health | State-level implementation, reporting quality, facility supervision, and data use. |
| LGA M&E Teams | PHC reporting support, review, validation, feedback, and facility engagement. |
| program Teams | program-specific data elements, indicators, reporting requirements, and data use. |
| Registries and Regulators | Authoritative facility, workforce, provider, pharmacy, and related registry data. |
| Vendors and Implementers | System implementation, FHIR conformance, DHIS2 mapping, validation, and reporting integration. |
| Facilities | Source data capture, report review, correction, submission, and use. |

### Recommended API Architecture

A recommended architecture for Nigeria Core and NHMIS/DHIS2 integration includes:

1. **Source systems**such as EMRs, eCHIS, LIS, pharmacy systems, logistics systems, claims systems, and program platforms.
1. **Nigeria Core FHIR API layer**exposing standards-based resources, Bundles, profiles, and operations.
1. **Registry services**for facility, workforce, provider, terminology, and program reference data.
1. **FHIR-to-NHMIS mapping service**that transforms FHIR resources into DHIS2 aggregate, event, tracker, or analytics payloads.
1. **Validation service**that checks FHIR conformance, metadata mapping, reporting rules, and DHIS2 payload validity.
1. **Approval workflow**allowing facility, LGA, state, or program M&E officers to review generated reports.
1. **DHIS2 Web API submission**to the national or program DHIS2 instance.
1. **Feedback and analytics**from DHIS2 to facilities, LGAs, states, programs, Ward Development Officers, and national teams.

### Example FHIR-to-DHIS2 Submission Flow

1. A facility EMR captures outpatient encounters using Nigeria Core Profiles.
1. At the end of the reporting period, the reporting service queries relevant FHIR resources.
1. The service aggregates counts by facility, reporting period, age, sex, service area, and program category.
1. The service maps counts to DHIS2 data elements and category option combinations.
1. The facility records or M&E officer reviews the generated report.
1. The report is submitted to DHIS2 using the DHIS2 Web API.
1. DHIS2 validation rules check completeness, consistency, and outliers.
1. LGA and state M&E teams review, approve, and provide feedback.
1. Dashboards and analytics are used by programs, DPRS, states, LGAs, facilities, and Ward Development Officers.

### Relationship With Ward, LGA, State, and National Data Use

Nigeria Core can strengthen data use by making routine reports traceable to structured source data.

Data use may occur at multiple levels:

* **Ward level:** Ward Development Officers and community teams use aggregate service and outreach data for local planning.
* **Facility level:** Facility managers review service volumes, quality gaps, stock-related issues, referral patterns, and reporting completeness.
* **LGA level:** M&E officers review PHC reporting, completeness, validation, and supervision needs.
* **State level:** State HMIS and program teams review performance, equity, data quality, and program priorities.
* **National level:** DPRS, national programs, and policy teams review national dashboards, reporting trends, and health system performance.

### Conformance Expectations

Systems claiming alignment with this page **SHOULD**:

* Use Nigeria Core Profiles for source data representation where applicable.
* Maintain clear mappings between FHIR elements and DHIS2 metadata.
* Use Health Facility Registry identifiers where available.
* Preserve local and program identifiers where needed.
* Validate data before DHIS2 submission.
* Support audit and traceability of generated reports.
* Protect patient-level data and submit aggregate data unless event/tracker reporting is explicitly governed.
* Document supported workflows in CapabilityStatements or implementation documentation.
* Participate in sandbox or conformance testing where available.

### Implementation Notes

Implementers should consider the following:

* Nigeria Core provides the interoperability layer; DHIS2 remains the primary platform for routine NHMIS reporting and dashboards.
* FHIR resources should be mapped to DHIS2 data elements through governed data dictionaries and ConceptMaps.
* Facility and workforce identifiers are essential for reliable reporting.
* program-specific IGs should define reporting logic for their own indicators while reusing Nigeria Core profiles.
* Reporting adapters should be testable in the Nigeria Core sandbox before production deployment.
* Aggregate reporting should avoid duplicate manual entry where source systems already capture structured data.
* Patient-level data should remain in clinical, program, registry, or Shared Health Record systems unless a DHIS2 event/tracker use case is explicitly approved.
* Feedback loops from DHIS2 to facilities and frontline managers should be part of implementation design.

Footnotes

