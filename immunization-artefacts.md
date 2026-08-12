# Immunization FHIR Artefacts - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* **Immunization FHIR Artefacts**

## Immunization FHIR Artefacts

The Immunization Artefacts page is the primary conformance entry point for implementing immunization workflows within the Nigeria Core FHIR Implementation Guide. It brings together foundational profiles, clinical resources, exchange documents, questionnaires, extensions, terminology, mappings, and examples required to support immunization registration, service delivery, adverse-event management, defaulter tracking, and reporting. Implementers SHALL use the referenced Nigeria Core profiles and terminology where applicable, SHALL preserve required bindings and cardinalities, and SHALL validate exchanged resources against the published definitions. Systems SHOULD support the listed questionnaires and exchange patterns relevant to their use cases and MAY support additional artefacts, provided they remain nationally conformant.

### Conformance Requirements

The keywords **SHALL**, **SHALL NOT**, **SHOULD**, **SHOULD NOT**, and **MAY** are normative and indicate the degree of conformance required by this guide already defined in [Conformace/General Requirements](general.md).

### Foundational Resources

These profiles provide the common identity, provider, organizational, and service-delivery context used by immunization artefacts.

| | | |
| :--- | :--- | :--- |
| [NgPatient](StructureDefinition-ng-patient.md) | Represents the immunization client or vaccine recipient. | **SHALL**be used when a Patient is exchanged within a conformant immunization workflow. |
| [NgPractitioner](StructureDefinition-ng-practitioner.md) | Represents a health worker participating in immunization services. | **SHALL**be used when identifying the person who registered, assessed, administered, reviewed, or reported an immunization event. |
| [NgOrganization](StructureDefinition-ng-organization.md) | Represents the responsible facility, programme, authority, or implementing organization. | **SHALL**be used for organizations referenced by immunization transactions. |
| [NgLocation](StructureDefinition-ng-location.md) | Represents the physical or service location where immunization activities occur. | **SHALL**be used where the service location, outreach point, ward, facility, or administrative location is exchanged. |

### Clinical Resources

These profiles represent the principal clinical and service-delivery information required for immunization workflows.

| | | |
| :--- | :--- | :--- |
| [NgImmunization](StructureDefinition-ng-immunization.md) | Records a vaccine administration event or a documented non-administration. | **SHALL**be used for completed, entered-in-error, or not-done immunization events. |
| [NgImmunizationRecommendation](StructureDefinition-ng-immunization-recommendation.md) | Represents the recommended vaccine, dose, and due date for a client. | **SHALL**be used when communicating a forecast, due dose, or next-dose recommendation. |
| [NgFlag](StructureDefinition-ng-flag.md) | Represents an immunization-related alert requiring attention. | **SHOULD**be supported by systems that generate or consume clinical, safety, or follow-up alerts. |
| [NgAllergyIntolerance](StructureDefinition-ng-allergy-intolerance.md) | Represents allergies, intolerances, and vaccine-related sensitivity information. | **SHALL**be considered during contraindication and pre-vaccination assessment workflows. |
| [NgCondition](StructureDefinition-ng-condition.md) | Represents relevant diagnoses, health conditions, or contraindicating conditions. | **SHALL**be used when a condition materially affects immunization eligibility, safety, or follow-up. |
| [NgObservation](StructureDefinition-ng-observation.md) | Represents clinical findings and observations relevant to immunization. | **SHOULD**be used for measurable or coded findings that are not appropriately represented by another profile. |
| [NgProcedure](StructureDefinition-ng-procedure.md) | Represents related clinical or public-health procedures. | **MAY**be used for procedures associated with immunization service delivery or follow-up. |

### Questionnaire Profile

All immunization programme forms conform to the [NG Immunization Questionnaire Profile](StructureDefinition-ng-immunization-questionnaire.md). The profile establishes the minimum metadata, item structure, stable link identifiers, terminology bindings and publication requirements used across immunization forms.

