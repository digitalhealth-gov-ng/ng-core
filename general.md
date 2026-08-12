# General Requirements - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* **General Requirements**

## General Requirements

This page defines the common implementation and conformance guidance for systems using the Nigeria Core FHIR Implementation Guide and programme-specific guides derived from it. It is organised to help implementers move from workflow definition to development, testing, deployment, and formal conformance claims.

### Implementation-First Approach

Implementers should begin with the workflow and actor responsibilities rather than attempting to support every artefact in the guide.

| | | |
| :--- | :--- | :--- |
| 1 | Define the workflow, actors, business purpose, and exchange boundary. | Documented use case and actor model. |
| 2 | Identify applicable Nigeria Core and programme profiles. | Profile support matrix. |
| 3 | Identify required identifiers, references, CodeSystems, ValueSets, and ConceptMaps. | Identifier and terminology plan. |
| 4 | Select required RESTful interactions, searches, operations, documents, and reports. | API and exchange specification. |
| 5 | Implement resource creation, receipt, persistence, processing, and validation. | Working implementation. |
| 6 | Publish supported capabilities and limitations in a`CapabilityStatement`. | Implementation CapabilityStatement. |
| 7 | Validate examples and production-like test data. | Validation and test evidence. |
| 8 | Test privacy, security, audit, paging, synchronization, and failure handling. | Operational readiness evidence. |
| 9 | Declare the supported Nigeria Core version, programme scope, profiles, interactions, and terminology versions. | Conformance statement. |

### Conformance Requirements

The keywords **SHALL**, **SHALL NOT**, **SHOULD**, **SHOULD NOT**, and **MAY** are normative and indicate the degree of conformance required by this guide.

**Mandatory rules**

* **SHALL** indicates an absolute requirement.
* **SHALL NOT** indicates an absolute prohibition.

**Recommendations**

* **SHOULD** indicates a strong recommendation. An alternative may be used only where the implementer understands and documents the implications.
* **SHOULD NOT** indicates an approach that is generally discouraged unless a justified exception applies.

**Optional choices**

* **MAY** indicates that an item or action is optional.

In general:

1. A system claiming conformance to the Nigeria Core FHIR specifications**SHALL**validate all supported instances against the applicable Nigeria Core or programme-specific profile.
1. A system**SHALL**comply with the cardinalities, Must Support flags, invariants, fixed values, required references, slicing rules, and terminology bindings defined by each applicable artefact.
1. A system**SHALL**declare its supported profiles, interactions, operations, search parameters, and exchange capabilities in its`CapabilityStatement`.
1. A system**SHALL**use the published national CodeSystems and ValueSets where a required terminology binding is specified.
1. A system using local codes**SHALL**retain the source code and coding system and**SHOULD**provide mappings through an applicable published`ConceptMap`where one is available.
1. A system**SHALL NOT**claim support for an artefact unless it can create, receive, process, persist, validate, or otherwise handle that artefact in accordance with the stated conformance requirements.
1. A system**SHOULD**support the profiles, extensions, Questionnaires, QuestionnaireResponses, logical models, Measures, MeasureReports, documents, transactions, and exchange patterns applicable to its implemented use cases.
1. Additional profiles, extensions, terminology, operations, or implementation-specific constraints**MAY**be used where required, but they**SHALL NOT**contradict, weaken, or invalidate the requirements of this guide.

### Conformance Artefacts and Claims

The [Profiles and Extensions] page lists the profiles and extensions defined by this guide. Each profile's computable `StructureDefinition` is authoritative for cardinalities, Must Support flags, terminology bindings, slices, patterns, fixed values, invariants, and target profiles.

The [Capability Statements] page defines expected profiles, RESTful interactions, search parameters, and operations for Nigeria Core actors. Implementers making an interaction-level claim **SHALL** use the applicable CapabilityStatement.

Nigeria Core supports two broad claims:

1. **Profile Support:**the system creates, stores, processes, or exchanges resources conforming to one or more Nigeria Core profiles.
1. **Profile and Interaction Support:**the system supports profile content together with the interactions, searches, or operations defined by an applicable CapabilityStatement.

A conformance claim **SHALL** identify the Nigeria Core version, programme or workflow scope, actor role, supported profiles, applicable CapabilityStatement, supported interactions, and terminology versions or update policy.

Derived programme guides **MAY** add constraints but **SHALL NOT** weaken Nigeria Core requirements.

### Mandatory and Must Support Elements

A Mandatory element has `min > 0` and **SHALL** be present. If its value is unavailable, an allowed FHIR missing-data representation **SHALL** be used rather than omitting the element.

For Must Support elements:

* Responders **SHALL** be able to populate and exchange the element when information is available and applicable.
* Requestors **SHALL** be able to receive and safely process the element without loss of essential meaning.
* Optional Must Support elements **SHALL** be omitted when no value is available unless an allowed absence mechanism is used.
* Omission does not imply a negative value.
* Modifier elements **SHALL** be processed safely.

| | |
| :--- | :--- |
| Primitive | Responder can provide the value; Requestor can process it. |
| Complex | At least one valid sub-element is supported. |
| `pattern[x]` | Content conforms to the defined pattern. |
| Single-target Reference | The specified target profile is supported. |
| Multiple-target Reference | Required targets are supported; otherwise at least one allowed target is declared. |
| Choice`[x]` | Required datatype choices are supported. |
| Slice | Support is required when the slice is Mandatory, Must Support, or part of the declared scope. |

The Differential Table shows constraints introduced by the profile. The Snapshot Table provides the complete inherited definition. The computable `StructureDefinition` remains authoritative.

### Programme Use of Nigeria Core

