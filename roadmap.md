# Roadmap - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* **Roadmap**

## Roadmap

### Purpose

The **Nigeria Core Roadmap** describes the intended direction for the Nigeria Core FHIR Implementation Guide as Nigeria’s digital health ecosystem matures.

Nigeria is still in a nascent but rapidly evolving phase of its digital health journey. Many systems are in active deployment, but national-scale interoperability, routine conformance testing, shared registries, standardised terminology services, and consistent use of FHIR across programmes are still emerging.

For this reason, Nigeria Core is intentionally designed as a **minimum viable national interoperability foundation**. It establishes a common baseline while allowing programmes, states, regulators, vendors, and implementing partners to adopt incrementally.

This roadmap explains how Nigeria Core is expected to grow over time without creating unrealistic requirements for systems that are still at early stages of digital maturity.

### Roadmap Principles

Nigeria Core is guided by the following principles:

* **Start with the minimum useful national core.** The first releases should focus on the smallest set of profiles, terminology, identifiers, and interactions needed to enable real interoperability.
* **Be permissive before becoming prescriptive.** Early versions should support adoption and learning, while later versions may strengthen conformance once implementation experience matures.
* **Support incremental adoption.** Systems may conform by profile, by RESTful interaction, by data block, by programme use case, or by full Shared Health Record participation.
* **Reuse international standards.** Nigeria Core should align with FHIR R4, IPS, SMART App Launch, WHO SMART Guidelines, IHE/OpenHIE patterns, and applicable ISO/NIS standards where appropriate.
* **Adapt to Nigerian realities.** The guide must support low-connectivity settings, paper-to-digital transition, decentralised state systems, programme systems, regulatory systems, and hybrid national architecture.
* **Prioritise implementation over documentation.** Profiles and guidance should be tested in sandbox, Connectathon, pilot, or real-world environments before being treated as stable.
* **Harmonise rather than replace.** Nigeria Core should harmonise existing health data standards, programme datasets, registries, and implementation guides rather than forcing abrupt replacement.
* **Build trust through conformance.** The guide should progressively support validation, vendor onboarding, sandbox testing, certification readiness, and procurement alignment.
* **Keep the patient summary portable.** The NG Patient Summary and NG Shared Health Record should remain programme-agnostic, specialty-agnostic, condition-independent, and useful across PHC, secondary, and tertiary care.
* **Evolve through governance.** Changes should be reviewed through appropriate national, technical, programme, regulator, and standards governance processes.

### Roadmap Context

Nigeria’s health information ecosystem includes a mix of:

* Paper-based primary health care records.
* Patially-electronic primary health care records.
* Facility EMRs at different levels of maturity.
* Community health applications.
* Programme-specific systems.
* DHIS2-based NHMIS reporting.
* Laboratory and pharmacy systems.
* Insurance and claims systems.
* Health Facility Registry and Health Workforce Registry initiatives.
* Professional and regulator registries.
* Emerging Shared Health Record and interoperability layer concepts.
* Vendor and innovator systems with varied standards maturity.

Nigeria Core must therefore support a gradual transition from fragmented and programme-specific systems toward standards-based, reusable, and testable interoperability.

### Roadmap Horizons

The Nigeria Core Roadmap is organised into four broad horizons.

| | | |
| :--- | :--- | :--- |
| Horizon 1: Foundation | Establish the minimum national FHIR baseline | Draft profiles, guidance, identifiers, terminology approach, core pages, and initial sandbox testing |
| Horizon 2: Programme Alignment | Harmonise priority programme use cases | Derived programme IGs, reusable profiles, FHIR examples, NHMIS/DHIS2 mappings, and programme testing tracks |
| Horizon 3: Conformance and Adoption | Move from guidance to tested implementation | Vendor onboarding, sandbox validation, Connectathon testing, procurement alignment, and implementation feedback |
| Horizon 4: Scale and Optimisation | Mature national interoperability services | Stable registries, Shared Health Record exchange, terminology services, certification readiness, and continuous improvement |