#### Questionnaires

The following computable Questionnaires support immunization programme workflows:

| | |
| :--- | :--- |
| [Facility Registration Form](Questionnaire-ng-imm-facility-registration-form.md) | Registers organizations and locations providing immunization services. |
| [Client Registration Form](Questionnaire-ng-imm-client-registration-form.md) | Captures client demographics, identifiers, caregiver details and residence information. |
| [Updating Client Record Form](Questionnaire-ng-imm-updating-client-record-form.md) | Updates client demographic, contact and relevant clinical information. |
| [Administer Vaccine Form](Questionnaire-ng-imm-administer-vaccine-form.md) | Records vaccine administration, dose, batch, vaccinator, facility and next-dose information. |
| [Manage AEFI Form](Questionnaire-ng-imm-manage-aefi-form.md) | Records and manages adverse events following immunization. |
| [Defaulter Tracking Form](Questionnaire-ng-imm-defaulter-tracking-form.md) | Supports identification, tracing and follow-up of clients who missed scheduled doses. |
| [Generate Report Form](Questionnaire-ng-imm-generate-report-form.md) | Captures the parameters required to generate immunization programme reports. |

#### Questionnaire Responses

* A conformant `QuestionnaireResponse` **SHALL** reference the canonical URL of the applicable Questionnaire.
* Implementers **SHALL** preserve item `linkId` values and **SHALL NOT** repurpose an existing `linkId` for a different data element.
* Required Questionnaire items **SHALL** be completed unless the Questionnaire explicitly enables conditional omission.
* Coded answers **SHALL** use the bound terminology where a binding is defined.
* Systems **SHOULD** retain the Questionnaire version used to collect each response.
* Extraction of Questionnaire responses into clinical or administrative resources **SHOULD** follow the mappings published with the Questionnaire.

### Extension Definitions

Extensions listed here are part of the immunization conformance surface. Implementers **SHALL** use the published extension URL and value type and **SHALL NOT** redefine the same meaning under a different local URL.

| | |
| :--- | :--- |
| [NgContraindicated](StructureDefinition-ng-contraindicated.md) | Indicates that a vaccine or immunization action is contraindicated. |
| [NgNextDose](StructureDefinition-ng-next-dose-date.md) | Communicates the next expected dose, dose number, or related scheduling information. |
| [NgVaccineContraIndications](StructureDefinition-ng-vaccine-contraindications.md) | Represents one or more vaccine-specific contraindications or precautions. |

### Immunization-Specific Terminology

The following ValueSets define controlled terminology for immunization-specific data elements. Required and extensible bindings **SHALL** be applied as defined by the consuming profile.

| | |
| :--- | :--- |
| [NgVaccineLocalVS](ValueSet-ng-vaccine-local-vs.md) | Nationally recognized vaccines, vaccine products, antigens, or vaccine groupings. |
| [NgImmunizationClinicalStatusVS](ValueSet-ng-immunization-clinical-status-vs.md) | Clinical or workflow status applicable to an immunization event or assessment. |
| [NgSiblingHealthStatusVS](ValueSet-ng-sibling-health-status-vs.md) | Permitted coded values for sibling health-status information. |
| [NGImmunizationSessionTypeVS](ValueSet-ng-immunization-session-type-vs.md) | Types of immunization sessions, including fixed, outreach, mobile, campaign, or other nationally defined sessions. |

### Administrative ValueSets

Administrative ValueSets support identity, facility, geography, ownership, relationship, and client-identification requirements.