Programme guides **SHOULD** reuse Nigeria Core profiles, terminology, identifiers, search parameters, and CapabilityStatements wherever applicable. They **SHOULD NOT** redefine existing national artefacts unless there is a documented implementation need.

Additional programme requirements should normally be expressed through derived profiles, extensions, additional terminology, ConceptMaps, programme CapabilityStatements, operations, and conformance tests.

### References and Identifiers

A reference to a Nigeria Core resource **SHOULD** include `Reference.reference` when the resource is available on the same server or within the same Bundle.

When the referenced resource is managed by another system, programme, state, registry, regulator, or national service, `Reference.identifier` **MAY** also be included to preserve the recognised identifier.

References **SHOULD** resolve to the applicable Nigeria Core profile where one exists, including Patient, Organization, Location, Practitioner, and PractitionerRole profiles.

External absolute references are not assumed to be resolvable. Cross-platform exchange agreements **SHOULD** define resolution rules and **SHOULD** use stable identifiers where required.

### RESTful Interactions, Searches, and Operations

Servers claiming a Nigeria Core search interaction **SHALL** follow the [FHIR RESTful Search API] and declare supported search parameters in their CapabilityStatement.

* Required searches **SHALL** support HTTP `GET`.
* HTTP `POST` search **SHOULD** be supported for long or sensitive queries where appropriate.
* Required token, reference, and date searches **SHALL** support the forms stated in the applicable CapabilityStatement.
* Unsupported or failed searches **SHOULD** return an informative [OperationOutcome].
* Undocumented filters **SHALL NOT** be applied.

Servers **SHOULD** support `_lastUpdated` where synchronization, registry updates, or programme reporting require it, and **SHOULD** document its behaviour.

Population-level searches **SHALL** enforce access control, audit logging, purpose limitation, paging, and result limits. Large extracts **SHOULD** use FHIR Bulk Data Access or another governed export workflow.

Named operations **SHOULD** document their purpose, actors, inputs, outputs, applicable profiles, terminology, security expectations, and error handling.

### Terminology Conformance

Nigeria Core uses national, programme, regulator, and international terminology systems, including ICD-11, SNOMED CT, LOINC, ATC, and UCUM.

For every CodeSystem or ValueSet used in a conformance claim, implementation documentation **SHALL** identify:

* canonical identifier and publisher;
* supported version or update policy;
* authoritative distribution or terminology-service source;
* code representation rules;
* handling of inactive or retired concepts;
* intended use and limitations; and
* migration arrangements when versions change.

For a Required binding, a valid code from the bound ValueSet **SHALL** be present. For an Extensible binding, a code from the ValueSet **SHALL** be used when a suitable concept exists.

Local codes **SHOULD** use stable canonical URLs and persistent identifiers. Where a safe mapping exists, systems **SHOULD** also provide the mapped national or international code while retaining the original local coding.

ConceptMaps **SHALL** be used only for their declared purpose. A map created for reporting, migration, analytics, or clinical exchange **SHALL NOT** automatically be treated as safe for another purpose. Mappings used in direct patient care or decision support **SHALL** undergo appropriate clinical review and testing.

Terminology services **SHOULD** support validation, expansion, lookup, and translation where required by the workflow.

### UCUM Units

Where possible, `Quantity.system` and `Quantity.code` **SHOULD** use UCUM.

Free-text units **MAY** be used where UCUM is unavailable. Unitless values **SHOULD** be avoided where the unit is required for safe interpretation.

### Missing, Suppressed, and Contained Data

Optional elements with no value **SHALL** be omitted. Empty strings and placeholder values **SHALL NOT** be used to satisfy cardinality.

For Mandatory non-coded elements, the [DataAbsentReason Extension] **SHOULD** be used where permitted. For Mandatory coded elements, an appropriate absent or unknown code from the bound ValueSet **SHOULD** be used where available.

Suppressed data **SHOULD** follow privacy, consent, legal, programme, and access-control policy without exposing more information than the Requestor is authorised to know.

Contained resources **SHOULD NOT** be used where the resource can be independently identified, searched, retrieved, or governed. If used, they **SHOULD** conform to a Nigeria Core profile where one exists.

### Corrections, Narrative, and Language

Clinical, registry, programme, claims, or audit-relevant information **SHOULD NOT** be permanently deleted unless permitted by law, policy, or retention rules. Incorrect records **SHOULD** use an appropriate status such as `entered-in-error`, `inactive`, `cancelled`, or `revoked`, with `Provenance`, `AuditEvent`, or `OperationOutcome` where appropriate.

Narrative in `Resource.text` **SHALL** receive the same privacy and security protection as structured data. Where possible, narrative **SHOULD** be generated from structured content.

Systems **SHOULD** support safe multilingual representation where appropriate. Clinical content **SHOULD NOT** be automatically translated without suitable safety controls.

### Programme Implementation Checklist

A programme guide derived from Nigeria Core **SHOULD** document:

* actors and responsibilities;
* applicable Nigeria Core and derived profiles;
* identifiers and NamingSystems;
* required CodeSystems, ValueSets, and ConceptMaps;
* CapabilityStatement expectations;
* interactions, searches, operations, documents, and reports;
* privacy, security, consent, and audit requirements;
* offline, synchronization, and conflict handling;
* examples, test data, and sandbox testing;
* terminology and profile versioning; and
* change management and implementation limitations.

Nigeria Core implementations **SHOULD** use recognised national identifiers, preserve original codes and identifiers for traceability, support Nigeria's federal and decentralised architecture, and complete profile, terminology, reference, search, security, and interaction testing before production exchange.

-------

**Nigeria Core terminology guidance is aligned with NIS ISO/TR 12300:2019 and NIS ISO/TR 12310:2019.**