### Horizon 1: Foundation

Horizon 1 focuses on establishing the first usable national core.

#### Priority Activities

* Publish the initial Nigeria Core IG structure.
* Define common conformance requirements.
* Define Must Support expectations.
* Define security, consent, privacy, audit, and Provenance guidance.
* Define core actor patterns for Requestors, Responders, registries, terminology services, sandbox services, and Shared Health Record services.
* Establish guidance for programme IGs.
* Establish NG Patient Summary guidance aligned with IPS and NIS ISO 27269.
* Establish relationship guidance for NHMIS/DHIS2.
* Establish guidance on registries and shared services.
* Create initial examples and downloadable artefacts.
* Support initial sandbox and Connectathon-style testing.

#### Priority Artefacts

* Nigeria Core Home page.
* General Requirements.
* Must Support.
* Security.
* Programme Guidance.
* Clinical Notes.
* Medication Management.
* Basic Provenance.
* Relationship With Other IGs.
* Relationship With NHMIS/DHIS2.
* Guidance on Registries and Shared Services.
* NG Patient Summary.
* Downloads.
* Change Log and Roadmap.

#### Expected Maturity

Most artefacts in Horizon 1 should be considered **draft** or **trial-use**. They are intended to support review, learning, and early implementation rather than full national enforcement.

### Horizon 2: Programme Alignment

Horizon 2 focuses on aligning Nigeria Core with priority health programmes and existing implementation guides.

#### Priority Programme Areas

Programme-specific work may include:

* eCHIS and community health.
* MNCH.
* Immunization.
* HIV.
* Tuberculosis.
* Malaria.
* Family Planning.
* Nutrition.
* Health logistics and supply chain.
* ePharmacy and ePrescription.
* Insurance and claims.
* Medical devices and diagnostics.
* Referral and counter-referral.
* Public health reporting and analytics.

#### Priority Activities

* Map programme data dictionaries to Nigeria Core profiles.
* Harmonise programme-specific FHIR IGs into or against Nigeria Core.
* Define derived profiles only where programme constraints are needed.
* Define programme-specific ValueSets, CodeSystems, and ConceptMaps.
* Create programme-specific examples and Bundles.
* Map programme data to NHMIS/DHIS2 where required.
* Define programme-specific CapabilityStatements.
* Define programme-specific test cases for sandbox use.
* Identify gaps in Nigeria Core profiles and terminology.
* Update Nigeria Core based on programme implementation feedback.

#### Programme Extension Pattern

Programme guides **SHOULD** follow this pattern:

1. Reuse Nigeria Core profiles where sufficient.
1. Derive programme profiles only where additional constraints are needed.
1. Reuse Nigeria Core identifiers and NamingSystems.
1. Add programme terminology through ValueSets, CodeSystems, and ConceptMaps.
1. Provide examples.
1. Define CapabilityStatements.
1. Test in the Nigeria Core sandbox.
1. Document conformance expectations.

### Horizon 3: Conformance and Adoption

Horizon 3 moves Nigeria Core from guidance to tested implementation.

#### Priority Activities

* Establish sandbox validation pipelines.
* Load Nigeria Core packages into reference FHIR servers.
* Validate examples against profiles.
* Test RESTful interactions and search parameters.
* Test CapabilityStatements.
* Test Bundle submission and validation patterns.
* Test terminology expansion and validation.
* Test patient summary generation and consumption.
* Test registry lookup and synchronisation patterns.
* Test FHIR-to-DHIS2 reporting adapters.
* Test security, consent, and audit workflows.
* Support vendor onboarding and implementation feedback.
* Support Connectathon-style testing across tracks.

#### Conformance Pathways

Nigeria Core supports multiple conformance pathways.

