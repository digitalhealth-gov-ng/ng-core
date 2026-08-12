# Artifacts Summary - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Requirements: Actor Definitions 

The following artifacts define the types of individuals and/or systems that will interact as part of the use cases covered by this implementation guide.

| | |
| :--- | :--- |
| [NG Conformance and Sandbox Service](ActorDefinition-NgCoreConformanceSandboxService.md) | A service supporting Nigeria Core implementation testing, validation, and conformance assessment. |
| [NG Registry Service](ActorDefinition-NgCoreRegistryService.md) | A service that maintains or provides authoritative registry information. |
| [NG Requestor](ActorDefinition-NgCoreRequestor.md) | A client application or service that initiates a Nigeria Core FHIR exchange. |
| [NG Responder](ActorDefinition-NgCoreResponder.md) | A server, repository, or service that responds to Nigeria Core FHIR requests. |
| [NG Terminology Service](ActorDefinition-NgCoreTerminologyService.md) | A service that provides governed terminology and terminology operations. |

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [NG Authoritative Server Requirements](CapabilityStatement-NgCoreServerRequirements.md) | Authoritative computable FHIR R4 server requirements for Nigeria Core. This CapabilityStatement defines the national baseline for resource support, Nigeria Core profiles, RESTful interactions, search capability, operations, reference handling, successful outcomes, security expectations, and OperationOutcome failure behaviour.Facility-, program-, registry-, terminology-, regulator-, Shared Health Record-, and sandbox-specific CapabilityStatements may narrow or extend this national baseline for their declared scope. |
| [NG General Hospital Conformance and Sandbox Capability](CapabilityStatement-NgGeneralHospitalSandboxCapability.md) | Minimum computable FHIR requirements for the Nigeria Core Conformance and Sandbox Service role in General Hospital facilities. |
| [NG General Hospital Registry Service Capability](CapabilityStatement-NgGeneralHospitalRegistryCapability.md) | Minimum computable FHIR requirements for the Nigeria Core Registry Service role in General Hospital facilities. |
| [NG General Hospital Requestor Capability](CapabilityStatement-NgGeneralHospitalRequestorCapability.md) | Minimum computable FHIR requirements for the Nigeria Core Requestor role in General Hospital facilities. |
| [NG General Hospital Responder Capability](CapabilityStatement-NgGeneralHospitalResponderCapability.md) | Minimum computable FHIR requirements for the Nigeria Core Responder role in General Hospital facilities. |
| [NG General Hospital Terminology Service Capability](CapabilityStatement-NgGeneralHospitalTerminologyCapability.md) | Minimum computable FHIR requirements for the Nigeria Core Terminology Service role in General Hospital facilities. |
| [NG PHC Conformance and Sandbox Capability](CapabilityStatement-NgPHCSandboxCapability.md) | Minimum computable FHIR requirements for the Nigeria Core Conformance and Sandbox Service role in primary health care facilities. |
| [NG PHC Registry Service Capability](CapabilityStatement-NgPHCRegistryCapability.md) | Minimum computable FHIR requirements for the Nigeria Core Registry Service role in primary health care facilities. |
| [NG PHC Requestor Capability](CapabilityStatement-NgPHCRequestorCapability.md) | Minimum computable FHIR requirements for the Nigeria Core Requestor role in primary health care facilities. |
| [NG PHC Responder Capability](CapabilityStatement-NgPHCResponderCapability.md) | Minimum computable FHIR requirements for the Nigeria Core Responder role in primary health care facilities. |
| [NG PHC Terminology Service Capability](CapabilityStatement-NgPHCTerminologyCapability.md) | Minimum computable FHIR requirements for the Nigeria Core Terminology Service role in primary health care facilities. |
| [NG Tertiary Referral Conformance and Sandbox Capability](CapabilityStatement-NgTertiarySandboxCapability.md) | Minimum computable FHIR requirements for the Nigeria Core Conformance and Sandbox Service role in tertiary referral facilities. |
| [NG Tertiary Referral Registry Service Capability](CapabilityStatement-NgTertiaryRegistryCapability.md) | Minimum computable FHIR requirements for the Nigeria Core Registry Service role in tertiary referral facilities. |
| [NG Tertiary Referral Requestor Capability](CapabilityStatement-NgTertiaryRequestorCapability.md) | Minimum computable FHIR requirements for the Nigeria Core Requestor role in tertiary referral facilities. |
| [NG Tertiary Referral Responder Capability](CapabilityStatement-NgTertiaryResponderCapability.md) | Minimum computable FHIR requirements for the Nigeria Core Responder role in tertiary referral facilities. |
| [NG Tertiary Referral Terminology Service Capability](CapabilityStatement-NgTertiaryTerminologyCapability.md) | Minimum computable FHIR requirements for the Nigeria Core Terminology Service role in tertiary referral facilities. |

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Generate Nigeria Core Certificate](OperationDefinition-generate-certificate.md) | Generates a certificate or certificate document for the Patient on which the operation is invoked. |
| [Generate Nigeria Core Patient Summary](OperationDefinition-generate-ng-patient-summary.md) | Generates a Nigeria Core patient summary for the Patient on which the operation is invoked. |
| [Submit Nigeria Core Measure Report](OperationDefinition-submit-ng-report.md) | Submits a Nigeria Core MeasureReport for validation and processing by the receiving reporting service. |
| [Verify Nigeria Core Certificate](OperationDefinition-verify-certificate.md) | Verifies the authenticity and integrity of a certificate represented by the DocumentReference on which the operation is invoked. |

### Knowledge Artifacts: Measure 

These define measures as part of content in this implementation guide.

