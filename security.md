# Security - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* **Security**

## Security

### Patient Privacy and Security

Nigeria Core exchanges may contain highly sensitive personal health, identity, provider, facility, claims, pharmacy, laboratory, registry and programme data. Implementers **SHALL** protect confidentiality, integrity, availability, accountability and patient safety throughout the information lifecycle.

Implementations **SHALL** comply with applicable Nigerian law, health-sector policy, approved data-sharing agreements and relevant Standards Organisation of Nigeria (SON) health-informatics standards.

### Core Security Requirements

Systems **SHALL**:

* apply documented, risk-based administrative, physical and technical controls;
* assign security roles and responsibilities and periodically review controls;
* authenticate every user, application, device or service before protected access;
* enforce least privilege using roles, attributes, scopes, organisation, programme, geography and purpose;
* protect data in transit using HTTPS/TLS 1.2 or higher and protect sensitive data at rest;
* protect credentials, cryptographic keys, source code, backups and security configurations;
* separate development, test and production environments and control software changes;
* maintain vulnerability, incident-response, business-continuity and recovery processes; and
* manage supplier and hosted-service security through agreements and periodic review.

These controls align with the health-sector information-security management framework in **NIS ISO 27799:2019**.

### Authentication and Authorisation

Protected FHIR endpoints **SHALL** use strong authentication and explicit authorisation. OAuth 2.0, OpenID Connect, SMART App Launch and mutual TLS **SHOULD** be used where applicable. Multi-factor authentication **SHOULD** protect privileged, remote and high-risk access.

Access decisions **SHALL** consider the authenticated identity, assigned role, requested operation, subject of care, organisation, facility, programme, location, purpose and consent restrictions. Emergency or break-glass access **SHALL** be exceptional, time-limited, logged and reviewed.

Where digital certificates are used, they **SHOULD** identify the relevant individual, organisation, device or application. Certificate issuance, validation, renewal, revocation, trust and key lifecycle processes **SHALL** follow approved certificate policies and practices consistent with **NIS ISO 17090-2:2019** and **NIS ISO 17090-3:2019**.

### Privacy, Consent and Data Minimisation

Systems **SHALL** process and disclose only the minimum data required for an authorised purpose. Consent, restriction, opt-out and onward-disclosure requirements **SHOULD** be represented and enforced using policy controls and, where exchanged, the FHIR `Consent` resource.

Identifiable production data **SHALL NOT** be used in public sandboxes, demonstrations or shared test environments. Synthetic or appropriately de-identified data **SHOULD** be used.

Where identity is unnecessary, systems **SHOULD** apply anonymisation, pseudonymisation, aggregation, masking or suppression. Pseudonymisation processes **SHALL** assess direct and indirect re-identification risks, protect linkage information separately, and document any authorised re-identification process. Exceptional re-identification **SHALL** require specific authorisation, strong authentication and a trusted process, consistent with **NIS ISO 25237:2019**.

### Audit and Accountability

Systems **SHALL** create secure audit records for access, query, creation, update, deletion, disclosure, export, synchronisation and administrative actions involving personal health information.

Audit records **SHOULD** identify:

* who or what performed the action and the role used;
* whose record or which resource was affected;
* the action, purpose and outcome;
* the date and time from a synchronised time source; and
* the application, device, access point or organisation involved.

Audit logs **SHALL** be protected against unauthorised access, alteration and deletion, retained according to policy, and available for investigation and patient-access reporting where required. FHIR `AuditEvent` **SHOULD** be used when audit information is exchanged. These requirements align with **NIS ISO 27789:2019**.

### Data Integrity, Provenance and Signatures

Systems **SHOULD** record the source, author, responsible organisation, creation or submission time, transformation and custodian of exchanged data using FHIR `Provenance` where appropriate.

Checksums, digital signatures or equivalent controls **SHOULD** be used where document integrity, authenticity or non-repudiation is required. FHIR narratives and attachments **SHALL** receive the same protection as structured data.

### Availability, Backup and Archiving

Systems **SHALL** support clinically appropriate availability, backup, restoration, downtime and disaster-recovery arrangements. A backup **SHALL NOT** be treated as a substitute for a governed long-term archive.

Archived health records **SHALL** remain readable, complete, confidential and verifiably unaltered for the required retention period. Archive access, migration, correction, disclosure and destruction **SHALL** be controlled and auditable, consistent with **NIS ISO 21547:2019**.

### Software Conformance and Testing

Health software suppliers **SHOULD** maintain objective evidence that security and privacy requirements have been designed, implemented and tested. Conformance testing **SHOULD** cover consent, identification, authentication, access control, session security, availability, secure transmission and storage, integrity, retention, labelling, audit, version control, time synchronisation, incident handling, certificates and signatures, as described by **NIS ISO/TS 14441:2019**.

Before production use, implementations **SHOULD** complete security testing, privacy-risk assessment, FHIR conformance validation and clinical-safety review. Bulk export, deletion, conflict resolution and administrative operations **SHALL** require elevated authorisation and audit logging.

### Referenced Nigerian Industrial Standards

| | |
| :--- | :--- |
| **NIS ISO 27799:2019** | Health information-security management and organisational controls |
| **NIS ISO/TS 14441:2019** | Security and privacy requirements for EHR software conformity assessment |
| **NIS ISO 27789:2019** | EHR audit events, audit-record content and secure audit management |
| **NIS ISO 25237:2019** | Pseudonymisation, re-identification risk and controlled re-identification |
| **NIS ISO 17090-2:2019** | Healthcare public-key certificate profiles |
| **NIS ISO 17090-3:2019** | Certificate policies and certification-authority practices |
| **NIS ISO 21547:2019** | Secure long-term preservation and archiving of electronic health records |

Implementers **SHOULD** also review the FHIR guidance for [Communications], [Authentication], [Authorization/Access Control], [Audit Logging], [Digital Signatures], [Security Labels], [Narrative], [Provenance], [Consent] and [Clinical Safety].