| | |
| :--- | :--- |
| Profile-only conformance | A system can produce or consume resources that conform to Nigeria Core profiles without exposing a full FHIR API. |
| Profile plus interaction conformance | A system supports Nigeria Core profiles and the required FHIR RESTful interactions. |
| Data block conformance | A system supports one or more NG Patient Summary or Shared Health Record data blocks. |
| Programme conformance | A system conforms to a derived programme IG that builds on Nigeria Core. |
| Registry conformance | A system supports registry lookup, verification, synchronisation, or authoritative reference data exchange. |
| Reporting conformance | A system maps Nigeria Core data to NHMIS/DHIS2 or programme reporting requirements. |
| Sandbox conformance | A system passes defined sandbox or Connectathon test cases. |
| Full Shared Health Record conformance | A system contributes to or consumes from the NG Shared Health Record according to defined requirements. |

### Horizon 4: Scale and Optimisation

Horizon 4 focuses on national scale, production-grade implementation, and continuous improvement.

#### Priority Activities

* Stabilise core profiles and terminology.
* Strengthen national terminology services.
* Mature the Health Facility Registry and Health Workforce Registry integrations.
* Support patient and provider identity matching.
* Support production Shared Health Record exchange.
* Support conformance testing linked to procurement.
* Support certification-readiness for vendors.
* Support national and state implementation dashboards.
* Monitor IG adoption and implementation quality.
* Define maintenance processes for profiles, terminology, and examples.
* Align future releases with formal standards endorsement and national governance.

#### Expected Outcomes

At this stage, Nigeria Core should support:

* More stable artefacts.
* Tested implementation patterns.
* More consistent vendor compliance.
* Improved programme alignment.
* Reduced duplicate data entry.
* Better data quality.
* Reusable national registries and shared services.
* Safer cross-facility and cross-programme information sharing.
* Stronger trust in digital health systems.

### Content Prioritisation

Nigeria Core content should be prioritised based on implementation value, national need, stakeholder readiness, and testing feasibility.

| | | |
| :--- | :--- | :--- |
| Priority 1 | Foundational identity and exchange | Patient, Organization, Location, Practitioner, PractitionerRole, Encounter, Observation, Condition, MedicationRequest, DiagnosticReport, DocumentReference |
| Priority 2 | Shared Health Record and referral | NG Patient Summary, AllergyIntolerance, Immunization, Procedure, CarePlan, ServiceRequest, Task, Provenance |
| Priority 3 | Registries and reporting | HFR, HWFR, terminology service, FHIR-to-DHIS2 mapping, MeasureReport, QuestionnaireResponse |
| Priority 4 | Programme and domain extensions | Immunization, MNCH, HIV, TB, Malaria, Nutrition, Logistics, ePharmacy, Claims, Medical Devices |
| Priority 5 | Advanced interoperability | Subscriptions, bulk data, digital signatures, portable certificates, decision support, analytics, AI-ready data services |

### What Nigeria Core Should Not Try to Do Too Early

Because Nigeria is still early in its national interoperability journey, Nigeria Core should avoid over-specification in early releases.

Early versions **SHOULD NOT** attempt to:

* Require all systems to support every profile.
* Require every facility to expose a full FHIR API immediately.
* Require full national Shared Health Record participation before registries and consent services mature.
* Over-constrain programme workflows before field testing.
* Replace DHIS2, EMRs, registries, or programme systems.
* Require advanced security patterns that are not yet implementable by most systems.
* Treat untested profiles as stable national requirements.
* Require perfect terminology mapping before useful implementation can begin.
* Make PHC-level systems comply with the same requirements as tertiary hospital systems without a maturity pathway.

Instead, Nigeria Core should create a practical pathway for systems to improve over time.

### Progressive Implementation by Care Level

Nigeria Core should support different levels of implementation maturity across PHC, secondary, and tertiary care.

