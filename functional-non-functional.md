# Functional and Non-Functional Requirements - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* **Functional and Non-Functional Requirements**

## Functional and Non-Functional Requirements

This page provides a progressive summary of candidate functional and non-functional requirements for digital health systems operating at Primary Health Care (PHC), General Hospital (GH), and Tertiary Hospital (TH) levels. It is intended to guide implementation and procurement while the detailed national requirements, measurable acceptance criteria, and conformance tests are refined and formally approved. Until that process is completed, this page does not by itself create additional normative conformance obligations beyond the published Nigeria Core profiles, terminology bindings, CapabilityStatements, and other explicitly normative artefacts.

### Purpose

The functional and non-functional requirement inventories supporting this guide describe a broad electronic health record and health information system capability set covering patient registration, clinical documentation, orders and results, medicines, referral, billing, reporting, community services, telemedicine, interoperability, security, performance, hosting, usability, documentation, and system operations.

This page organises those candidate requirements into a **progressive facility capability model**. The model is cumulative:

* a **PHC system** establishes the national digital health baseline needed for first-contact, preventive, promotive, maternal and child health, community, and common ambulatory services;
* a **General Hospital system** builds on the PHC baseline and adds the capabilities required for broader diagnostic, emergency, inpatient, procedural, referral, and hospital operations; and
* a **Tertiary Hospital system** builds on both levels and adds specialist, multidisciplinary, enterprise-scale, advanced diagnostic, high-availability, and complex integration capabilities.

The progression is not intended to imply that a capability can only exist at one facility level. For example, NPHCDA PHC revitalisation requirements include pharmacy/dispensary, laboratory, delivery/labour, and, for higher PHC levels, inpatient ward capability. A facility should therefore be assessed against the **services it is authorised and configured to provide**, while retaining the minimum digital capabilities expected for its level of care.

### Interpretation and future conformance

Functional requirements describe **what the system must be able to do** to support users and clinical or administrative workflows. Non-functional requirements describe **how well and under what technical, operational, security, usability, interoperability, and environmental constraints the system must operate**. This separation is consistent with the WHO SMART Guidelines approach to high-level functional and non-functional requirements.

The source requirement inventory uses terms such as **shall**, **should**, and **may**. On this page these terms preserve the intended direction of the source material but remain **provisional** until each requirement is assigned a final applicability, obligation level, acceptance criterion, and test method. Final national requirements are expected to be traceable to computable Nigeria Core artefacts and conformance tests wherever practicable.

| | |
| :--- | :--- |
| **Baseline** | Expected capability for routine operation at that facility level, subject to the services offered. |
| **Expanded** | Builds on baseline functionality to support additional service complexity, integration, workflow, or operational scale. |
| **Advanced / Enterprise** | Capability required for specialist, high-volume, highly integrated, high-availability, or enterprise environments. |
| **Conditional** | Required only when the corresponding clinical service, programme, device, workflow, or business function is implemented. |

### PHC Functional and Non-Functional Requirements

PHC systems should prioritise reliable point-of-care capture, continuity of care, community and preventive services, maternal and child health, immunisation, common diagnoses and treatment, referral, national reporting, and safe operation in settings with intermittent connectivity. The system should support paperless workflows while allowing controlled migration or capture of relevant historical paper records where required.

#### PHC Functional Requirements