| | |
| :--- | :--- |
| [NHMIS Monthly Outpatient Attendance Measure](Measure-NgMeasure-NHMIS-001.md) | A simple NHMIS aggregate measure defining the total number of outpatient attendances recorded by a reporting health facility during a monthly reporting period. |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [NG HIV Enhanced Adherence Counselling Monitoring Register](StructureDefinition-NgHivEacRegister.md) | Logical model for the patient-level Nigeria Enhanced Adherence Counselling Monitoring Register. One model instance represents one facility monthly cohort page and contains repeatable client entries corresponding to printed columns A1 through A24. |
| [NG HIV Integrated Laboratory Monitoring Register](StructureDefinition-NgHivIntLabMonitoringRegister.md) | Logical model for the Nigeria HIV Integrated Laboratory Monitoring Register. One instance represents one facility monthly register page and contains repeatable patient-level laboratory entries corresponding to printed columns A1 through A72. |
| [NG HIV National ART Register](StructureDefinition-NgHivArtRegister.md) | Logical model for the patient-level Nigeria National ART Register. One model instance represents a facility cohort page for a reporting month and contains repeatable client entries corresponding to register rows A1 through A35. |
| [NG HIV Pharmacy Daily Worksheet](StructureDefinition-NgHivPharmacyDailyWorksheet.md) | Logical model for the revised Nigeria HIV Pharmacy Daily Worksheet. One instance represents one pharmacist worksheet for one dispensing date and contains repeatable patient-level dispensing entries corresponding to printed fields W1 through W73. |
| [NG HIV Tracking Register](StructureDefinition-NgHivTrackingRegister.md) | Logical model for the Nigeria HIV Tracking Register. One instance represents one facility monthly tracking page and contains repeatable client entries for current ART clients who missed a scheduled clinic appointment. The printed register instructs facilities to enter eligible clients within 24 hours of default. |

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [NG HIV Care and ART Questionnaire](Questionnaire-ng-hiv-care-art-questionnaire.md) | Computable Questionnaire representing the initial HIV care and ART card, including initial visit, ART commencement, regimen changes, interruptions, adherence preparation, initial clinical evaluation, and care and support services. |
| [NG HIV Care and Treatment Transfer Form Questionnaire](Questionnaire-ng-hiv-transfer-form-questionnaire.md) | Computable Questionnaire representing the Nigeria HIV Care and Treatment Transfer Form used when a client is transferred, rather than referred, from one HIV treatment site to another treatment site. |
| [NG HIV Combined Pharmacy Order Form Questionnaire](Questionnaire-ng-hiv-pharmacy-order-questionnaire.md) | Computable Questionnaire representing the Nigeria Combined Pharmacy Order Form for adult and paediatric ART, OI prophylaxis or treatment, TB preventive therapy, PrEP and other prescribed medicines. It also captures dispensing, counselling, medicine pickup and pharmacist medication-error feedback. |
| [NG HIV Enhanced Adherence Counselling Form Questionnaire](Questionnaire-ng-hiv-eac-form-questionnaire.md) | Computable Questionnaire representing the Nigeria Enhanced Adherence Counselling Form. It captures client information, repeatable EAC sessions, identified adherence barriers, services and tools provided, referrals, follow-up arrangements and the post-EAC repeat viral-load outcome. |
| [NG HIV Integrated Laboratory Order and Result Form Questionnaire](Questionnaire-ng-hiv-int-lab-form-questionnaire.md) | Computable Questionnaire representing the Nigeria HIV Integrated Laboratory Order and Result Form. It captures client and facility identifiers, viral-load and early-infant-diagnosis requests, other laboratory investigations, specimen processing details, test results and laboratory workflow sign-off. |
| [NG Immunization Administer Vaccine Form](Questionnaire-ng-imm-administer-vaccine-form.md) | Questionnaire for recording the administration of an immunization. |
| [NG Immunization Client Registration Form](Questionnaire-ng-imm-client-registration-form.md) | Questionnaire for registering a client for immunization services. |
| [NG Immunization Defaulter Tracking Form](Questionnaire-ng-imm-defaulter-tracking-form.md) | Questionnaire for identifying and following up clients who have missed scheduled immunization doses. |
| [NG Immunization Facility Registration Form](Questionnaire-ng-imm-facility-registration-form.md) | Questionnaire for registering a health facility that provides immunization services. |
| [NG Immunization Generate Report Form](Questionnaire-ng-imm-generate-report-form.md) | Questionnaire for selecting parameters used to generate an immunization program report. |
| [NG Immunization Manage AEFI Form](Questionnaire-ng-imm-manage-aefi-form.md) | Questionnaire for recording and managing an adverse event following immunization. |
| [NG Immunization Updating Client Record Form](Questionnaire-ng-imm-updating-client-record-form.md) | Questionnaire for updating demographic, contact and relevant clinical information in an immunization client record. |
| [Nigeria Antenatal Care Questionnaire](Questionnaire-NgAncQuestionnaire-001.md) | A simple antenatal care questionnaire for recording registration, pregnancy history, current pregnancy information, vital signs, and basic clinical assessment during an ANC visit. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [2-NGReferral MNCH Transaction Bundle](StructureDefinition-ng-mnch-referral-bundle.md) | Transaction bundle for MNCH referrals between facilities and/or payers. MUST contain a Patient and a ServiceRequest (the referral order). Optional entries (Communication, Task, etc.) may support initiation, response, and tracking. |
| [4-NG AEFI Report Bundle](StructureDefinition-ng-aefi-report-bundle.md) | Minimal transaction bundle to report an AEFI with Patient, Immunization, AdverseEvent, and supporting data. |
| [4-NG Immunization SMART Scheduler Bundle](StructureDefinition-ng-imm-smart-scheduler-bundle.md) | A minimal transaction bundle to schedule an immunization visit with optional recommendations. |
| [Bundle (IPS)](StructureDefinition-ng-ips-bundle.md) | This profile represents the constraints applied to the Bundle resource by the International Patient Summary (IPS) FHIR Implementation Guide. |
| [DiagnosticReport (IPS)](StructureDefinition-ng-diagnostic-report.md) | This profile constrains the DiagnosticReport resource to represent diagnostic test and procedure reports in a patient summary. |
| [NG CarePlan](StructureDefinition-ng-care-plan.md) | A simple CarePlan profile. |
| [NG Claim](StructureDefinition-ng-claim.md) | A profile representing submitted claims from providers to payers. |
| [NG Claim Coverage](StructureDefinition-ng-coverage.md) | A profile capturing a patient's insurance coverage details. |
| [NG Claim Coverage Eligibility Request](StructureDefinition-ng-coverage-eligibility-request.md) | A profile verifying a patient's active insurance coverage and covered services.. |
| [NG Claim Coverage Eligibility Response](StructureDefinition-ng-coverage-eligibility-response.md) | Profile defining the response from an HMO to an eligibilty request |
| [NG ClaimResponse](StructureDefinition-ng-claim-response.md) | A profile representing responses from insurers regarding submitted claims. |
| [NG Communication](StructureDefinition-ng-communication.md) | Communication artifact for clinical messaging. Optimized to minimize QA noise while keeping key elements Must Support. |
| [NG Condition](StructureDefinition-ng-condition.md) | Condition profile. |
| [NG Consent](StructureDefinition-ng-consent.md) | Minimal consent profile for Nigerian implementations (e.g., NDPR / NIS ISO/TR 17975 use). Keeps constraints light to reduce QA noise. |
| [NG Device](StructureDefinition-ng-device.md) | Device profile for Nigeria Core (medical devices communications). |
| [NG DeviceRequest](StructureDefinition-ng-device-request.md) | Minimal DeviceRequest profile for the Nigeria Core. |
| [NG Encounter](StructureDefinition-ng-encounter.md) | A profile for encounters in the Nigerian used to health visits and related healthcare interactions. |
| [NG ExplanationOfBenefit](StructureDefinition-ng-explanation-of-benefit.md) | A profile detailing adjudicated claim results. |
| [NG Goal](StructureDefinition-ng-goal.md) | Goal profile for the Nigeria Core. |
| [NG HIV Questionnaire](StructureDefinition-ng-hiv-questionnaire.md) | A Nigeria Core profile of the FHIR Questionnaire resource used to represent structured HIV program forms, assessments, counselling forms, and clinical data collection instruments. |
| [NG HealthcareService](StructureDefinition-ng-healthcare-service.md) | HealthcareService profile for the Nigeria Core (service directory/referrals). |
| [NG IPS Composition](StructureDefinition-ng-ips-composition.md) | International Patient Summary (IPS) Composition adapted for Nigeria Core. Conforms to IPS v2 Composition and narrows key references to local NG profiles where available. Includes common IPS sections: Problems, Allergies, Medications, Immunizations, Procedures, Results, Devices, and Plan of Care. |
| [NG Immunization](StructureDefinition-ng-immunization.md) | Nigerian Profile for Immunization resource. |
| [NG Immunization Questionnaire](StructureDefinition-ng-immunization-questionnaire.md) | Base Questionnaire profile for immunization program forms in the Nigeria Core FHIR Implementation Guide. |
| [NG ImmunizationRecommendation](StructureDefinition-ng-immunization-recommendation.md) | Simple profile to convey due/overdue vaccine recommendations for a Nigerian client. |
| [NG Insurer Organization](StructureDefinition-ng-insurer-organization.md) | Organization profile for insurance payers/HMOs |
| [NG Invoice](StructureDefinition-ng-invoice.md) | Invoice profile for pharmacy dispensing and payment in Nigeria Core. |
| [NG Lightweight Provenance](StructureDefinition-ng-provenance.md) | Minimal provenance profile for Nigeria Core. Captures who created/updated a resource, when, and (optionally) which activity was performed. |
| [NG Location](StructureDefinition-ng-location.md) | A profile for immunization service locations, including health facilities, outreach sites, and mobile vaccination units. |
| [NG Measure](StructureDefinition-ng-measure.md) | Minimal program-neutral Measure profile for defining Nigerian health indicators, quality measures and aggregate service-delivery measures using FHIR R4B 4.3.0. |
| [NG Measure Report](StructureDefinition-ng-measure-report.md) | Minimal program-neutral MeasureReport profile for exchanging Nigerian individual and aggregate program-reporting results using FHIR R4B 4.3.0. |
| [NG Medication](StructureDefinition-ng-medication.md) | A Medication profile with some core elements for demonstration purposes. |
| [NG MedicationDispense](StructureDefinition-ng-medication-dispense.md) | MedicationDispense profile for ePharmacy. |
| [NG MedicationRequest](StructureDefinition-ng-medication-request.md) | A MedicationRequest profile with some of core elements. |
| [NG Organization](StructureDefinition-ng-organization.md) | An organization profile representing healthcare facilities responsible for health services or other types of organizations. |
| [NG Patient](StructureDefinition-ng-patient.md) | Nigeria Core Patient Profile |
| [NG Pharmacy Organization](StructureDefinition-ng-pharmacy-organization.md) | Organization profile for pharmacies and dispensing facilities |
| [NG Practitioner](StructureDefinition-ng-practitioner.md) | Profile for a Nigerian Practitioner |
| [NG PractitionerRole](StructureDefinition-ng-practitioner-role.md) | Defines the role(s) of a Nigerian healthcare practitioner context. Links a Practitioner to an Organization, specifies their role. |
| [NG Procedure](StructureDefinition-ng-procedure.md) | Procedure profile for the Nigeria Core. |
| [NG Provider Organization](StructureDefinition-ng-provider-organization.md) | Organization profile for healthcare providers (hospitals, clinics) |
| [NG Questionnaire](StructureDefinition-ng-questionnaire.md) | The base Questionnaire profile for computable program forms in the Nigeria Core FHIR Implementation Guide. program-specific Questionnaire profiles, including Immunization, HIV, TB, Malaria, MNCH, Nutrition and eCHIS Questionnaires, SHALL derive from this profile. |
| [NG RelatedPerson](StructureDefinition-ng-related-person.md) | Sibling or parent of the sick person. |
| [NG ServiceRequest](StructureDefinition-ng-service-request.md) | ServiceRequest profile for the Nigeria Core (referrals and orders). |
| [NG Task](StructureDefinition-ng-task.md) | Task profile for the Nigeria Core (referrals, claims, pharmacy, devices). |
| [Ng Appointment](StructureDefinition-ng-appointment.md) | Appointment profile for Nigeria Core (e.g., immunization, ePharmacy counseling, referrals). |
| [Nigeria Alert Flag](StructureDefinition-ng-flag.md) | Flag profile for prominent clinical, public-health, safety, or administrative alerts that require display, review, acknowledgement, or action. |
| [Nigeria Allergy Intolerance](StructureDefinition-ng-allergy-intolerance.md) | Nigeria Core profile for recording a patient's allergy or intolerance and the associated risk of an adverse reaction. |
| [Nigeria Core Alcohol Use Observation](StructureDefinition-ng-observation-alcohol-use.md) | A Nigeria Core Observation representing the average number of alcoholic drinks consumed per day. |
| [Nigeria Core Composite Observation](StructureDefinition-ng-observation.md) | A composite Nigeria Core Observation used during client registration to record selected age, pregnancy, HIV-status, and birth-weight observations as components. |
| [Nigeria Core Laboratory or Pathology Result Observation](StructureDefinition-ng-observation-results-laboratory-pathology.md) | A Nigeria Core Observation representing an individual laboratory or pathology result, or a panel that groups related child observations. |
| [Nigeria Core Pregnancy Expected Delivery Date Observation](StructureDefinition-ng-observation-pregnancy-edd.md) | A Nigeria Core Observation representing the estimated date of delivery. |
| [Nigeria Core Pregnancy Outcome Observation](StructureDefinition-ng-observation-pregnancy-outcome.md) | A Nigeria Core Observation representing the outcome of a pregnancy, such as live birth, stillbirth, miscarriage, abortion, ectopic pregnancy, or molar pregnancy. |
| [Nigeria Core Pregnancy Status Observation](StructureDefinition-ng-observation-pregnancy-status.md) | A Nigeria Core Observation representing whether a patient is currently pregnant, not pregnant, or has an unknown pregnancy status. |
| [Nigeria Core Radiology Result Observation](StructureDefinition-ng-observation-results-radiology.md) | A Nigeria Core Observation representing an atomic radiology result, an overall imaging conclusion, or a grouper for related radiology observations. |
| [Nigeria Core Tobacco Smoking Status Observation](StructureDefinition-ng-observation-tobacco-use.md) | A Nigeria Core Observation representing the patient's tobacco-smoking status. |
| [Nigeria Document Reference](StructureDefinition-ng-documents.md) | Profile for indexing and exchanging clinical, administrative, and public-health documents associated with a patient. |
| [Nigeria Medication Statement](StructureDefinition-ng-medication-statement.md) | Profile for recording a medication that a patient is taking, has taken, or is expected to take, based on information reported by the patient, caregiver, practitioner, or another clinical record. |
| [Specimen profile](StructureDefinition-ng-specimen.md) | This profile constrains the Specimen resource to represent the characteristics of a biological specimens in the context of laboratory results integrated to a patient summary. |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Codeable Concept (IPS)](StructureDefinition-CodeableConcept-ips.md) | This profile represents the constraint applied to the CodeableConcept data type by the International Patient Summary (IPS) FHIR Implementation Guide to use the Coding-uv-ips data type profile. |
| [Coding with translations](StructureDefinition-Coding-ips.md) | This profile extends the capabilities of the coding data type to support multi-language designations (display). It relies on the Translation extension. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [NG Administrative Wards](StructureDefinition-ng-administrative-ward.md) | Captures the administrative ward within a geographic address |
| [NG Immunization Contraindicated](StructureDefinition-ng-contraindicated.md) | Indicates whether the immunization was contraindicated |
| [NG Next Dose Date](StructureDefinition-ng-next-dose-date.md) | The recommended due date for the next vaccine dose in the schedule. |
| [NG Owner of Facility](StructureDefinition-ng-organization-owner.md) | An extension to define the owner of the health institution |
| [NG Vaccine Contraindications](StructureDefinition-ng-vaccine-contraindications.md) | Indicates specific situations in which it is not recommended to administer certain vaccines (e.g severe AEFI, History of Anaphylactic reactions, Symptomatic HIV infection) |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ART Eligibility Status](ValueSet-ng-hiv-art-eligibility-status-vs.md) | ART Eligibility Status |
| [ART Not Started - Plan For Next Step](ValueSet-ng-hiv-plan-for-next-step-vs.md) | Codes used for representing the plan for next steps when a patient didn't start ART the same day. |
| [Body Site - IPS](ValueSet-ng-body-site-vs.md) | IPS body site value set. This value set includes a set of codes from SNOMED CT that may be used to represent body sites (e.g., for laboratory specimen collection). This value set includes codes from SNOMED CT®: all descendants of 442083009 |Anatomical or acquired body structure (body structure)|SNOMED CT® ECL definition: < 442083009 |Anatomical or acquired body structure (body structure)| |
| [Cervical Cancer Screening Type](ValueSet-ng-hiv-cervical-cancer-screening-type-vs.md) | Codes used for representing the cervical screening type. |
| [Children Developmental Milestone ValueSet](ValueSet-ng-children-developmental-milestone-vs.md) | Children Developmental Milestone |
| [Current Smoking Status](ValueSet-ng-current-smoking-status-vs.md) | ValueSet for smoking status. This value set includes a set of specific SNOMED CT codes (no subtypes included) that may be used to represent smoking status. |
| [Diagnostics Report Status Codes - IPS](ValueSet-ng-diagnostics-report-status-vs.md) | IPS Diagnostic Report status codes allowable for diagnostics reports. This value set includes all status codes except "entered-in-error" from http://hl7.org/fhir/diagnostic-report-status. |
| [Differentiated Service Delivery - Assessment Status](ValueSet-ng-hiv-dsd-assessment-status-vs.md) | Code used for indicating the status of the DSD assessment. |
| [Differentiated Service Delivery - Reason For Category Change](ValueSet-ng-hiv-dsd-reason-for-category-change-vs.md) | Code used for indicating the reason for the category change for the DSD assessment. |
| [Edema Presence Codes ValueSet](ValueSet-ng-hiv-edema-presence-vs.md) | Observation codes used for indicating the prescence of Edema. |
| [Family Planning Method](ValueSet-ng-family-planning-method-vs.md) | Family Planning Method |
| [HIV - ARV Drugs ValueSet](ValueSet-ng-hiv-arv-treatment-vs.md) | A list of codes describing the ARV Drugs. |
| [HIV - Reason Not Started ART ValueSet](ValueSet-ng-hiv-reason-not-started-art-vs.md) | Reason Not Started ART |
| [HIV ARV Regimen Change Category](ValueSet-ng-hiv-arv-regimen-change-category-vs.md) | Codes used for representing the category for the ARV regimen change. |
| [HIV ARV Regimen Change Type](ValueSet-ng-hiv-arv-regimen-change-type-vs.md) | Codes used for representing the type of change associated with the ARV regimen (Switch or Substitute). |
| [HIV ARV Side Effects](ValueSet-ng-hiv-arv-side-effects-vs.md) | Codes used for representing any side effects of the ARV medication prescribed to the patient. |
| [HIV Cervical Cancer Screened](ValueSet-ng-hiv-cervical-cancer-screened-vs.md) | Codes used for representing whether screening for cervical cancer was done. |
| [HIV DSD - Category ValueSet](ValueSet-ng-hiv-dsd-category-vs.md) | Code used for indicating the category for the DSD assessment. |
| [HIV Disclosure Stage](ValueSet-ng-hiv-disclosure-stage-vs.md) | Codes used for representing the stages of disclosure for the patient's current HIV status. |
| [HIV EAC Given ValueSet](ValueSet-ng-hiv-eac-given-vs.md) | Codes used for representing the EAC given. |
| [HIV Encounter Locations](ValueSet-ng-hiv-encounter-location-vs.md) | Code used for representing the location where the patient is receiving health services. |
| [HIV Encounter Type](ValueSet-ng-hiv-encounter-type-vs.md) | Codes used for indicating the type of encounter. |
| [HIV Follow Up Status ValueSet](ValueSet-ng-hiv-art-follow-up-status-vs.md) | FollowUp Status |
| [HIV Health Status](ValueSet-ng-hiv-health-status-vs.md) | Codes used for representing a patient health status. |
| [HIV Occupation Valueset](ValueSet-ng-hiv-occupation-vs.md) | Occupation |
| [HIV Opportunistic Infections ValueSet](ValueSet-ng-hiv-opportunistic-infections-vs.md) | Codes used for representing opportunistic infections. |
| [HIV Pain Scale](ValueSet-ng-hiv-pain-scale-vs.md) | Codes used for representing level of pain (pain scale). |
| [HIV Partner Case Closure Status ValueSet](ValueSet-ng-hiv-partner-case-closure-status-vs.md) | Codes used for indicating the closure status for partner services. |
| [HIV Partner Notification Plan ValueSet](ValueSet-ng-hiv-partner-notification-plan-vs.md) | Codes used for indicating the plan for notifying the partner regarding the index case's HIV status. |
| [HIV Patient Education Level](ValueSet-ng-patient-education-level-value-set.md) | Codes used for indicating the patient's highest qualification. |
| [HIV Physical Examinations](ValueSet-ng-hiv-physical-exam-vs.md) | Codes used for representing a physical examination. |
| [HIV Physical Examinations Interpretation](ValueSet-ng-hiv-physical-examination-interpretation-vs.md) | Codes used for interpreting the finding associated with the physical examination. |
| [HIV Positive Tracking Care Plan Activivity Codes](ValueSet-ng-hiv-tracking-vs.md) | Codes used for representing activity in the Care Plan. |
| [HIV Prevention Plan](ValueSet-ng-hiv-prevention-plan-vs.md) | Codes used for representing the patient's plan for the prevention of HIV being transmitted to others. |
| [HIV Reason For ARV Regimen Change](ValueSet-ng-hiv-reason-for-arv-regimen-change-vs.md) | Codes used for representing the reasons for changing the ARV regimen. |
| [HIV Reason For Not Testing](ValueSet-ng-hiv-reason-for-not-testing-vs.md) | Reason For Not Testing |
| [HIV Reason For Stopping ART](ValueSet-ng-hiv-reason-stopped-art-vs.md) | Codes used for representing the reasons for stopping ART. |
| [HIV Reason Index Case Not Interviewed](ValueSet-ng-hiv-reason-index-case-not-interviewed-vs.md) | Codes used for indicating the reason why the index case was not interviewed. |
| [HIV Reason Not Linked to Partner Services](ValueSet-ng-hiv-reason-not-linked-to-partner-services-vs.md) | Codes used for indicating the reason why the partner was not linked to partner services. |
| [HIV Reason Partner Not Contacted ValueSet](ValueSet-ng-hiv-reason-partner-not-contacted-vs.md) | Codes used for indicating the reason why the partner was not contacted. |
| [HIV Reason Partner Not Notified ValueSet](ValueSet-ng-hiv-reason-partner-not-notified-vs.md) | Codes used for indicating the reason why the partner was not notified about the index case's HIV status. |
| [HIV Reasons For ART Eligibility](ValueSet-ng-hiv-reason-for-art-eligibility-vs.md) | Reasons For ART Eligibility |
| [HIV Residential Type](ValueSet-ng-hiv-residential-type-vs.md) | Codes used for representing patient residential type. |
| [HIV Status Codes](ValueSet-ng-hiv-status-vs.md) | A list of codes describing the patient's HIV status. |
| [HIV Test Results](ValueSet-ng-hiv-test-result-vs.md) | Codes used for representing a patient HIV test results. |
| [HIV Test Results](ValueSet-ng-hiv-test-results-vs.md) | HIV Test Results |
| [HIV Test Types](ValueSet-ng-hiv-test-type-vs.md) | HIV Test Types |
| [HIV Viral Load Indication](ValueSet-ng-hiv-viral-load-indication-vs.md) | Codes used for representing viral load indication. |
| [HIV Viral Load Indication](ValueSet-ng-hiv-vl-indication-vs.md) | Codes used for representing the indication type for the viral load. |
| [HIV Viral Load Status](ValueSet-ng-hiv-viral-load-status-vs.md) | Codes used for representing patient's viral load status. |
| [HIV Viral Load/CD4 Count Classifications ValueSet](ValueSet-ng-hiv-cd4-vl-classification-for-treatment-failure-vs.md) | Codes used for indicating the classification for the Viral Load/CD4 count treatment failure. |
| [HIV WHO Stage](ValueSet-ng-hiv-who-stage-vs.md) | WHO Stage |
| [HIV-ARV Adherence ValueSet](ValueSet-ng-hiv-arv-adherence-vs.md) | ARV Adherence |
| [HIV-Cervical Cancer Screening Method](ValueSet-ng-hiv-cervical-cancer-screening-method-vs.md) | Cervical Cancer Screening Method. |
| [HIV-Cervical Cancer Screening Results ValueSet](ValueSet-ng-hiv-cervical-cancer-screening-result-vs.md) | A list of codes describing the Cervical Cancer Screening Results |
| [HIV-Cervical Cancer Treatment Received ValueSet](ValueSet-ng-hiv-cervical-cancer-treatment-received-vs.md) | Cervical Cancer Treatment Received |
| [HIV-Final Outcome ValueSet](ValueSet-ng-hiv-final-outcome-value-set.md) | Final Outcome |
| [HIV-Nature of Encounter ValueSet](ValueSet-ng-hiv-encounter-visit-type-vs.md) | A list of codes describing the nature of the patient visit to the health facility |
| [HIV-Opportunistic Infection Medication Codes ValueSet](ValueSet-ng-hiv-opportunistic-infections-treatment-vs.md) | A list of codes describing the medication for opportunistic infections related to the patient. |
| [Mode Of Delivery](ValueSet-ng-pregnancy-mode-of-delivery-vs.md) | Codes used for representing mode of delivery. |
| [NG Bundle Identifier Codes](ValueSet-ng-bundle-identifier-vs.md) | ValueSet including all local bundle identifier codes for use cases. |
| [NG CarePlan Activity VS](ValueSet-ng-careplan-activity-vs.md) | ValueSet for CarePlan.activity.detail.code (demo). |
| [NG CarePlan Category VS](ValueSet-ng-careplan-category-vs.md) | ValueSet for CarePlan.category (demo). |
| [NG Client Identifier VS](ValueSet-ng-client-identifier-vs.md) | This ValueSet defines list of options for uniquely Identifting a Client |
| [NG Clinical Status VS](ValueSet-ng-facility-identifier-vs.md) | The outcome of the reaction |
| [NG Clinical Status VS](ValueSet-ng-immunization-clinical-status-vs.md) | The outcome of the reaction |
| [NG Clinical Status VS](ValueSet-ng-pregnancy-status-vs.md) | The outcome of the Pregnancy. Pregnancy status codes value set. |
| [NG Electromechanical Medical Device Identifier VS](ValueSet-ng-device-identifier-vs.md) | ValueSet selecting the 50 hypothetical electromechanical medical device identifiers (leaf concepts only) from NgDeviceIdentifierCS. Excludes category/group nodes. |
| [NG Gender or Sex VS](ValueSet-ng-gender-vs.md) | A subset of the administrative gender codes including only 'male' and 'female' |
| [NG HIV ART Monthly AHD Categories](ValueSet-ng-hiv-art-monthly-ahd-category-vs.md) | AHD program categories used as subsets of ART19 and ART20. |
| [NG HIV ART Monthly Age Groups](ValueSet-ng-hiv-art-monthly-age-group-vs.md) | Age groups used for ART1–ART4. |
| [NG HIV ART Monthly Cervical Screening Age Groups](ValueSet-ng-hiv-art-monthly-cervical-age-group-vs.md) | Age groups used for cervical screening and treatment. |
| [NG HIV ART Monthly Cervical Screening Results](ValueSet-ng-hiv-art-monthly-cervical-screening-result-vs.md) | Cervical screening result categories used under ART23. |
| [NG HIV ART Monthly Cervical Screening Timing](ValueSet-ng-hiv-art-monthly-cervical-screening-timing-vs.md) | Timing categories used under ART23. |
| [NG HIV ART Monthly Cervical Treatment Types](ValueSet-ng-hiv-art-monthly-cervical-treatment-type-vs.md) | Treatment categories used under ART24. |
| [NG HIV ART Monthly CrAg Age Groups](ValueSet-ng-hiv-art-monthly-crag-age-group-vs.md) | Age groups printed for the serum CrAg section. |
| [NG HIV ART Monthly Cryptococcal Meningitis Results](ValueSet-ng-hiv-art-monthly-cm-result-vs.md) | Lumbar-puncture screening result categories used under ART21. |
| [NG HIV ART Monthly Interruption Outcomes](ValueSet-ng-hiv-art-monthly-interruption-outcome-vs.md) | Tracking outcomes used to disaggregate ART5. |
| [NG HIV ART Monthly MMD Duration](ValueSet-ng-hiv-art-monthly-mmd-duration-vs.md) | Multi-month dispensing duration bands. |
| [NG HIV ART Monthly Serum CrAg Results](ValueSet-ng-hiv-art-monthly-crag-result-vs.md) | Serum CrAg result categories used under ART20. |
| [NG HIV ART Monthly Summary Indicators](ValueSet-ng-hiv-art-monthly-indicator-vs.md) | The 24 ART monthly summary indicators. |
| [NG HIV ART Monthly TB and AHD Age Groups](ValueSet-ng-hiv-art-monthly-tb-ahd-age-group-vs.md) | Age groups used in the HIV/TB and general AHD sections. |
| [NG HIV ART Register Cervical Cancer Screening Status](ValueSet-ng-hiv-art-register-cervical-status-vs.md) | Cervical-cancer screening workflow statuses permitted in column A27 of the National ART Register. |
| [NG HIV ART Register Cryptococcal Status](ValueSet-ng-hiv-art-register-cryptococcal-status-vs.md) | Cryptococcal statuses permitted in column A25 of the National ART Register. |
| [NG HIV ART Register DSD Status](ValueSet-ng-hiv-art-register-dsd-status-vs.md) | Differentiated-service-delivery statuses permitted in column A33 of the National ART Register. |
| [NG HIV ART Register Hepatitis Screening Status](ValueSet-ng-hiv-art-register-hepatitis-status-vs.md) | Hepatitis screening and treatment statuses permitted in column A28 of the National ART Register. |
| [NG HIV ART Register Regimens](ValueSet-ng-hiv-art-register-regimen-vs.md) | ART regimen codes permitted in columns A30 and A32 of the National ART Register. |
| [NG HIV ART Register Six-Month Outcomes](ValueSet-ng-hiv-art-register-outcome-vs.md) | Subset of the existing HIV ART follow-up statuses used in column A35 of the National ART Register. |
| [NG HIV ART Register TB Status](ValueSet-ng-hiv-art-register-tb-status-vs.md) | TB statuses permitted in column A20 of the National ART Register. |
| [NG HIV ART Register TPT Outcome](ValueSet-ng-hiv-art-register-tpt-outcome-vs.md) | TB preventive-therapy outcomes permitted in column A22 of the National ART Register. |
| [NG HIV ART Stop Reason](ValueSet-ng-hiv-art-stop-reason-vs.md) | Reasons for stopping or interrupting ART used on the Nigeria HIV Care/ART Card. |
| [NG HIV Adult ART Medications](ValueSet-ng-hiv-adult-art-medication-vs.md) | Adult ART medicine products and strengths listed on the Nigeria Combined Pharmacy Order Form. |
| [NG HIV CD4 Reference](ValueSet-ng-hiv-cd4-reference-vs.md) | CD4 threshold categories used on the Nigeria HIV Care/ART Card. |
| [NG HIV Care Entry Point](ValueSet-ng-hiv-care-entry-point-vs.md) | Care-entry-point codes used on the Nigeria HIV Care/ART Card. |
| [NG HIV Care and Treatment Transfer Reasons](ValueSet-ng-hiv-transfer-reason-vs.md) | Reasons for transfer printed on the Nigeria HIV Care and Treatment Transfer Form. |
| [NG HIV Cause of Death](ValueSet-ng-hiv-cause-of-death-vs.md) | Cause-of-death categories used on the Nigeria HIV Care/ART Card. |
| [NG HIV Drug Resistance Result](ValueSet-ng-hiv-drug-resistance-result-vs.md) | Drug-resistance result codes used on the Nigeria HIV Care/ART Card. |
| [NG HIV EAC Adherence](ValueSet-ng-hiv-eac-adherence-vs.md) | Adherence ratings recorded during an Enhanced Adherence Counselling session. |
| [NG HIV EAC Adherence Barriers](ValueSet-ng-hiv-eac-barriers-vs.md) | Barriers to ART adherence recorded during Enhanced Adherence Counselling. |
| [NG HIV EAC Intervention Services](ValueSet-ng-hiv-eac-intervention-services-vs.md) | Services delivered to address barriers identified during Enhanced Adherence Counselling. |
| [NG HIV EAC Intervention Tools](ValueSet-ng-hiv-eac-intervention-tools-vs.md) | Tools used to support ART adherence during Enhanced Adherence Counselling. |
| [NG HIV EAC Register Suspected Causes of Virologic Failure](ValueSet-ng-hiv-eac-register-virologic-failure-cause-vs.md) | Suspected virologic-failure causes permitted in column A19 of the EAC Monitoring Register. |
| [NG HIV Educational Status](ValueSet-ng-hiv-educational-status-vs.md) | Educational-status codes used on the Nigeria HIV Care/ART Card. |
| [NG HIV Integrated Laboratory ART Regimen Line](ValueSet-ng-hiv-int-lab-regimen-line-vs.md) | ART regimen-line options printed on the integrated laboratory form. |
| [NG HIV Integrated Laboratory ARV Prophylaxis](ValueSet-ng-hiv-int-lab-arv-prophylaxis-vs.md) | ARV prophylaxis options printed on the integrated laboratory form. |
| [NG HIV Integrated Laboratory Cytology Method](ValueSet-ng-hiv-int-lab-cytology-method-vs.md) | Cervical cytology or screening methods printed on the integrated laboratory form. |
| [NG HIV Integrated Laboratory EID Age Category](ValueSet-ng-hiv-int-lab-eid-age-category-vs.md) | Infant age categories printed on the integrated laboratory form. |
| [NG HIV Integrated Laboratory EID Indication](ValueSet-ng-hiv-int-lab-eid-indication-vs.md) | Early-infant-diagnosis indications printed on the integrated laboratory form. |
| [NG HIV Integrated Laboratory EID Result](ValueSet-ng-hiv-int-lab-eid-result-vs.md) | Early-infant-diagnosis result options printed on the integrated laboratory form. |
| [NG HIV Integrated Laboratory Other Test](ValueSet-ng-hiv-int-lab-other-test-vs.md) | Other fixed laboratory investigations printed on the integrated laboratory form. |
| [NG HIV Integrated Laboratory Positive or Negative Result](ValueSet-ng-hiv-int-lab-positive-negative-result-vs.md) | Positive and negative qualitative laboratory results used by the integrated laboratory form. |
| [NG HIV Integrated Laboratory Reactive or Non-Reactive Result](ValueSet-ng-hiv-int-lab-reactive-result-vs.md) | Reactive and non-reactive serology result options printed on the integrated laboratory form. |
| [NG HIV Integrated Laboratory Register DSD Status](ValueSet-ng-hiv-int-lab-register-dsd-status-vs.md) | DSD status codes printed in the Integrated Laboratory Monitoring Register. |
| [NG HIV Integrated Laboratory Register Mode of Testing](ValueSet-ng-hiv-int-lab-register-mode-of-testing-vs.md) | Testing platforms printed or described for column A22. |
| [NG HIV Integrated Laboratory Register Monitoring Type](ValueSet-ng-hiv-int-lab-register-monitoring-type-vs.md) | Routine or targeted viral-load monitoring represented by A43 and A44. |
| [NG HIV Integrated Laboratory Register Test Type](ValueSet-ng-hiv-int-lab-register-test-vs.md) | Test types represented by printed columns A16–A21. |
| [NG HIV Integrated Laboratory Register Viral-Load Category](ValueSet-ng-hiv-int-lab-register-viral-load-category-vs.md) | HIV viral-load result categories represented by columns A34–A36. |
| [NG HIV Integrated Laboratory Register Viral-Load Disaggregation](ValueSet-ng-hiv-int-lab-register-viral-load-disaggregation-vs.md) | Sex and age-band disaggregation categories represented by columns A52–A67. |
| [NG HIV Integrated Laboratory Requested Test Type](ValueSet-ng-hiv-int-lab-requested-test-type-vs.md) | Top-level test categories selectable on the HIV Integrated Laboratory Order and Result Form. |
| [NG HIV Integrated Laboratory Specimen Type](ValueSet-ng-hiv-int-lab-specimen-type-vs.md) | Specimen types printed on the integrated laboratory form. |
| [NG HIV Integrated Laboratory Viral-Load Indication](ValueSet-ng-hiv-int-lab-viral-load-indication-vs.md) | Viral-load indications printed on the integrated laboratory form. |
| [NG HIV Key Population Typology](ValueSet-ng-hiv-kp-typology-vs.md) | Key-population typology codes used on the Nigeria HIV Care/ART Card. |
| [NG HIV Marital Status](ValueSet-ng-hiv-marital-status-vs.md) | Marital-status codes used on the Nigeria HIV Care/ART Card. |
| [NG HIV OI Prophylaxis and Treatment Medications](ValueSet-ng-hiv-oi-prophylaxis-treatment-medication-vs.md) | Medicines for opportunistic-infection prophylaxis or treatment listed on the Nigeria Combined Pharmacy Order Form. |
| [NG HIV Paediatric ART Medications](ValueSet-ng-hiv-paediatric-art-medication-vs.md) | Paediatric ART medicine products and strengths listed on the Nigeria Combined Pharmacy Order Form. |
| [NG HIV Pharmacy Daily Worksheet Medicines](ValueSet-ng-hiv-pharmacy-worksheet-medicine-vs.md) | All fixed medicine products represented by columns W24–W71. |
| [NG HIV Pharmacy Worksheet DSD Model](ValueSet-ng-hiv-pharmacy-worksheet-dsd-model-vs.md) | DSD models permitted in W9–W10. |
| [NG HIV Pharmacy Worksheet HEI ARV Prophylaxis Regimen](ValueSet-ng-hiv-pharmacy-worksheet-arv-prophylaxis-vs.md) | ARV prophylaxis regimens permitted in W17. |
| [NG HIV Pharmacy Worksheet Medicine Category](ValueSet-ng-hiv-pharmacy-worksheet-medicine-category-vs.md) | Medicine categories permitted for a Pharmacy Daily Worksheet dispensing entry. |
| [NG HIV Pharmacy Worksheet Summary Scope](ValueSet-ng-hiv-pharmacy-worksheet-summary-scope-vs.md) | Summary scopes permitted for worksheet column totals. |
| [NG HIV PrEP Medications](ValueSet-ng-hiv-prep-medication-vs.md) | PrEP medicine products and strengths listed on the Nigeria Combined Pharmacy Order Form. |
| [NG HIV Prior ART](ValueSet-ng-hiv-prior-art-vs.md) | Prior-ART codes used on the Nigeria HIV Care/ART Card. |
| [NG HIV Regimen Substitution or Switch Reason](ValueSet-ng-hiv-regimen-change-reason-vs.md) | Reasons for ART regimen substitution or switch used on the Nigeria HIV Care/ART Card. |
| [NG HIV TB Preventive Therapy](ValueSet-ng-hiv-tb-preventive-therapy-vs.md) | TB preventive-therapy regimen codes used on the Nigeria HIV Care/ART Card. |
| [NG HIV TB Preventive Therapy Medications](ValueSet-ng-hiv-tb-preventive-therapy-medication-vs.md) | TB preventive therapy medicines or regimens listed on the Nigeria Combined Pharmacy Order Form. |
| [NG HIV Tracking Register Attempt Stage](ValueSet-ng-hiv-tracking-attempt-stage-vs.md) | Tracking-attempt stages permitted in T19–T23. |
| [NG HIV Tracking Register DSD Model](ValueSet-ng-hiv-tracking-dsd-model-vs.md) | DSD models permitted in T15. |
| [NG HIV Tracking Register DSD Status](ValueSet-ng-hiv-tracking-dsd-status-vs.md) | DSD statuses permitted in T15. |
| [NG HIV Tracking Register Person Contacted](ValueSet-ng-hiv-tracking-person-contacted-vs.md) | Person-contacted values permitted in T19–T23. |
| [NG HIV Tracking Register Reason for Defaulting](ValueSet-ng-hiv-tracking-default-reason-vs.md) | Reasons for defaulting permitted in the tracking-attempt blocks. |
| [NG HIV Tracking Register Reason for Discontinuation](ValueSet-ng-hiv-tracking-discontinuation-reason-vs.md) | Reasons for discontinuing facility care permitted in T26. |
| [NG HIV Tracking Register Reason for Tracking](ValueSet-ng-hiv-tracking-reason-vs.md) | Reasons for tracking permitted in T16. |
| [NG HIV Tracking Register Tracking Mode](ValueSet-ng-hiv-tracking-mode-vs.md) | Tracking modes permitted in T19–T23. |
| [NG HealthFacility Type VS](ValueSet-ng-facility-type-vs.md) | Classification of Nigerian health facilities |
| [NG Insurer Organization Types](ValueSet-ng-insurer-org-type-vs.md) | Organization types for insurance payers/HMOs |
| [NG LGAs VS](ValueSet-ng-lgas-vs.md) | The administrative Local Government Areas where a person or a facility is. |
| [NG Local ATC — All Medications](ValueSet-ng-atc-all-medications-vs.md) | All local ATC-style medication codes used across MNCH referral, claims, prescription, and immunization. |
| [NG Location Owner](ValueSet-ng-organization-owner-vs.md) | The owner of an Health Facility location |
| [NG Pharmacy Organization Types](ValueSet-ng-pharmacy-org-type-vs.md) | Organization types for Pharmacies |
| [NG Provenance Activity Codes](ValueSet-ng-provenance-activity-vs.md) | ValueSet including local provenance activity codes (anonymize, de-identify, mask, label, pseudonymize, create, delete, append, nullify, legally authenticated). |
| [NG Provider Organization Types](ValueSet-ng-provider-org-type-vs.md) | Organization types for healthcare providers |
| [NG Relationships VS](ValueSet-ng-relationships-vs.md) | list of persons related to a patient, but who is not a direct target of care. |
| [NG Session Type VS](ValueSet-ng-immunization-session-type-vs.md) | Type of session for immunization. Could be in a fixed facility, outreach or mobile. |
| [NG Sibling Health Status VS](ValueSet-ng-sibling-health-status-vs.md) | This CodeSystem defines the health of the client's sibling |
| [NG States VS](ValueSet-ng-states-vs.md) | The state where a person or a facility is. |
| [NG Target Population Category VS](ValueSet-ng-target-population-category-vs.md) | Codes used for representing the patient's target population category |
| [NG Vaccine Contraindication VS](ValueSet-ng-vaccine-contraindication-vs.md) | A set of standardized codes used to represent clinical conditions, diagnoses, or circumstances that serve as contraindications to the administration of one or more vaccines. |
| [NG Vaccine ICD ValueSet](ValueSet-ng-vaccine-icd-vs.md) | All ICD11 vaccine codes (DE1–DE29). |
| [NG Vaccine Local ValueSet](ValueSet-ng-vaccine-local-vs.md) | All local vaccine codes (DE1–DE29). |
| [NG Vaccine SNOMED ValueSet](ValueSet-ng-vaccine-snomed-vs.md) | All SNOMED vaccine codes (DE1–DE29). |
| [NG Wards VS](ValueSet-ng-wards-vs.md) | The administrative Ward (within an LGA) where a person or a facility is. |
| [NG Yes/No Codes VS](ValueSet-ng-yes-no-vs.md) | Yes/No Codes Represented as Boolean. |
| [NG-Imm Vaccine Route VS](ValueSet-ng-immunization-route-vs.md) | Vaccine Route |
| [NG-Imm Vaccine Site VS](ValueSet-nigeria-vaccine-site.md) | Vaccine Site |
| [Nigeria AEFI Manifestations](ValueSet-ng-aefi-manifestation.md) | Clinical signs, symptoms, and manifestations associated with adverse events following immunization. |
| [Nigeria AEFI Treatments](ValueSet-ng-aefi-treatment-type-vs.md) | Treatments and interventions used in managing adverse events following immunization. |
| [Nigeria AEFI Treatments](ValueSet-ng-aefi-treatment-vs.md) | Treatments and interventions used in managing adverse events following immunization. |
| [Nigeria Alert Category Value Set](ValueSet-ng-alert-category-vs.md) | Categories for alerts represented using the Nigeria Alert Flag profile. |
| [Nigeria Alert Code Value Set](ValueSet-ng-alert-code-vs.md) | Common coded alert messages for the Nigeria Alert Flag profile. |
| [Nigeria Defaulter Follow-up Methods](ValueSet-ng-defaulter-follow-up-method.md) | Methods used to contact or trace immunization defaulters. |
| [Nigeria Defaulter Follow-up Methods](ValueSet-ng-immunization-indicator-vs.md) | Methods used to contact or trace immunization defaulters. |
| [Nigeria Defaulter Follow-up Methods](ValueSet-ng-immunization-report-category-vs.md) | Methods used to contact or trace immunization defaulters. |
| [Nigeria Defaulter Follow-up Methods](ValueSet-ng-report-stratifier-vs.md) | Methods used to contact or trace immunization defaulters. |
| [Nigeria Defaulter Follow-up Methods](ValueSet-ng-stock-administration-up-method.md) | Methods used to contact or trace immunization defaulters. |
| [Nigeria Defaulter Follow-up Outcomes](ValueSet-ng-defaulter-follow-up-outcome.md) | Outcomes of immunization defaulter follow-up activities. |
| [Nigeria Defaulter Tracking Status](ValueSet-ng-defaulter-tracking-status.md) | Statuses used to manage clients identified as immunization defaulters. |
| [Nigeria HIV LOINC Concepts](ValueSet-ng-hiv-loinc-concepts.md) | Distinct LOINC concepts referenced by the supplied HIV ConceptMaps. Displays are omitted because authoritative LOINC names were not supplied. |
| [Nigeria HIV Local Concepts](ValueSet-ng-hiv-local-concepts.md) | Local HIV, TB/HIV, demographic and program concepts referenced by the supplied HIV ConceptMaps. Codes remain in their original local CodeSystems. |
| [Nigeria HIV SNOMED CT Concepts](ValueSet-ng-hiv-snomed-ct-concepts.md) | Distinct valid SNOMED CT identifiers referenced by the supplied HIV ConceptMaps. Displays are omitted because authoritative SNOMED CT terms were not supplied. |
| [Nigeria Missed Vaccination Reasons](ValueSet-ng-missed-vaccination-reason.md) | Reasons why a client did not receive a scheduled vaccine dose. |
| [Nigeria Vaccine Preventable Diseases](ValueSet-ng-vaccine-preventable-disease.md) | Diseases targeted by vaccines included in the Nigeria immunization program. |
| [Nutritional Screening Result](ValueSet-ng-nutritional-screening-result-vs.md) | Nutritional Screening Result |
| [Nutritional Status](ValueSet-ng-nutritional-status-vs.md) | Nutritional Status |
| [Nutritional Suppliments Provided](ValueSet-ng-nutritional-suppliments-provided-vs.md) | Nutritional Suppliments Provided |
| [Patient Functional Status](ValueSet-ng-patient-functional-status-vs.md) | Patient Functional Status |
| [Period of HIV Exposure](ValueSet-ng-hiv-period-of-hiv-exposure-vs.md) | Codes used for indicating the period when last the individual was exposed to HIV. |
| [Place Of Delivery](ValueSet-ng-pregnancy-place-of-delivery-vs.md) | Codes used for representing place of delivery. |
| [Pregnancy EDD Method](ValueSet-ng-pregnancy-expected-delivery-date-method-vs.md) | Expected Delivery Date Method |
| [Pregnancy Outcome - IPS](ValueSet-ng-pregnancies-coutcome-vs.md) | IPS Pregnancies Outcome |
| [Presenting Symptoms](ValueSet-ng-hiv-presenting-symptoms-vs.md) | Codes used for representing the symptoms currently being experienced by the patient. |
| [Reasons For Poor ARV Adherence](ValueSet-ng-hiv-reasons-for-poor-arv-adherence-vs.md) | Codes used for representing the reasons for poor ARV adherence. |
| [Referral Reason](ValueSet-ng-hiv-referral-reason-vs.md) | Codes used for representing the reason for referral. |
| [Results Laboratory/Pathology Observation - IPS](ValueSet-ng-results-laboratory-pathology-observation-vs.md) | Value Set Definition: LOINC {STATUS in {ACTIVE}, CLASSTYPE in {Laboratory class (1)}, CLASS exclude {LP62148-9 (NR STATS), LP175679-2 (H&P.HX.LAB), LP7785-1 (CHALSKIN), LP94892-4 (LABORDERS)}} |
| [Results Radiology Component - IPS](ValueSet-ng-results-radiology-component-vs.md) | Value set including SNOMED CT, LOINC and DICOM concepts for textual reports, measurements, and other radiology components |
| [Results Radiology Observation - IPS](ValueSet-ng-results-radiology-observations-vs.md) | Value Set Definition: LOINC {STATUS in {ACTIVE}, CLASS in LP29684-5 ("RAD")} |
| [Results Specimen Collection Method - IPS](ValueSet-ng-results-specimen-collection-method-vs.md) | IPS Specimen collection method codes value set. This value set includes codes from SNOMED CT®: all descendants or self of 129316008 |Aspiration - action (qualifier value)|; all descendants or self of 129314006 |Biopsy - action (qualifier value)|; all descendants or self of 129300006 |Puncture - action (qualifier value)|; all descendants or self of 129304002 |Excision - action (qualifier value)|; all descendants or self of 129323009 |Scraping - action (qualifier value)|; all descendants or self of 73416001 |Urine specimen collection, clean catch (procedure)|; all descendants or self of 225113003 |Timed urine collection (procedure)|; all descendants or self of 70777001 |Urine specimen collection, catheterized (procedure)|; all descendants or self of 386089008 |Collection of coughed sputum (procedure)|; all descendants or self of 278450005 |Finger-prick sampling (procedure)| |
| [Results Specimen Type](ValueSet-ng-results-specimen-type-vs.md) | Specimen Type codes value set. |
| [Results Status Codes - IPS](ValueSet-ng-results-status-vs.md) | IPS Observation status codes allowable for results. This value set includes all observation status codes except "entered-in-error" from http://hl7.org/fhir/observation-status. |
| [TB Active TB Diagnosis Codes](ValueSet-ng-tb-active-tb-diagnosis-vs.md) | A list of codes describing whether the patient is infected with active TB. |
| [TB Alternate TPT Prophylaxis Type Codes ValueSet](ValueSet-ng-tb-tpt-alternate-prophylaxis-type-vs.md) | A list of codes describing the alternate TPT prophylaxis types to INH. |
| [TB Diagnostic Test Result Codes ValueSet](ValueSet-ng-tb-diagnostic-test-result-vs.md) | A list of codes describing a TB diagnostic test result. |
| [TB Month Ordinal Codes](ValueSet-ng-tb-month-ordinals-vs.md) | A list of codes indicating the month ordinals. |
| [TB Reason Not Eligible for TPT Codes](ValueSet-ng-tb-tpt-reason-not-eligibile-vs.md) | A list of codes used for indicating the reason why the patient is not eligible for TPT. |
| [TB Screening Diagnostic Test Type Codes ValueSet](ValueSet-ng-tb-screening-diagnostic-test-type-vs.md) | A list of codes describing the types of diagnostic tests that can be peformed on the specimen taken during TB screening. |
| [TB Screening Result Codes ValueSet](ValueSet-ng-tb-screening-result-vs.md) | A list of codes describing the result of the TB Screening. |
| [TB Screening Specimen Type Codes ValueSet](ValueSet-ng-tb-screening-specimen-type-vs.md) | A list of codes describing the specimen types that can be taken during TB Screening for the laboratory examination. |
| [TB Screening Type Codes ValueSet](ValueSet-ng-tb-screening-type-vs.md) | A list of codes describing the Type of TB Screening. |
| [TB TPT Prophylaxis Codes For Medication Requests ValueSet](ValueSet-ng-tb-tpt-prophylaxis-vs.md) | A list of codes describing the different codes used during a request for TPT medication. |
| [TB TPT Prophylaxis Type Codes](ValueSet-ng-tb-tpt-prophylaxis-type-vs.md) | A list of codes describing the TPT prophylaxis type. |
| [TB Treatment Outcome Codes](ValueSet-ng-tb-treatment-outcome-vs.md) | A list of codes indicating the status of the treatment. |
| [TB Treatment Status Codes CodeSystem](ValueSet-ng-tb-treatment-status-value-set.md) | A list of codes describing the status of TB treatment. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ARV Regimen Switch Type](CodeSystem-ng-hiv-arv-regimen-switch-type-cs.md) | Codes used for representing the type for the ARV regimen switched. |
| [Children Developmental Milestone Codes CodeSystem](CodeSystem-ng-children-developmental-milestone-cs.md) | Code used for representing the child's developmental milestone. |
| [Differentiated Service Delivery - Assessment Status](CodeSystem-ng-hiv-dsd-assessment-status-cs.md) | Code used for indicating the status of the DSD assessment. |
| [Eligibility Request ID CodeSystem](CodeSystem-ng-eligibility-request-id-cs.md) | Local codes to identify the type used for an Eligibility Request identifier. Intended for use in CoverageEligibilityRequest.identifier.type. |
| [Encounter Type Code For Entry From Outside Facility](CodeSystem-ng-hiv-encounter-type-for-entry-from-outside-facility-cs.md) | Code used for indicating that an encounter was captured to represent an entry point from outside the facility. |
| [Enhanced Adherence Counselling](CodeSystem-ng-hiv-enhanced-adherence-counselling-status-cs.md) | Code used for indicating a proprietary enhanced adherence counselling |
| [HIV - Final Outcome CodeSystem](CodeSystem-ng-hiv-final-outcome-cs.md) | Final Outcome |
| [HIV - Reason Not Started ART CodeSystem](CodeSystem-ng-hiv-reason-not-started-art-cs.md) | Reason Not Started ART |
| [HIV ARV Drugs CodeSystem](CodeSystem-ng-hiv-arv-treatment-cs.md) | A list of codes describing the ARV Drugs. |
| [HIV ARV Regimen Change Category](CodeSystem-ng-hiv-arv-regimen-change-category-cs.md) | Codes used for representing the category for the ARV regimen change. |
| [HIV ARV Regimen Substitue Type](CodeSystem-ng-hiv-arv-regimen-substitute-type-cs.md) | Codes used for representing the type for the ARV regimen substitued. |
| [HIV Absent or Unknown CodeSystem](CodeSystem-ng-hiv-absent-unknown-cs.md) | Codes used for indicating when a value is absent or unknown. |
| [HIV Cervical Cancer Screening Type](CodeSystem-ng-hiv-cervical-cancer-screening-type-cs.md) | Codes used for representing the cervical screening type. |
| [HIV DSD - Category CodeSystem](CodeSystem-ng-hiv-dsd-category-cs.md) | Code used for indicating the category for the DSD assessment. |
| [HIV DSD - Reason For Category Change CodeSystem](CodeSystem-ng-hiv-dsd-reason-for-category-change-cs.md) | Code used for indicating the reason for the category change for the DSD assessment. |
| [HIV Differentiated Service Delivery](CodeSystem-ng-hiv-dsd-assessment-cs.md) | Code used for indicating a DSD assessment. |
| [HIV EAC Given CodeSystem](CodeSystem-ng-hiv-eac-given-cs.md) | Codes used for representing the Enhanced Adherence Councilling (EAC) given. |
| [HIV Eligility Status for ART Codes](CodeSystem-ng-hiv-art-eligibility-status-cs.md) | Observation codes used for indicating patient eligibility for ART. |
| [HIV Family Index Case Contacts Questionnaire](CodeSystem-ng-hiv-family-index-case-contacts-questionnaire-cs.md) | Proprietary Codes used in the Family Index Case Contacts Questionnaire. |
| [HIV Follow Up Status CodeSystem](CodeSystem-ng-hiv-art-follow-up-status-cs.md) | A list of codes describing the follow up statuses |
| [HIV Index Case Sex Partner Questionnaire](CodeSystem-ng-hiv-index-case-partner-questionnaire-cs.md) | Proprietary Codes used in the Index Case Partner Questionnaire. |
| [HIV Occupation Codes](CodeSystem-ng-hiv-occupation-cs.md) | Codes used for representing the patient's occupation |
| [HIV Partner Notification Plan CodeSystem](CodeSystem-ng-hiv-partner-notification-plan-cs.md) | Codes used for indicating the plan for notifying the partner regarding the index case's HIV status. |
| [HIV Partner and FBICT](CodeSystem-ng-hiv-partner-and-fbict-cs.md) | Codes used for indicating the patient's status for partner and Family-based Index Case Testing (FBICT). |
| [HIV Patient Education Level Codes](CodeSystem-ng-patient-education-level-cs.md) | Codes used for indicating the patient's highest qualification. |
| [HIV Period of HIV Exposure](CodeSystem-ng-hiv-period-of-hiv-exposure-cs.md) | Codes used for indicating the period when last the individual was exposed to HIV. |
| [HIV Positive Tracking](CodeSystem-ng-hiv-positive-tracking-cs.md) | Codes used for representing HIV positive tracking. |
| [HIV Proprietary Service Type](CodeSystem-ng-hiv-encounter-service-type-cs.md) | Codes used for indicating a proprietary encounter service type. |
| [HIV Reasons For ART Eligibility](CodeSystem-ng-hiv-reason-for-art-eligibility-cs.md) | Reasons For ART Eligibility |
| [HIV Routine Indication Viral Load](CodeSystem-ng-hiv-routine-indication-viral-load-cs.md) | Codes used for representing routine indication for viral load. |
| [HIV Service Providers CodeSystem](CodeSystem-ng-hiv-service-provider-cs.md) | Code used for representing the classification of organizations providing health services. |
| [HIV Targeted Indication Viral Load](CodeSystem-ng-hiv-targeted-indication-viral-load-cs.md) | Codes used for representing targeted indication for viral load. |
| [HIV Viral Load/CD4 Count Classifications CodeSystem](CodeSystem-ng-hiv-cd4-vl-classification-for-treatment-failure-cs.md) | Codes used for indicating the classification for the Viral Load/CD4 count treatment failure. |
| [HIV-ARV Adherence CodeSystem](CodeSystem-ng-hiv-arv-adherence-cs.md) | ARV Adherence |
| [HIV-Care Plan Categories CodeSystem](CodeSystem-ng-hiv-care-plan-category-cs.md) | A list of codes describing Care Plan categories. |
| [HIV-Cervical Cancer Screening Method CodeSystem](CodeSystem-ng-hiv-cervical-cancer-screening-method-cs.md) | A list of codes describing the Cervical Cancer Screening Method |
| [HIV-Cervical Cancer Screening Results CodeSyetem](CodeSystem-ng-hiv-cervical-cancer-screening-via-result-cs.md) | A list of codes describing the Cervical Cancer Screening Results |
| [HIV-Cervical Cancer Screening Results CodeSystem](CodeSystem-ng-hiv-cervical-cancer-screening-hpv-result-cs.md) | A list of codes describing the Cervical Cancer Screening Results |
| [HIV-Nature of Encounter CodeSystem](CodeSystem-ng-hiv-encounter-visit-type-cs.md) | A list of codes describing the nature of the patient visit to the health facility |
| [HIV-Precancerous Lesion Treatment Received CodeSystem](CodeSystem-ng-hiv-precancerous-lesion-treatment-received-cs.md) | A list of codes describing the precancerous lesion treatment received |
| [HIV-Suspicious Cancerous Treatment CodeSystem](CodeSystem-ng-hiv-suspicious-cancerous-treatment-cs.md) | A list of codes describing the suspicious Cancerous treatment |
| [NG Administrative Wards CS](CodeSystem-ng-wards-cs.md) | This CodeSystem defines ward codes and names mapped to their respective Local Government Areas (LGAs) in Nigeria. |
| [NG Adverse Event CS](CodeSystem-ng-clinical-status-cs.md) | A classification system that represents the current clinical status of an individual who experienced an Adverse Event Following Immunization (AEFI), based on medical observation, investigation, or follow-up assessment. |
| [NG Age Component Codes](CodeSystem-age-component-codes-cs.md) | Local CodeSystem for age components: units, comparison operators, and common MNCH/EPI age bands for use in measures, decision logic, and stratification. |
| [NG Bundle Identifier Codes](CodeSystem-ng-bundle-identifier-cs.md) | Local CodeSystem defining standard bundle identifiers. |
| [NG CarePlan Activity Codes](CodeSystem-ng-careplan-activity-cs.md) | Activities for CarePlan.activity.detail.code. |
| [NG CarePlan Category Codes](CodeSystem-ng-careplan-category-cs.md) | Categories for CarePlan. |
| [NG Claim Product/Service Codes](CodeSystem-ng-claim-product-or-service-cs.md) | Nigeria-specific productOrService codes. |
| [NG Client HIV status CS](CodeSystem-ng-hiv-status-cs.md) | This CodeSystem IMMZ.C.DE31 defines list of options for HIV status of a Client |
| [NG Client Pregnancy Status CS](CodeSystem-ng-pregnancy-status-cs.md) | This CodeSystem defines list of options for Pregnancy status of a Client |
| [NG DeviceMetric Category Codes](CodeSystem-ng-device-metric-category-cs.md) | Local mirror of DeviceMetric.category. Consider using 'http://terminology.hl7.org/CodeSystem/metric-category' in production. |
| [NG DeviceType Codes](CodeSystem-ng-device-type-cs.md) | Local mirror of Device Type. |
| [NG Electromechanical Medical Device Identifier CS](CodeSystem-ng-device-identifier-cs.md) | Simplified CodeSystem of 50 placeholder identifiers for electromechanical medical devices (vital signs, analyzers, imaging/DICOM, bedside, handheld, IoT). |
| [NG Facility Identifier CS](CodeSystem-ng-facility-identifier-cs.md) | This CodeSystem IMMZ.A.DE1 defines placeholder codes to manage Facility identifiers in Nigeria. |
| [NG Facility Type CS](CodeSystem-ng-facility-type-cs.md) | A standardized classification system used to describe the type or level of health facility within a healthcare delivery system, based on the scope of services provided, staffing, infrastructure, and administrative role. |
| [NG HIV ART Monthly Summary Codes](CodeSystem-ng-hiv-art-monthly-summary-cs.md) | Indicator, stratifier-dimension and local disaggregation codes for the Nigeria ART Monthly Summary Form revised November 2025. |
| [NG HIV ART Register Cervical Cancer Screening Status Codes](CodeSystem-ng-hiv-art-register-cervical-status-cs.md) | Combined cervical-cancer screening workflow statuses printed in column A27 of the National ART Register. |
| [NG HIV ART Register Cryptococcal Status Codes](CodeSystem-ng-hiv-art-register-cryptococcal-status-cs.md) | Cryptococcal screening and treatment-state codes printed in column A25 of the National ART Register. |
| [NG HIV ART Register DSD Status Codes](CodeSystem-ng-hiv-art-register-dsd-status-cs.md) | Facility- and community-based differentiated-service-delivery model codes printed in column A33 of the National ART Register. |
| [NG HIV ART Register Hepatitis Screening Codes](CodeSystem-ng-hiv-art-register-hepatitis-status-cs.md) | Hepatitis screening and treatment codes printed in column A28 of the National ART Register. |
| [NG HIV ART Register Regimen Codes](CodeSystem-ng-hiv-art-register-regimen-cs.md) | Adult and paediatric first-, second- and third-line ART regimen codes printed on the November 2025 National ART Register. |
| [NG HIV ART Register TB Status Codes](CodeSystem-ng-hiv-art-register-tb-status-cs.md) | Combined TB screening, diagnostic and treatment status codes printed on column A20 of the National ART Register. |
| [NG HIV ART Register TPT Outcome Codes](CodeSystem-ng-hiv-art-register-tpt-outcome-cs.md) | TB preventive-therapy outcome codes printed in column A22 of the National ART Register. |
| [NG HIV Care and ART Codes](CodeSystem-ng-hiv-care-art-codes-cs.md) | Local codes transcribed from the Nigeria HIV Care/ART Card for coded answers used by the HIV care and ART Questionnaire. |
| [NG HIV Care and Treatment Transfer Reasons](CodeSystem-ng-hiv-transfer-reason-cs.md) | Reasons for transferring a client between HIV treatment sites, transcribed from the November 2025 HIV Care and Treatment Transfer Form. |
| [NG HIV EAC Register Suspected Causes of Virologic Failure](CodeSystem-ng-hiv-eac-register-virologic-failure-cause-cs.md) | Codes printed in the Enhanced Adherence Counselling Monitoring Register for recording the suspected cause or causes of virologic failure after EAC. |
| [NG HIV Enhanced Adherence Counselling Form Codes](CodeSystem-ng-hiv-eac-form-cs.md) | Local coded answers transcribed from the Nigeria Enhanced Adherence Counselling Form for adherence assessment, adherence barriers, service interventions and intervention tools. |
| [NG HIV Integrated Laboratory Form Codes](CodeSystem-ng-hiv-int-lab-form-cs.md) | Local coded answer concepts transcribed or inferred from the Nigeria HIV Integrated Laboratory Order and Result Form revised November 2025. |
| [NG HIV Integrated Laboratory Monitoring Register Codes](CodeSystem-ng-hiv-int-lab-register-cs.md) | Local codes required to represent the Integrated Laboratory Monitoring Register revised November 2025. The source workbook does not provide a complete EID-entry-point legend or a POC error-code catalogue; those values are therefore represented using existing terminology or free text in the logical model. |
| [NG HIV Pharmacy Daily Worksheet Medicine Columns](CodeSystem-ng-hiv-pharmacy-worksheet-medicine-cs.md) | Local codes for the fixed medicine columns W24–W71 on the revised November 2025 Pharmacy Daily Worksheet. The code is the printed worksheet column identifier, allowing exact reconstruction of the paper worksheet. |
| [NG HIV Pharmacy Order Form Codes](CodeSystem-ng-hiv-pharmacy-order-cs.md) | Local coded medicine products transcribed from the Nigeria Combined Pharmacy Order Form revised November 2025. The codes distinguish products by program category, ingredient combination and preprinted strength. |
| [NG HIV Pharmacy Worksheet DSD Models](CodeSystem-ng-hiv-pharmacy-worksheet-dsd-model-cs.md) | DSD models represented by W9 and W10. |
| [NG HIV Pharmacy Worksheet HEI ARV Prophylaxis Regimens](CodeSystem-ng-hiv-pharmacy-worksheet-arv-prophylaxis-cs.md) | ARV prophylaxis codes printed in W17 for HIV-exposed infants. |
| [NG HIV Pharmacy Worksheet Medicine Categories](CodeSystem-ng-hiv-pharmacy-worksheet-medicine-category-cs.md) | Medicine-section categories printed on the revised Pharmacy Daily Worksheet. |
| [NG HIV Pharmacy Worksheet Summary Scopes](CodeSystem-ng-hiv-pharmacy-worksheet-summary-scope-cs.md) | The three summary rows printed at the bottom of the worksheet. |
| [NG HIV Tracking Register Attempt Stages](CodeSystem-ng-hiv-tracking-attempt-stage-cs.md) | The four numbered tracking attempts and the final attempt at the end of the tracking period represented by columns T19–T23. |
| [NG HIV Tracking Register DSD Model Codes](CodeSystem-ng-hiv-tracking-dsd-model-cs.md) | High-level DSD model codes printed in T15. |
| [NG HIV Tracking Register DSD Status Codes](CodeSystem-ng-hiv-tracking-dsd-status-cs.md) | High-level differentiated-service-delivery status codes printed in T15. The source register spells devolved as 'Devloved'; this artefact uses the intended spelling while preserving code D. |
| [NG HIV Tracking Register Person Contacted Codes](CodeSystem-ng-hiv-tracking-person-contacted-cs.md) | Person-contacted codes printed for T19–T23. |
| [NG HIV Tracking Register Reasons for Defaulting](CodeSystem-ng-hiv-tracking-default-reason-cs.md) | Reasons recorded when successful contact establishes why the client missed the appointment. |
| [NG HIV Tracking Register Reasons for Discontinuation](CodeSystem-ng-hiv-tracking-discontinuation-reason-cs.md) | Reasons for discontinuing care at the facility printed for T26. |
| [NG HIV Tracking Register Reasons for Tracking](CodeSystem-ng-hiv-tracking-reason-cs.md) | Reason-for-tracking codes printed for T16. |
| [NG HIV Tracking Register Tracking Modes](CodeSystem-ng-hiv-tracking-mode-cs.md) | Tracking modes printed for T19–T23. |
| [NG Health Status CS](CodeSystem-ng-sibling-health-status-cs.md) | This CodeSystem IMMZ.C.DE30 defines the health of the client's sibling |
| [NG IMMZ.D.DE4 ICD11 Vaccine Library](CodeSystem-ng-vaccine-icd-cs.md) | ICD11 code Immunization.vaccineCode. Dose/order is not encoded in codes; use protocolApplied.doseNumber[x]. |
| [NG IMMZ.D.DE4 Vaccine Library (SNOMED CT)](CodeSystem-ng-vaccine-local-to-snomed-cs.md) | SNOMED-CT code Immunization.vaccineCode. Dose/order is not encoded in codes; use protocolApplied.doseNumber[x]. |
| [NG IMMZ.D.DE4 Vaccine Local Codes (Dose-labelled)](CodeSystem-ng-vaccine-local.md) | Locally defined vaccine codes used for data capture and UI labels. Doses are local; external systems map at antigen/product level. |
| [NG Immunization Session types CS](CodeSystem-ng-immunization-session-type-cs.md) | Type of session for immunization Could be in a fixed facility, outreach or mobile. |
| [NG LGAs in Nigeria CS](CodeSystem-ng-lgas-cs.md) | This CodeSystem defines LGA codes and names mapped to their respective States in Nigeria. |
| [NG Languages in Nigeria CS](CodeSystem-nigeria-languages.md) | This CodeSystem defines codes for major languages spoken across Nigeria. |
| [NG Local ATC Medication Codes](CodeSystem-ng-atc-medication-cs.md) | Local ATC. Codes are placeholders aligned to common maternal, newborn, and child health needs, plus EPI vaccines. |
| [NG Location Owner CS](CodeSystem-ng-organization-owner-cs.md) | This CodeSystem defines Immunization Location Owner. |
| [NG Patient Identifier Type CS](CodeSystem-ng-patient-identifier-type-cs.md) | This CodeSystem defines list of options for uniquely Identifting a Client |
| [NG Practitioner Identifier CS](CodeSystem-ng-mdcn-cs.md) | This CodeSystem IMMZ.C.DE14 defines placeholder codes to manage physician identifiers in Nigeria. |
| [NG Practitioner Identifier CS](CodeSystem-ng-pcn-cs.md) | This CodeSystem defines placeholder codes to manage Pharmcists' identifiers in Nigeria validated at https://pcn.gov.ng/practice-number. |
| [NG Provenance Activity Codes](CodeSystem-ng-provenance-activity-cs.md) | Local CodeSystem defining provenance activity codes for data lifecycle operations such as anonymization, de-identification, labeling, creation, and deletion. |
| [NG Relationships CS](CodeSystem-ng-relationship-cs.md) | This CodeSystem defines list of persons related to a patient, but who is not a direct target of care |
| [NG States in Nigeria CS](CodeSystem-ng-states-cs.md) | This CodeSystem defines ward codes and names mapped to their respective States in Nigeria. |
| [NG Vaccine contraindications CS](CodeSystem-ng-immunization-contraindication-cs.md) | A set of standardized codes used to represent clinical conditions, diagnoses, or circumstances that serve as contraindications to the administration of one or more vaccines. |
| [Nigeria Alert Category Code System](CodeSystem-ng-alert-category-cs.md) | Categories used to classify alerts represented using the Nigeria Alert Flag profile. |
| [Nigeria Alert Code System](CodeSystem-ng-alert-code-cs.md) | Common alert types used by Nigerian health information systems and represented using the Nigeria Alert Flag profile. |
| [Nigeria Core Observation Codes](CodeSystem-ng-observation-code.md) | Local codes used to identify Nigeria Core observations that do not have an appropriate code in an established terminology. |
| [Nutritional Screening Result Codes](CodeSystem-ng-nutritional-screening-result-cs.md) | Codes used for representing the patient's nutritional screening result. |
| [Nutritional Suppliments Provided Codes](CodeSystem-ng-nutritional-suppliments-provided-cs.md) | Code used for representing the patient's nutritional suppliments provided. |
| [TB Eligility Status for TPT Codes](CodeSystem-ng-tb-tpt-eligibility-status-cs.md) | Observation codes used for indicating whether the patient is eligible for TPT. |
| [TB Screening Diagnostic Test Type Codes CodeSystem](CodeSystem-ng-tb-screening-diagnostic-test-type-cs.md) | A list of codes describing the types of diagnostic tests that can be peformed on the specimen taken during TB screening. |
| [TB TPT Alternate Follow-Up CodeSystem](CodeSystem-ng-tb-tpt-alternate-follow-up-cs.md) | A code indicating that the follow-up is for an alternate TPT prophylaxis. |
| [TB TPT Prophylaxis Type Codes](CodeSystem-ng-tb-tpt-prophylaxis-type-cs.md) | A list of codes describing the TPT prophylaxis type. |
| [TB Treatment Status Codes CodeSystem](CodeSystem-ng-tb-treatment-status-cs.md) | A list of codes describing the status of TB treatment. |
| [Target Population Category Codes](CodeSystem-ng-hiv-target-population-category-cs.md) | Codes used for representing the patient's target population category |
| [WHO Stage Codes](CodeSystem-ng-hiv-who-stage-cs.md) | Code used for representing the patient's WHO stage. |
| [Yes/No Codes](CodeSystem-ng-yes-no-cs.md) | Yes/No Codes Represented as Boolean. |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [NG Local Vaccine Codes → ICD11](ConceptMap-NgVaccineLocal-to-ICD11.md) | Maps local dose-labelled DE codes to ICD-11 vaccine concepts (antigen/product level). |
| [NG Local Vaccine Codes → SNOMED CT](ConceptMap-NgVaccineLocal-to-SNOMED.md) | Maps local dose-labelled DE codes to SNOMED CT vaccine concepts (antigen/product level). |
| [Nigeria HIV LOINC to SNOMED CT](ConceptMap-NgHivLOINCToSNOMEDCT.md) | Unidirectional LOINC-to-SNOMED CT mappings present in the supplied HIV ConceptMap. |
| [Nigeria HIV Local Concepts to SNOMED CT](ConceptMap-NgHivLocalToSNOMEDCT.md) | Unidirectional mapping from local HIV-related concepts to valid SNOMED CT identifiers in the supplied source. |
| [Nigeria HIV Local Concepts → LOINC](ConceptMap-NgHivLocalToLOINC.md) | Unidirectional mapping from local HIV-related concepts to LOINC, inferred from the supplied bidirectional ConceptMap groups. |
| [WHO HIV to Nigeria HIV Local Concepts](ConceptMap-WHOHivToNgHivLocal.md) | Experimental directional mapping from WHO SMART Guidelines HIV concepts to Nigeria HIV local programme terminology. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Alcohol Use Observation Example](Observation-NgObservationAlcoholUseExample.md) | An example indicating an average consumption of one alcoholic drink per day. |
| [Booked Appointment – Immunization Slot](Appointment-NgAppointment-001.md) | Simple booked appointment between a patient and a clinician at a facility. |
| [Community Pharmacy Organization Example](Organization-NgPharmacyOrganization-001.md) | An example registered community pharmacy providing dispensing services in Akure, Ondo State. |
| [Composite Client Registration Observation Example](Observation-NgObservation-001.md) | An example registration observation recording age in years and current pregnancy status. |
| [Consent Patient (Minimal)](Patient-NgPatient-Consent-001.md) | Nigeria 2025 Connectathon Consent Patient Profile |
| [Consent for Care and Billing (Patient-Privacy)](Consent-NgConsent-001.md) | Patient permits use/disclosure for treatment and payment for one year; captured and held by the provider organization. |
| [Coverage - Chika](Coverage-Coverage-Chika-TruthHMO.md) | Chika's Truth HMO Policy |
| [Eligibility Request - Chika Emergency Ankle Injury](CoverageEligibilityRequest-NgCoverageEligibilityRequest-ChikaEmergency.md) | Sister Blessing scans Chika's HMO card at 11:47 PM to verify his coverage before emergency treatment for ankle injury. The system checks active policy and outpatient benefits in 3 seconds. |
| [Eligibility Response - Chika Coverage Confirmed](CoverageEligibilityResponse-NgCoverageEligibilityResponse-ChikaEmergency.md) | Truth HMO's instant response (3 seconds) to Sister Blessing's eligibility check. Screen lights up green: -Active policy. Outpatient benefits in force. Copay: ₦2,500- Patient cleared for emergency treatment. |
| [Eligibility Response - X-ray Pre-Auth Approved](CoverageEligibilityResponse-NgCoverageEligibilityResponse-ChikaXrayApproved.md) | Truth HMO's approval response to Dr. Adeyemi's pre-authorization request. -Pre-authorization APPROVED. Approved amount: ₦15,000. Patient copay: ₦1,500. Authorization code: PA-2025-8847. Valid until: 10-Nov-2025.- Approval arrives while Chika is being wheeled to radiology. |
| [Example Asokoro District Hospital](Organization-NgOrganization-001.md) | Public secondary hospital in FCT (AMAC). |
| [Example Asokoro OPD](Location-NgLocation-001.md) | Outpatient department at Asokoro District Hospital. |
| [Example Gurdi Outreach Site](Location-NgLocation-004.md) | Periodic immunization outreach post in Abaji Area Council, FCT. |
| [Example Gwagwalada Immunization Room](Location-NgLocation-003.md) | RI room at Gwagwalada Model PHC. |
| [Example Gwagwalada Model PHC](Organization-NgOrganization-003.md) | Public PHC facility in FCT Gwagwalada Area Council. |
| [Example Kano Central Hospital Pharmacy](Organization-NgOrganization-002.md) | Pharmacy department serving outpatient dispensing; Kano Municipal. |
| [Example Kano Central Pharmacy Counter](Location-NgLocation-002.md) | Dispensing counter at Kano Central Hospital Pharmacy. |
| [Example NG CarePlan](CarePlan-NgCarePlan-001.md) | Minimal example of a CarePlan using NgCarePlan. |
| [Example NG Claim (ePharmacy)](Claim-NgClaim-001.md) | Pharmacy claim submitted by Kano Central Hospital Pharmacy for NgPatient-002. |
| [Example NG ClaimResponse (Partial with Copay)](ClaimResponse-NgClaimResponse-002.md) | Partial approval; copay applied per plan rules. |
| [Example NG Condition](Condition-NgCondition-001.md) | Essential hypertension on problem list. |
| [Example NG Device](Device-NgDevice-001.md) | An example Device. |
| [Example NG DeviceRequest](DeviceRequest-NgDeviceRequest-001.md) | A minimal DeviceRequest for a pulse oximeter for home monitoring. |
| [Example NG Goal](Goal-NgGoal-001.md) | Patient goal to control systolic BP within 6 weeks. |
| [Example NG HealthcareService](HealthcareService-NgHealthcareService-001.md) | Minimal healthcare service (ANC clinic). |
| [Example NG Procedure](Procedure-NgProcedure-001.md) | Cesarean section for obstructed labor. |
| [Example Ng ClaimResponse (Approved)](ClaimResponse-NgClaimResponse-001.md) | Full approval of pharmacy claim for NgPatient-002. |
| [Example Ng Coverage (NHIA Dependent Coverage)](Coverage-NgCoverage-002.md) | Active NHIA dependent coverage for NgPatient-003; subscriber is NgPatient-002. |
| [Example Ng Coverage (NHIA Self Coverage)](Coverage-NgCoverage-001.md) | Active NHIA coverage for NgPatient-002. |
| [Example Ng EOB (Approved)](ExplanationOfBenefit-NgExplanationOfBenefit-001.md) | EOB for fully approved pharmacy claim. |
| [Example Ng EOB (Partial with Copay)](ExplanationOfBenefit-NgExplanationOfBenefit-002.md) | EOB documenting partial approval and member copay. |
| [Example Ng Encounter (Immunization Visit)](Encounter-NgEncounter-003.md) | RI session at Gwagwalada Model PHC. |
| [Example Ng Encounter (MNCH ANC)](Encounter-NgEncounter-001.md) | Antenatal care visit at Asokoro District Hospital. |
| [Example Ng Encounter (ePharmacy Dispense)](Encounter-NgEncounter-002.md) | Outpatient pharmacy encounter at Kano Central Hospital Pharmacy. |
| [Example Ng Immunization (Pentavalent 1)](Immunization-NgImmunization-001.md) | Pentavalent 1 administered to NgPatient-003 at Gwagwalada PHC. |
| [Example Ng Immunization (Rotavirus 1)](Immunization-NgImmunization-002.md) | Rotavirus 1 administered orally to NgPatient-003. |
| [Example Ng Immunization (Tetanus Diphtheria)](Immunization-NgImmunization-003.md) | Td dose administered to NgPatient-001 at Asokoro District Hospital. |
| [Example Ng Medication (Amoxicillin 500 mg Capsule)](Medication-NgMedication-001.md) | Amoxicillin hard gelatin capsule, 500 mg. |
| [Example Ng Medication (Insulin 100 IU/mL Injection)](Medication-NgMedication-003.md) | Short-acting insulin solution for injection. |
| [Example Ng Medication (Paracetamol Oral Suspension 250 mg/5 mL)](Medication-NgMedication-002.md) | Paracetamol (Acetaminophen) oral suspension, pediatric. |
| [Example Ng MedicationDispense (Amoxicillin 500 mg CAPS x30)](MedicationDispense-NgMedicationDispense-001.md) | Completed outpatient dispensing. |
| [Example Ng MedicationDispense (Insulin 100 IU/mL, 10 mL)](MedicationDispense-NgMedicationDispense-003.md) | Completed insulin dispensing. |
| [Example Ng MedicationDispense (Paracetamol 250 mg/5 mL, 100 mL)](MedicationDispense-NgMedicationDispense-002.md) | Completed pediatric dispensing. |
| [Example Ng Patient (Immunization)](Patient-NgPatient-003.md) | Male child presenting for routine vaccination; FCT AMAC. |
| [Example Ng Patient (MNCH Referral)](Patient-NgPatient-001.md) | Adult female referred for ANC; Lagos State, Ikeja LGA. |
| [Example Ng Patient (ePharmacy & Claims)](Patient-NgPatient-002.md) | Adult male on chronic meds; insured with NHIA; Kano Municipal LGA. |
| [Example Ng Practitioner (MNCH)](Practitioner-NgPractitioner-001.md) | Obstetrician supporting ANC referrals. |
| [Example Ng Practitioner (Medical Devices)](Practitioner-NgPractitioner-003.md) | CHEW operating connected vitals devices. |
| [Example Ng Practitioner (ePharmacy & Claims)](Practitioner-NgPractitioner-002.md) | Pharmacist dispensing and submitting claims. |
| [Example Ng PractitionerRole (MNCH Referral)](PractitionerRole-NgPractitionerRole-001.md) | Obstetrician role for ANC referrals. |
| [Example Ng PractitionerRole (Medical Devices)](PractitionerRole-NgPractitionerRole-003.md) | CHEW operating connected vitals devices. |
| [Example Ng PractitionerRole (ePharmacy & Claims)](PractitionerRole-NgPractitionerRole-002.md) | Pharmacist dispensing medications and processing claims. |
| [Example Ng RelatedPerson (Brother)](RelatedPerson-NgRelatedPerson-001.md) | Older brother of NgPatient-003. |
| [Example Ng RelatedPerson (Brother)](RelatedPerson-NgRelatedPerson-003.md) | Brother of NgPatient-001. |
| [Example Ng RelatedPerson (Sister)](RelatedPerson-NgRelatedPerson-002.md) | Younger sister of NgPatient-003. |
| [Immunization Allergy Example - Ondo](AllergyIntolerance-NgAllergyIntoleranceImmunizationOndoExample.md) | An example allergy record for an immunization client in Ondo State with a confirmed allergy to neomycin. |
| [Immunization Recommendation – Measles (due)](ImmunizationRecommendation-NgImmunizationRecommendation-001.md) | Recommends Measles dose for a child; due now. |
| [Laboratory Result Observation Example](Observation-NgObservationResultsLaboratoryPathologyExample.md) | An example final haemoglobin result reported in grams per decilitre. |
| [MNCH Referral Update Message](Communication-NgCommunication-MNCH-001.md) | Referring midwife notifies receiving facility about patient en route. |
| [NG HIV Care and ART QuestionnaireResponse - Initial ART](QuestionnaireResponse-NgHivCareArtQuestionnaireResponseInitialArt.md) | Completed synthetic response covering enrolment, ART commencement, adherence preparation, clinical evaluation and care/support services. |
| [NG HIV Care and ART QuestionnaireResponse - Interruption and Restart](QuestionnaireResponse-NgHivCareArtQuestionnaireResponseInterruptionRestart.md) | Completed synthetic response demonstrating repeated ART interruption, adherence-preparation and care/support service groups. |
| [NG HIV Care and ART QuestionnaireResponse - Regimen Change](QuestionnaireResponse-NgHivCareArtQuestionnaireResponseRegimenChange.md) | Completed synthetic response covering regimen substitution, drug-resistance testing and switch to second-line ART. |
| [NG HIV Enhanced Adherence Counselling Questionnaire Response Example](QuestionnaireResponse-NgHivEacFormQuestionnaireResponse.md) | Fictional completed EAC response showing three counselling sessions, improving adherence and a suppressed post-EAC viral-load result. |
| [NG HIV Integrated Laboratory Response – EID Example](QuestionnaireResponse-NgHivIntLabFormQuestionnaireResponseEidExample.md) | Fictional early-infant-diagnosis response for a two-month-old HIV-exposed infant. |
| [NG HIV Integrated Laboratory Response – Extended Panel Example](QuestionnaireResponse-NgHivIntLabFormQuestionnaireResponseExtendedPanel.md) | Fictional pregnant adult viral-load response with an extended infectious-disease, cervical-screening and metabolic investigation panel. |
| [NG HIV Integrated Laboratory Response – Routine Viral Load Example](QuestionnaireResponse-NgHivIntLabFormQuestionnaireResponseViralLoadExample.md) | Fictional adult routine viral-load response with CD4, hepatitis, syphilis, glucose and urinalysis results. |
| [NG HIV Pharmacy Order Form Questionnaire Response Example](QuestionnaireResponse-NgHivPharmacyOrderFormQuestionnaireResponse.md) | Fictional completed adult ART pharmacy order with OI prophylaxis, 3HP, workflow sign-off and a prescribing-quantity error corrected before dispensing. |
| [NHMIS Monthly Outpatient Attendance Measure Report](MeasureReport-NgMeasureReport-NHMIS-001.md) | A summary MeasureReport containing the total outpatient attendance reported by a health facility in Ondo State for July 2026. |
| [Nigeria ANC Referral Service Request Example](ServiceRequest-NgServiceRequest-001.md) | An urgent referral request for a pregnant patient attending antenatal care in Ondo State to receive specialist assessment for high blood pressure. |
| [Nigeria Diagnostic Report Example](DiagnosticReport-NgDiagnosticReportExample.md) | An example final laboratory report for a full blood count test. The referenced resources represent resources held on the Nigeria Core testing sandbox. |
| [Nigeria Health Insurance Organization Example](Organization-NgInsurerOrganization-001.md) | An example health maintenance organization providing health insurance coverage in Ondo State. |
| [Nigeria Healthcare Provider Organization Example](Organization-NgProviderOrganization-001.md) | An example healthcare provider organization representing a hospital located in Akure, Ondo State. |
| [Nigeria Immunization Alert Flag Example](Flag-NgFlag-001.md) | An active immunization alert indicating that a child in Ondo State is overdue for the third dose of the pentavalent vaccine. |
| [Nigeria Immunization Document Example](DocumentReference-NgDocuments-001.md) | An example DocumentReference indexing a patient's immunization record created during an encounter in Ondo State. |
| [Nigeria Lightweight Provenance Example](Provenance-NgProvenance-001.md) | A lightweight provenance record showing that a practitioner created a medication request on behalf of a healthcare provider organization. |
| [Nigeria Medication Request Example](MedicationRequest-NgMedicationRequest-001.md) | An active outpatient medication request for paracetamol prescribed to a patient during a clinical encounter in Ondo State. |
| [Nigeria Medication Statement Example](MedicationStatement-NgMedicationStatement-001.md) | An active medication statement documenting that a patient reports taking paracetamol during an outpatient encounter in Ondo State. |
| [Nigeria Pharmacy Dispensing Invoice Example](Invoice-NgInvoice-001.md) | An issued pharmacy invoice for medicines dispensed to a patient during an encounter in Ondo State. |
| [Nigeria Referral Task Example](Task-NgTask-001.md) | A simple task assigning an antenatal referral request to a receiving healthcare organization in Ondo State. |
| [Nigeria Venous Blood Specimen Example](Specimen-NgSpecimen-001.md) | A venous blood specimen collected from a patient during a laboratory encounter in Ondo State. |
| [Patient - Chika Okafor](Patient-Patient-Chika-Okafor.md) | Patient with Emergency situation (Welding Supervisor) |
| [Pregnancy Expected Delivery Date Example](Observation-NgObservationPregnancyEddExample.md) | An example estimated delivery date recorded during an antenatal visit. |
| [Pregnancy Outcome Observation Example](Observation-NgObservationPregnancyOutcomeExample.md) | An example recording a live-birth pregnancy outcome. |
| [Pregnancy Status Observation Example](Observation-NgObservationPregnancyStatusExample.md) | An example positive pregnancy-status observation linked to an estimated delivery-date observation. |
| [Pseudonymized Ng Patient (MNCH Referral)](Patient-NgPatient-001-Pseudo.md) | NIS ISO/TR 25237-compliant pseudonymized equivalent of NgPatient-001. Direct identifiers removed; stable pseudonym retained for controlled re-linkage. |
| [Pseudonymized Ng Practitioner (MNCH)](Practitioner-NgPractitioner-001-Pseudo.md) | ISO 25237-compliant pseudonymization of NgPractitioner-001; direct identifiers suppressed, linkage via controlled pseudonym. |
| [Pseudonymized Ng RelatedPerson (Brother)](RelatedPerson-NgRelatedPerson-003-Pseudo.md) | ISO 25237-compliant pseudonymization of NgRelatedPerson-003; direct identifiers suppressed, linkage via pseudonymized patient. |
| [Radiology Result Observation Example](Observation-NgObservationResultsRadiologyExample.md) | An example overall conclusion from a two-view chest radiograph. |
| [Service Hospital](Organization-Organization-PortHarcourt-Hospital.md) | Port Harcourt Emergency Hospital. |
| [Tobacco Smoking Status Observation Example](Observation-NgObservationTobaccoUseExample.md) | An example indicating that the patient has never smoked tobacco. |
| [Triage Nurse](Practitioner-NgPractitioner-005-nurse.md) | Triage Nurse used in Claims check |
| [Triage Nurse](Practitioner-NgPractitioner-006-Doctor.md) | Triage Nurse used in Claims check |
| [Truth HMO](Organization-Organization-Truth-HMO.md) | Truth Health Management Organization. |