| | | |
| :--- | :--- | :--- |
| PHC | Patient attributes, encounter, immunization, referrals, basic observations, facility identifiers, eCHIS alignment | Patient summary generation, referral feedback, registry integration, automated DHIS2 reporting |
| Secondary Care | Referral intake, diagnostic reports, medication list, procedures, discharge summaries, DHIS2 reporting | Shared Health Record contribution, specialist summaries, conformance-tested APIs |
| Tertiary Care | Advanced EMR exchange, diagnostic reports, clinical notes, medication reconciliation, discharge summaries | Full NG Patient Summary support, specialty extensions, Shared Health Record integration, advanced conformance, DHIS2 reporting |
| Community Systems | Household, outreach, immunization, MNCH, malaria, nutrition, referrals | Synchronisation, patient summary contribution, programme reporting, registry-linked workflows |

### Roadmap for the NG Patient Summary and NG-SHR

The NG Patient Summary is a core building block for Nigeria’s Shared Health Record.

#### Early Stage (first six months)

* Define mandatory and required-if-known data blocks.
* Support PHC-to-secondary and secondary-to-tertiary referral scenarios.
* Support portable patient summary examples.
* Support basic document Bundle and Composition patterns.

#### Intermediate Stage (first one year)

* Support immunization certificate examples.
* Add programme-specific patient summary examples.
* Support specialty extensions.
* Support data block conformance.
* Support Shared Health Record contribution and retrieval.
* Test summary generation in sandbox.

#### Mature Stage

* Support production NG-SHR exchange.
* Support patient-facing access.
* Support portable certificates.
* Support digital signatures where required.
* Support longitudinal record reconciliation.
* Support cross-state and cross-programme continuity of care.

### Roadmap for Registries and Shared Services

Registries and shared services should mature progressively.

#### Early Stage

* Define identifier systems.
* Document registry profiles and API patterns.
* Publish facility and workforce mapping guidance.
* Support registry lookup examples.

#### Intermediate Stage

* Implement HFR and HWFR API integrations.
* Support terminology validation and expansion.
* Support provider and regulator verification workflows.
* Support sandbox registry simulations.

#### Mature Stage

* Support production-grade shared services.
* Support automated registry synchronisation.
* Support consent, audit, and Provenance services.
* Support national and state-level Shared Health Record integration.

### Roadmap for NHMIS/DHIS2 Alignment

Nigeria Core should strengthen NHMIS/DHIS2 reporting without replacing DHIS2.

#### Early Stage

* Define relationship between Nigeria Core and NHMIS/DHIS2.
* Identify common FHIR-to-DHIS2 mapping patterns.
* Support aggregate reporting from FHIR source data.

#### Intermediate Stage

* Create programme-specific FHIR-to-DHIS2 mapping tables.
* Test reporting adapters.
* Validate facility and organisation unit mappings.
* Support M&E review workflows.

#### Mature Stage

* Support automated reporting from EMRs, eCHIS, LIS, pharmacy systems, and programme platforms.
* Support traceability from aggregate reports to source counts where authorised.
* Reduce duplicate manual reporting.
* Support routine data quality feedback loops.

### Roadmap for Terminology

Terminology maturity is essential for interoperability, analytics, decision support, and reporting.

#### Early Stage

* Define Nigeria Core CodeSystems and ValueSets.
* Preserve local and programme codes.
* Begin mapping to ICD-11, SNOMED CT, LOINC, ATC, UCUM, and other relevant terminologies.

#### Intermediate Stage

* Publish ConceptMaps.
* Support terminology validation in sandbox.
* Align programme terminology with Nigeria Core.
* Define versioning rules.

#### Mature Stage

* Operate a national terminology service.
* Support terminology expansion, validation, and translation.
* Maintain mappings through formal governance.
* Support analytics, decision support, and AI-ready data services.

### Roadmap for Security, Consent, and Trust

Security and trust must mature alongside data exchange.

#### Early Stage

* Require HTTPS/TLS for protected APIs.
* Define role-based and organisation-based access control expectations.
* Use synthetic data in sandbox environments.
* Define audit and Provenance expectations.

#### Intermediate Stage