| | |
| :--- | :--- |
| **Patient identity and registration** | Create, search, view, and update patient records using core demographics and national/facility identifiers; support alternate identity documents; generate a local unique identifier where needed; detect possible duplicates; and support temporary/unknown-patient registration for emergency or exceptional circumstances. |
| **Patient history and encounter documentation** | Record encounters, presenting complaints, history of present illness, relevant medical/surgical/obstetric/paediatric/social/family history, physical examination, allergies/adverse reactions, problems/diagnoses, progress notes, treatment plans, and care outcomes using structured data with controlled free text where appropriate. Support longitudinal views of services provided by date, service type, diagnosis, or other clinically useful criteria. |
| **Patient summary** | Maintain a patient-specific summary that can display key problems, medicines, allergies/adverse reactions, relevant care history, treatment interruptions/restarts, recent results, missed appointments, and other information required for continuity of care. |
| **Vital signs, anthropometry and basic decision support** | Record and trend vital signs and essential clinical observations; calculate relevant measures such as BMI and age/sex-appropriate anthropometry; support reminders and alerts for abnormal values, allergies, due services, and protocol-driven care. |
| **Maternal, newborn, child and reproductive health** | Capture family planning, pregnancy, ANC, childbirth, PNC, newborn and child health data using national programme formats and support calculations or reminders such as gestational age, expected date of delivery, and scheduled follow-up. |
| **Immunisation** | Capture immunisation history and status using nationally adopted vaccine terminology; maintain client-specific immunisation schedules; identify due or missed doses; and support defaulter/follow-up workflows where implemented. |
| **Diagnosis, treatment and medicines** | Record active/resolved and primary/presumptive/confirmed diagnoses as appropriate; display current and previous medicines and relevant results; prescribe and manage medication orders; capture dispensing where performed; support standard regimens, adverse effects, treatment interruption/restart information, and care plans. |
| **Basic orders and results** | Request and track laboratory tests and other diagnostics available at the facility; capture or receive results; indicate urgent requests; and support basic imaging or other diagnostic orders when those services are available. |
| **Referral and care coordination** | Create internal or external referrals, identify appropriate receiving facilities/providers from authorised registries where available, generate a referral summary, exchange relevant clinical information, and track referral status or feedback when supported by the receiving system. |
| **Appointments, queues and follow-up** | Register appointments, manage service queues and waiting lists as applicable, maintain missed-appointment information, and support patient reminders or follow-up messaging where enabled. |
| **Community and outreach services** | Support lightweight/mobile workflows for community health workers, field data collection, geolocation where appropriate, household/community service delivery, work planning, supervision, and reach tracking. |
| **Billing and financial transactions** | Where applicable, display service prices, associate charges or invoices with an encounter, and capture basic billing, payment, insurance, or claim information required by the facility or programme. |
| **Certificates and care outcomes** | Record discharge, referral, transfer, death, or other encounter outcomes and support the capture/issuance of authorised birth, death, or other medical certificate information where the facility is permitted to do so. |
| **Programme and public-health reporting** | Capture the data elements required for individual care and programme monitoring, generate required aggregate HMIS/NHMIS reports, and support electronic submission to authorised national reporting platforms. |
| **Patient-facing and remote support** | Conditionally support patient education, instructions, reminders, read-only patient access, remote monitoring inputs, or teleconsultation where these services are part of the facility model. |

#### PHC Non-Functional Requirements