| | |
| :--- | :--- |
| [NgGenderVS](ValueSet-ng-gender-vs.md) | Administrative or recorded sex/gender values permitted by the Nigeria Core IG. |
| [NgFacilityTypeVS](ValueSet-ng-facility-type-vs.md) | Classification of health facilities and immunization service-delivery points. |
| [NgLGAsVS](ValueSet-ng-lgas-vs.md) | Nigerian Local Government Area codes. |
| [NgStatesVS](ValueSet-ng-states-vs.md) | Nigerian state and Federal Capital Territory codes. |
| [NgWardsVS](ValueSet-ng-wards-vs.md) | Administrative ward codes. |
| [NgOrganizationOwnerVS](ValueSet-ng-organization-owner-vs.md) | Ownership or managing authority of a facility or service location. |
| [NgRelationshipsVS](ValueSet-ng-relationships-vs.md) | Relationship of a caregiver, contact person, or related person to the client. |
| [NgClientIdentifierVS](ValueSet-ng-client-identifier-vs.md) | Permitted identifier types used to identify an immunization client. |

### ConceptMaps

ConceptMaps support translation between local vaccine terminology and external classifications. A translation **SHALL NOT** be treated as equivalent unless the relationship stated in the `ConceptMap` supports equivalence.

| | |
| :--- | :--- |
| [Local Vaccine Codes – ICD-11](ConceptMap-NGVaccineLocal-to-ICD11.md) | Maps nationally or locally used vaccine codes to relevant ICD-11 concepts. |
| [Local Vaccine Codes – SNOMED CT](ConceptMap-NGVaccineLocal-to-SNOMED.md) | Maps nationally or locally used vaccine codes to relevant SNOMED CT concepts. |

#### Terminology Translation Requirements

* Systems **SHALL** preserve the original source coding when applying a mapped code.
* Systems **SHALL** record the source system, code, and display where these are available.
* Systems **SHOULD** use the published `ConceptMap/$translate` operation where terminology-server support is available.
* A mapping marked broader, narrower, related-to, inexact, or unmatched **SHALL NOT** be represented as exact equivalence.
* Implementers **MAY** submit proposed mappings for national review, but unpublished mappings **SHALL NOT** be represented as nationally approved.

### Examples

The links below are placeholders for future published examples. They **SHALL** be replaced with links to generated example-resource pages when the corresponding instances are added to the Implementation Guide.

* [Example Immunization Registration Bundle]
* [Example Vaccine Administration]
* [Example Immunization Recommendation]
* [Example AEFI QuestionnaireResponse]
* [Example Defaulter-Tracking QuestionnaireResponse]
* [Example Immunization Summary Document]
* [Example Immunization Reporting Bundle]

### Exchange Documents

These profiles support document-based exchange and the communication of medication or vaccination history.

| | | |
| :--- | :--- | :--- |
| [NgDocuments](StructureDefinition-ng-documents.md) | Represents immunization-related documents, certificates, summaries, attachments, or supporting records. | **SHALL**be used when exchanging a document that is not represented solely as discrete FHIR resources. |
| [NgMedicationStatement](StructureDefinition-ng-medication-statement.md) | Represents a reported or historical statement about a medication or vaccine received. | **SHOULD**be used where immunization history is reported but cannot be asserted as a directly verified administration event. |

### Minimum Conformance Claim

A system claiming **Nigeria Core Immunization Conformance** **SHALL**, at minimum:

1. publish or expose a`CapabilityStatement`identifying the supported artefacts on this page;
1. support[NgPatient](StructureDefinition-ng-patient.md),[NgOrganization](StructureDefinition-ng-organization.md), and[NgLocation](StructureDefinition-ng-location.md)where these resources occur in its immunization workflow;
1. support[NgImmunization](StructureDefinition-ng-immunization.md)for vaccine administration records;
1. support the national Vaccine Library and all required terminology bindings used by its implemented profiles;
1. validate submitted and generated resources against the applicable profile versions;
1. return meaningful validation or operation outcomes when an instance is rejected; and
1. demonstrate the supported immunization workflow using at least one valid example or test transaction.

Conformance to this page does not imply support for every listed artefact. Implementers **SHALL** clearly declare the subset supported by their system and **SHALL** satisfy all requirements attached to each claimed artefact.