* Support OAuth2, SMART-on-FHIR, OpenID Connect, or mutual TLS where appropriate.
* Define consent patterns for Shared Health Record and patient-facing access.
* Support security labels for sensitive data.
* Test access control and audit in sandbox.

#### Mature Stage

* Support production consent services.
* Support patient-facing access and proxy access.
* Support digital signatures for portable certificates where required.
* Support advanced audit, monitoring, and incident response.

### Release Cadence

Nigeria Core may follow a phased release cadence:

* **Working Drafts:** Used for authoring, technical review, and early stakeholder engagement.
* **Ballot or Stakeholder Review Releases:** Used for formal comment and structured review.
* **Trial-Use Releases:** Used for sandbox testing, pilot implementation, and vendor onboarding.
* **Patch Releases:** Used to correct errors, clarify requirements, or resolve urgent implementation issues.
* **Stable Releases:** Used for national adoption, procurement alignment, conformance testing, and standards endorsement.

The release cadence should be realistic and linked to implementation feedback rather than documentation timelines alone.

### Governance and Decision-Making

Roadmap decisions should be informed by:

* National digital health leadership.
* Health programme priorities.
* State implementation needs.
* Standards governance processes.
* Regulator requirements.
* Vendor readiness.
* Sandbox and Connectathon results.
* Public and private sector implementation experience.
* Patient safety and privacy considerations.
* Data use and reporting needs.

### How New Content Is Added to Nigeria Core

New profiles, extensions, terminology, examples, or guidance pages should follow a transparent process.

1. Identify implementation need.
1. Document use case and actors.
1. Review existing Nigeria Core artefacts.
1. Reuse or derive from existing profiles where possible.
1. Define terminology and identifiers.
1. Create examples.
1. Add CapabilityStatement expectations where needed.
1. Test in sandbox or Connectathon environment.
1. Review through technical and stakeholder governance.
1. Publish in a draft, trial-use, patch, or stable release.

### Key Risks and Mitigation

| | |
| :--- | :--- |
| Over-specification before implementation maturity | Keep early releases permissive and support incremental conformance. |
| Programme fragmentation | Require derived programme IGs to reuse Nigeria Core profiles where applicable. |
| Weak terminology alignment | Publish ConceptMaps and maintain terminology governance. |
| Poor facility and workforce identifier quality | Strengthen HFR and HWFR alignment and registry API patterns. |
| Limited vendor readiness | Use sandbox testing, examples, and staged conformance pathways. |
| Inconsistent state implementation | Support decentralised and hybrid architecture with common national rules. |
| Privacy and consent gaps | Strengthen security, audit, consent, and data minimisation guidance. |
| Duplicate reporting burden | Support FHIR-to-DHIS2 mapping and automated aggregate reporting. |
| Lack of implementation feedback | Use Connectathons, pilots, and vendor onboarding to refine the guide. |

### Success Measures

Nigeria Core roadmap success may be measured by:

* Number of systems validating resources against Nigeria Core.
* Number of vendors participating in sandbox testing.
* Number of programme IGs derived from Nigeria Core.
* Number of profiles with tested examples.
* Number of systems using HFR, HWFR, or terminology services.
* Number of FHIR-to-DHIS2 reporting adapters tested.
* Number of Shared Health Record or patient summary exchange scenarios implemented.
* Reduction in duplicated data entry.
* Improved consistency of identifiers and terminology.
* Increased conformance readiness for procurement and implementation.

### Implementation Notes

Implementers should interpret this roadmap as a maturity pathway rather than a fixed compliance deadline.

Early adoption should focus on:

* Useful patient, facility, provider, and encounter exchange.
* Programme-specific examples.
* Basic registry linkage.
* Basic security and audit.
* Patient summary and referral use cases.
* NHMIS/DHIS2 reporting alignment.
* Sandbox validation.

As Nigeria’s ecosystem matures, Nigeria Core should become more prescriptive, more testable, and more closely tied to procurement, conformance, and national standards endorsement.

Footnotes