| | |
| :--- | :--- |
| **Interoperability and data standards** | Support Nigeria Core FHIR R4 exchange for applicable resources and interactions; support JSON and XML representations where required for FHIR interoperability; use national identifiers, profiles and terminology bindings; and use internationally recognised terminology such as ICD-11, SNOMED CT, LOINC, or other standards only as nationally adopted and applicable to the data domain. |
| **Data quality and record integrity** | Validate required data at entry; capture transaction date/time; flag incomplete records where appropriate; prevent unauthorised alteration; preserve history/version information; support configurable note locking or amendment rules; support electronic signatures where required; support record inactivation/nullification according to policy; and maintain records of deceased patients according to retention rules. |
| **Core data domains** | Represent the nationally required data for demographics, encounters, allergies/intolerances, insurance, workforce, health-status assessments, patient summaries/care plans, laboratory and clinical tests, imaging where applicable, immunisation, medical devices where applicable, goals/preferences, vital statistics, medical orders, and other approved programme or patient-experience data. |
| **Identity management** | Maintain a persistent patient identifier within the implementation context, support patient matching and duplicate resolution, and support linkage to national registries or identifiers when those services are available. |
| **Security and privacy** | Require secure authentication; apply role/group-based access controls; restrict access to data and functions according to user responsibility; support session timeout/automatic logout; protect data in transit and at rest; maintain audit logs; and support recording of consent documents and consent/privacy preferences required by Nigerian law and approved national policy, including authorised secondary-use/analytics preferences where applicable. |
| **Auditability** | Record sufficient audit information to establish who performed an action, what was performed, when it occurred, and the affected record or function; support review of suspicious or unauthorised access attempts. |
| **Offline and low-connectivity operation** | Core point-of-care workflows should remain usable during intermittent or absent internet connectivity, with safe local caching/synchronisation and conflict/error handling appropriate to the deployment architecture. |
| **Usability and accessibility** | Provide responsive interfaces suitable for common desktops, tablets, and phones used at the point of care; minimise unnecessary data entry; use context-aware selection or completion where safe; and provide workflows appropriate to the skills and responsibilities of PHC users. |
| **Reliability and performance** | Provide acceptable response times for routine clinical use, recover safely from common failures, and be tested under the expected PHC workload. Exact national latency, availability, and concurrency thresholds remain to be finalised. |
| **Hosting and deployment** | Support deployment models approved for the programme or facility, including on-premises, cloud, hybrid, or synchronised edge/offline architectures where required. |
| **Reporting and analytics** | Produce standard aggregate reports and basic visualisation/dashboard outputs while preserving the ability to export or transmit authorised data to national systems. |
| **Documentation and maintainability** | Maintain user, workflow, configuration, interface/API, deployment, backup/recovery, and technical documentation sufficient for implementation, support, upgrade, and handover. |

### General Hospital Functional and Non-Functional Requirements

A General Hospital should satisfy the applicable PHC baseline and progressively support secondary-level care, including emergency assessment, inpatient care, broader diagnostics, procedures, pharmacy, referral management, hospital administration, and more extensive exchange with other clinical systems.

#### General Hospital Functional Requirements

| | |
| :--- | :--- |
| **All applicable PHC capabilities** | Retain the PHC baseline for registration, ambulatory care, maternal/child services, immunisation, medicines, basic diagnostics, referral, reporting, privacy, and interoperability. |
| **Emergency and unscheduled care** | Support rapid registration or temporary identity for unknown patients, triage, emergency observations, urgent orders, emergency treatment documentation, and later reconciliation with the correct patient identity. |
| **Inpatient and ward management** | Manage admission, transfer, discharge, ward/bed assignment, inpatient encounter documentation, care plans, progress notes, nursing/clinical observations, and inpatient outcomes. |
| **Laboratory services** | Support broader laboratory order entry, specimen-related workflows where implemented, result receipt/validation/display, longitudinal review, abnormal-result alerts, and integration with a laboratory information system or analyser interfaces where available. |
| **Imaging and diagnostics** | Support imaging/diagnostic orders, scheduling/status, reports, and exchange with imaging systems; use DICOM-based integration where radiology imaging services and PACS/RIS are implemented. |
| **Pharmacy and medication management** | Support prescribing, editing/cancelling medication orders, e-prescribing where enabled, formulary/availability display, dispensing history, medication administration or supply workflows as applicable, allergy/interaction alerts, and pharmacy integration. |
| **Blood and blood products** | Where blood services are provided, support ordering, status tracking, results/compatibility information, administration documentation, and relevant traceability requirements. |
| **Procedures and surgery** | Record planned and completed procedures/surgeries, related orders, treatment notes, complications/adverse effects, and follow-up plans. |
| **Referral and consultation management** | Support internal departmental consultation and external referral; select receiving facilities/providers; generate clinical referral summaries; exchange supporting documents; receive feedback; and track pending, completed, or cancelled referrals where systems permit. Where authoritative data are available, referral decision support may incorporate service availability, bed availability, geography/proximity, and other approved referral criteria. |
| **Clinical decision support** | Provide configurable alerts, reminders, protocol guidance, abnormal-result notifications, medication/allergy checks, due-order/dose notifications, and condition-specific care plan support appropriate to services offered. |
| **Appointments, queue and practice management** | Manage appointments, clinic schedules, staff/service schedules, queues, waiting lists, and service availability across multiple departments. |
| **Billing, insurance and claims** | Associate invoices/charges with encounters and services; manage billing and claims information across hospital transactions; support payer/insurance information and basic revenue-cycle reporting where implemented. |
| **Inventory and facility operations** | Manage relevant facility assets and inventory, including medicines/supplies and operational resources such as wards, rooms, beds, and service availability. |
| **Telemedicine and second-level consultation** | Where implemented, support inbound teleconsultation, secure exchange of documents/images, clinical decision support during consultation, referral for further services, and secure clinician-to-clinician advice. |
| **Documents and certificates** | Manage clinical documents and authorised medical certificates, with appropriate indexing, access control, provenance, and linkage to the patient/encounter. |
| **Reporting and surveillance** | Generate programme, morbidity/mortality, service, operational, and ad hoc reports; support reportable-condition alerts and authorised electronic submission to national platforms. |

