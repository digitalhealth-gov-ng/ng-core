# Relationship with other IGs - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* **Relationship with other IGs**

## Relationship with other IGs

### Scope and Context of Nigeria Core

Nigeria Core is intended to provide an implementable national standard for FHIR-based interfaces across Nigeria’s health sector. It defines the common foundation for exchanging patient, provider, facility, organisation, clinical, medication, diagnostic, referral, registry, programme, claims, and public health information.

Nigeria Core provides:

* A national baseline for FHIR-based interoperability across federal, state, programme, regulator, facility, payer, pharmacy, laboratory, and vendor systems.
* Minimum requirements on FHIR resources through Nigeria Core Profiles, extensions, terminology bindings, identifiers, ValueSets, and RESTful API interactions.
* A reusable foundation for programme-specific and domain-specific implementation guides.
* A common implementation pattern for Nigeria’s decentralised and hybrid digital health architecture.
* A basis for conformance testing, sandbox testing, vendor onboarding, and progressive standards endorsement.

Nigeria Core is not intended to replace programme-specific implementation guides. Instead, it provides the national “floor” that programme guides should build on. Programme guides may add workflow-specific constraints, terminology, examples, operations, and CapabilityStatements, but should reuse Nigeria Core artefacts wherever possible.

### Relationship of Nigeria Core with Other IGs

#### IG Dependencies

Nigeria Core is based on the FHIR R4 specification and may rely on or align with the following implementation guides and specifications.

| | |
| :--- | :--- |
| HL7 FHIR R4 | Base specification for all Nigeria Core profiles and RESTful interactions. |
| International Patient Summary (IPS) | Used as an international reference for a minimum patient summary and for Nigeria Shared Health Record alignment. |
| Structured Data Capture (SDC) | May be reused for Questionnaire and QuestionnaireResponse-based workflows, including assessments, programme forms, and digital adaptation kits. |
| WHO SMART Guidelines / Digital Adaptation Kits | Used as programme design input for workflows, personas, decision logic, indicators, and L2/L3 implementation guide development. |
| IHE Profiles | May be used for document sharing, patient identity, terminology, and health information exchange patterns where applicable. |
| US Core and Argonaut Guides | Used as reference patterns for profile design, RESTful search expectations, CapabilityStatements, and patient data access guidance. |

### Alignment With International IGs

Nigeria Core is designed to align with international FHIR implementation guides while preserving Nigeria-specific requirements for governance, identifiers, registries, terminology, programme reporting, and decentralised implementation.

| | |
| :--- | :--- |
| International Patient Summary (IPS) | Nigeria Core should support generation of a Nigeria Shared Health Record or patient summary aligned with IPS where applicable. Nigeria Core profiles may require additional Nigerian identifiers, registry references, programme elements, and terminology mappings. |
| International Patient Access (IPA) | Nigeria Core should support patient-facing and provider-facing access patterns that are compatible with IPA where possible. Additional Nigeria-specific access control, consent, language, and identifier requirements may apply. |
| SMART App Launch | Nigeria Core recommends SMART-on-FHIR where applications require secure launch, scoped access, patient context, or provider context. |
| WHO SMART Guidelines and DAKs | Nigeria Core supports the transition from L2 digital adaptation kits to L3 FHIR implementation guides for programmes such as immunization, MNCH, HIV, TB, malaria, nutrition, and community health. |
| IHE MHD, PIXm, PDQm, ATNA, and related profiles | Nigeria Core may align with IHE patterns for document exchange, patient identity query, patient demographics query, audit, and secure node behaviour where applicable. |
| OpenHIE Architecture | Nigeria Core aligns with building-block concepts such as client registry, facility registry, health worker registry, terminology service, shared health record, and interoperability layer. |
| US Core | Nigeria Core borrows useful implementation patterns from US Core but adapts them for Nigeria’s health sector, regulatory context, terminology, identifiers, registries, and programme architecture. |

### Comparison With International IGs, Architectures, and Programs (L3)

The table below gives a high-level summary of how Nigeria Core is expected to relate to selected international IGs. Detailed computable comparison tables may be added in future versions as Nigeria Core profiles mature.

**Legend:**

✔ **Aligned**: Nigeria Core is expected to meet or be compatible with the compared IG or architecture for the relevant use case.

➕ **Additional requirements**: Nigeria Core is compatible, but additional constraints, terminology, or workflow requirements may be needed.

✘ **Incompatible**: Requirements conflict or cannot both be met without separate representations.

— **No direct equivalent**: No direct equivalent profile or use case exists.

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Patient demographics | ➕ | — | — | — | — | — | — |
| Allergies and intolerances | ➕ | — | — | — | — | — | — |
| Conditions and diagnoses | ➕ | — | — | — | — | — | — |
| Medications | ➕ | — | — | — | — | — |   |
| Immunization Program | ➕ | — | — | ✔ | ➕ | — | — |
| HIV Program | ➕ | — | — | — | ✔ | — | — |
| Observations and vital signs | ➕ | — | — | — | — | — | — |
| Diagnostic reports | ➕ | — | — | — | — | — | — |
| Clinical notes and documents | ➕ | — | — | — | — | — | — |
| Facility registry | — | — | — | — | — | — | ➕ |
| Health workforce registry | — | — | — | — | — | — | ➕ |
| Shared Health Record | ✔ | — | — | — | — | — | ➕ |
| Patient-facing access | ➕ | — | — | — | — | — | ➕ |
| Programme reporting | — | — | — | — | — | — | — |
| Conformance testing | ➕ | — | — | — | — | — | — |

### Relationship With WHO SMART DAKs

Nigeria Core supports the progression from WHO SMART Guidelines and Digital Adaptation Kits to implementable FHIR artefacts. The **Digital Adaptation Kits (L2)** dropdown leads to all domesticated national DAKs.

L2 artefacts such as personas, workflows, business processes, decision logic, indicators, data dictionaries, and functional requirements may inform L3 FHIR artefacts.

### Relationship With IHE and OpenHIE

Nigeria Core is compatible with the broader health information exchange concepts promoted by IHE and OpenHIE.

Relevant alignment areas include:

* Patient identity management.
* Facility registry.
* Health worker registry.
* Shared health record.
* Terminology services.
* Document sharing.
* Audit and security.
* Interoperability layer services.
* Conformance testing and Connectathon-style validation.

Where IHE profiles are used, implementation guides will document how the IHE transaction maps to Nigeria Core FHIR profiles and operations.

Footnotes