#### General Hospital Non-Functional Requirements

| | |
| :--- | :--- |
| **All applicable PHC non-functional requirements** | Retain PHC requirements for data quality, privacy, offline resilience where needed, auditability, interoperability, usability, maintainability, and reporting. |
| **Systems integration** | Provide secured bi-directional interfaces/APIs for authorised systems such as registries, LIS, pharmacy, imaging, payment, messaging/SMS, and other EHR/HIE services; integration should use open standards and Nigeria Core profiles wherever defined. |
| **Terminology and semantic interoperability** | Support national terminology services/value sets and facility-local terms mapped to nationally adopted standards; use LOINC for laboratory observations where adopted and DICOM for medical imaging exchange where applicable. |
| **Security assurance** | Strengthen authentication and authorisation for hospital-wide use; support MFA for privileged or risk-sensitive access where required; implement encryption, secure session management, audit review, least-privilege access, and periodic security testing. |
| **Availability and recoverability** | Implement backup, restore, fault recovery, and disaster-recovery procedures appropriate to hospital dependency on the system, with measurable recovery objectives to be finalised through national or local SLAs. |
| **Performance and concurrency** | Test performance under the expected number of simultaneous clinical and administrative users, laboratory/imaging interfaces, and reporting jobs. Candidate numerical thresholds in the source inventory remain subject to validation and should not be treated as national requirements until formally approved. |
| **Data warehouse and analytics** | Support configurable aggregate analytics and, where required, a data warehouse or reporting layer that does not compromise transactional clinical performance or patient privacy. |
| **Document management** | Provide controlled storage, indexing, retrieval, access, and lifecycle management for supported clinical files such as PDFs, images, scanned documents, and other authorised attachments. |
| **DevSecOps and software quality** | Maintain repeatable build, test, release, vulnerability-management, and deployment processes; include unit, integration, regression, performance, and security testing appropriate to the implementation. |
| **Operational documentation** | Maintain architecture, workflow, integration, migration, test, security, deployment, maintenance, backup/recovery, and support documentation for the hospital implementation. |

### Tertiary Hospital Functional and Non-Functional Requirements

A Tertiary Hospital should satisfy the applicable PHC and General Hospital requirements and add the capabilities needed for specialist and subspecialist care, multidisciplinary coordination, advanced diagnostics and procedures, high-volume service delivery, enterprise integration, and stronger resilience and cybersecurity controls.

#### Tertiary Hospital Functional Requirements

| | |
| :--- | :--- |
| **All applicable PHC and General Hospital capabilities** | Retain the cumulative functional baseline while supporting substantially greater clinical complexity, departmental diversity, service volume, and cross-facility coordination. |
| **Specialist and multidisciplinary care** | Support specialist/subspecialist encounters, multidisciplinary care plans, consultations, longitudinal problem management, complex treatment pathways, advanced decision support, and coordinated follow-up across departments. |
| **Advanced diagnostics** | Support high-volume and specialised laboratory, pathology, imaging, and other diagnostic workflows, including structured orders/results and integration with specialist departmental systems. |
| **Advanced imaging interoperability** | Support enterprise imaging workflows and DICOM-based exchange with PACS/RIS and other authorised imaging systems, including report/result linkage to the patient record. |
| **Complex medicines and therapies** | Support complex prescribing, medication review, interaction/allergy checking, treatment protocols, therapy monitoring, specialist pharmacy workflows, and relevant treatment interruption/adverse-event history. |
| **Complex procedures and surgery** | Support specialist procedures, surgery, peri-procedural documentation, advanced order sets, blood/blood product workflows, complications, and longitudinal post-procedure follow-up. |
| **Enterprise referral and consultation** | Coordinate referrals from lower levels of care, internal specialist consultation, onward referral, counter-referral/feedback, and secure sharing of relevant patient summaries, documents, results, and care plans. |
| **Advanced clinical decision support** | Support configurable guideline-based pathways, high-risk alerts, protocol reminders, result surveillance, medication safety checks, and condition-specific care plans while maintaining clinician oversight. |
| **Enterprise administration** | Support complex scheduling, multiple clinics/departments, workforce roles, ward/bed management, asset/service availability, billing/claims, revenue-cycle analytics, inventory, and operational reporting. |
| **Telemedicine and expert consultation** | Support secure remote consultation, specialist second opinion, document/image exchange, and referral coordination with lower-level facilities or other specialist centres where implemented. |
| **Patient engagement and longitudinal access** | Conditionally support patient portals, appointment/follow-up messaging, treatment instructions, remote-monitoring inputs, and access to appropriate portions of the longitudinal record. |
| **Advanced reporting and secondary use** | Support detailed clinical, programme, operational, quality, morbidity/mortality, and ad hoc analytics, with governance for authorised aggregate/secondary use and consent or opt-out requirements where applicable. |

#### Tertiary Hospital Non-Functional Requirements

| | |
| :--- | :--- |
| **All applicable lower-level non-functional requirements** | Retain and strengthen the PHC and General Hospital requirements for interoperability, security, privacy, usability, data quality, audit, documentation, and maintainability. |
| **Enterprise interoperability architecture** | Support secured, versioned APIs and interfaces across EHR, HIE, registry, terminology, LIS, RIS/PACS, pharmacy, billing, devices, document systems, and authorised external platforms, with Nigeria Core FHIR R4 used for applicable health data exchange. |
| **Enterprise terminology services** | Support consistent use, validation, expansion, and mapping of national CodeSystems, ValueSets, ConceptMaps, and adopted international terminologies across departments and connected systems. |
| **High availability and resilience** | Use architecture appropriate to continuous clinical dependency, including redundancy, monitored backups, tested restoration, disaster recovery, fault tolerance, and defined recovery objectives. |
| **Scalability and workload management** | Scale across high transaction volumes, concurrent users, interface traffic, background reporting, and large clinical datasets without clinically significant deterioration. Final national performance thresholds should be set through representative load and workflow testing rather than assumed from a single deployment size. |
| **Cybersecurity and privacy assurance** | Apply strong identity/access management, MFA where risk-appropriate, encryption at rest and in transit, secure key/secret management, audit monitoring, vulnerability management, penetration testing, incident response, and privacy-by-design controls consistent with Nigerian data-protection obligations and recognised health-information security practice. |
| **Security verification** | Use a defined application security verification baseline for web/mobile/API components and retain evidence of security, penetration, static/dynamic analysis, dependency, regression, and remediation testing as required by national certification or procurement criteria. |
| **Observability and IT audit** | Monitor availability, errors, interface failures, resource utilisation, security events, and performance; support audit analysis and an access-control matrix/hierarchy that can be reviewed and governed by authorised leadership. |
| **Data platform and analytics** | Support enterprise reporting/data-warehouse architectures for authorised analysis while separating analytical workloads from operational clinical transactions and enforcing privacy, access, and data-governance controls. |
| **Deployment portability** | Support approved on-premises, cloud, hybrid, or distributed deployment patterns, with documented dependencies, portability, migration, backup, and exit/recovery arrangements. |
| **Software lifecycle and DevSecOps** | Maintain controlled source, automated testing, reproducible builds, CI/CD or equivalent controlled release processes, environment separation, change management, rollback, vulnerability remediation, and documented release governance. |
| **Technical and operational documentation** | Maintain complete and current architecture, workflow, interface, terminology, configuration, security, test, migration, deployment, recovery, and operational support documentation. |

### Progressive Capability Summary

The following matrix is a high-level summary. **Expanded** and **Advanced** mean that the lower-level capability is inherited and strengthened rather than replaced.

| | | | |
| :--- | :--- | :--- | :--- |
| Patient identity/registration | **Baseline** | **Expanded**emergency/inpatient identity workflows | **Advanced**enterprise matching and cross-system identity workflows |
| Ambulatory clinical documentation | **Baseline** | **Expanded**multi-department use | **Advanced**specialist/subspecialist longitudinal care |
| Maternal, child, immunisation and community services | **Baseline** | **Baseline/Expanded**where provided | **Baseline/Expanded**where provided and for referral continuity |
| Laboratory | **Basic/Conditional** | **Expanded**LIS integration | **Advanced**enterprise/specialist diagnostics |
| Imaging | **Conditional** | **Expanded**imaging workflow | **Advanced**RIS/PACS and enterprise imaging |
| Pharmacy/medication | **Baseline** | **Expanded**hospital pharmacy | **Advanced**complex therapies and specialist protocols |
| Inpatient/ward management | **Conditional**, including higher-level PHCs where provided | **Baseline** | **Advanced**high-volume/specialist inpatient care |
| Procedures/surgery | **Basic/Conditional** | **Expanded** | **Advanced**complex procedures and peri-operative pathways |
| Referral/counter-referral | **Baseline** | **Expanded**internal and external referral | **Advanced**specialist network coordination |
| Billing/claims | **Conditional/Baseline**where applicable | **Expanded** | **Advanced**enterprise revenue-cycle integration |
| Community/mobile/offline | **High priority** | **Conditional/continuity requirement** | **Conditional/continuity requirement** |
| Reporting/HMIS | **Baseline** | **Expanded**operational and clinical reporting | **Advanced**enterprise analytics and secondary-use governance |
| FHIR/API interoperability | **Baseline for exchanged data** | **Expanded**multi-system integration | **Advanced**enterprise/HIE integration |
| Security/privacy/audit | **Baseline** | **Expanded**hospital-wide controls | **Advanced**enterprise cybersecurity and monitoring |
| Availability/recovery | **Resilient/offline capable** | **Defined hospital recovery capability** | **High availability and tested disaster recovery** |
| Performance/scalability | **Expected PHC workload** | **Hospital workload tested** | **Enterprise/high-volume workload tested** |
| Documentation/DevSecOps | **Maintainable implementation** | **Formalised lifecycle** | **Enterprise controlled lifecycle and assurance** |

### Requirements maturation and finalisation

The attached requirement inventories are intentionally broader than the minimum computable requirements currently expressed in Nigeria Core. Before they become formal conformance or procurement requirements, the requirements should be progressively matured through the following process:

1. **Normalise and de-duplicate**overlapping statements while preserving their clinical and operational intent.
1. **Assign applicability**by facility level, service type, user persona, programme, and deployment model.
1. **Assign obligation strength**(`SHALL`,`SHOULD`, or`MAY`) and identify conditional requirements.
1. **Map requirements to Nigeria Core artefacts**, including profiles, extensions, terminology, search parameters, operations, CapabilityStatements, exchange documents, and implementation guidance.
1. **Define measurable acceptance criteria**and representative test data for every requirement intended for certification or procurement.
1. **Define non-functional service levels**for availability, latency, throughput, concurrency, recovery, synchronisation, and offline operation using representative Nigerian deployment scenarios. Numerical values listed in early requirement inventories should remain provisional until benchmarked and approved.
1. **Harmonise privacy and security requirements**with the Nigeria Data Protection Act, applicable Nigeria Industrial Standards, approved health-sector security policy, and risk-based application security verification criteria. External frameworks or compliance claims should be treated as supplementary evidence and not as a substitute for applicable Nigerian legal and national standards obligations.
1. **Create traceable conformance tests**, including FHIR validation, API tests, workflow demonstrations, security testing, interoperability testing, and evidence requirements for capabilities that cannot be verified through FHIR alone.
1. **Version and publish the approved requirement set**so implementers can distinguish draft guidance from normative requirements and can identify which version was used for implementation, procurement, sandbox testing, or certification.

### Alignment principles

The progressive model on this page is informed by the supplied functional and non-functional requirement inventories and by the following external standards and guidance:

* **WHO SMART Guidelines / Digital Adaptation Kits (DAKs):** treat high-level functional and non-functional requirements as software-neutral components that translate clinical, public-health, and data-use guidance into implementable digital system expectations. See [WHO SMART Guidelines — Digital Adaptation Kits](https://www.who.int/publications/m/item/who-digital-accelerator-kits) and the [SMART Guidelines Starter Kit](https://smart.who.int/ig-starter-kit/l2_dak_authoring.html).
* **NPHCDA service expectations:** the PHC baseline should reflect the services delivered at PHC level and recognise that higher PHC facility levels may include laboratory, pharmacy/dispensary, delivery/labour, and inpatient capabilities. See [NPHCDA PHC Revitalization](https://nphcda.gov.ng/phc-revitalization/) and [Basic Health Care Provision Fund](https://nphcda.gov.ng/bhcpf/).
* **National Health Act 2014:** provides the overarching legal framework for regulation, development, and management of Nigeria's national health system and standards for rendering health services. See the [Nigeria National Health Act 2014 record](https://natlex.ilo.org/dyn/natlex2/r/natlex/fe/details?p3_isn=104157).
* **HL7 FHIR R4:** provides the exchange standard used by Nigeria Core; CapabilityStatements can state required or implemented system capabilities and support compatibility/conformance assessment. See [FHIR R4](https://hl7.org/fhir/R4/) and [CapabilityStatement](https://hl7.org/fhir/R4/capabilitystatement.html).
* **Nigeria Data Protection Act 2023:** provides the national legal framework for protection and responsible processing of personal data, including health-related personal data. See the [Nigeria Data Protection Commission](https://ndpc.gov.ng/) and the [Nigeria Data Protection Act 2023](https://ndpc.gov.ng/wp-content/uploads/2024/03/Nigeria_Data_Protection_Act_2023.pdf).
* **ISO/IEC 25010:2023:** provides a product-quality model for specifying and evaluating software quality characteristics. See [ISO/IEC 25010:2023](https://www.iso.org/standard/78176.html).
* **ISO 27799:2025:** provides health-sector information-security controls and implementation guidance based on ISO/IEC 27002. See [ISO 27799:2025](https://www.iso.org/standard/84647.html).
* **OWASP ASVS:** provides a practical baseline for testing technical application security controls and specifying verifiable secure-development requirements. See [OWASP Application Security Verification Standard](https://owasp.org/www-project-application-security-verification-standard/).
* **DICOM and LOINC:** support interoperable medical imaging and laboratory/clinical observation exchange respectively when those domains are implemented. See [DICOM](https://www.dicomstandard.org/) and [LOINC](https://loinc.org/).

### Implementation note

This page intentionally remains a **summary layer**. Detailed requirements should ultimately be maintained in a version-controlled requirement catalogue with stable identifiers (for example, `PHC-FR-001`, `GH-NFR-012`, `TH-FR-021`) and bidirectional traceability to implementation artefacts and test cases. That catalogue can then support an approved set of vendor self-assessment response states (including the source inventory's **fully supported** and **partially supported** concepts), together with demonstration evidence during sandbox, procurement, or conformance assessment.

