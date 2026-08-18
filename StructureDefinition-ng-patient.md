# NG Patient - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Patient**

## Resource Profile: NG Patient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgPatient |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.59 | |

 
Nigeria Core Patient Profile 

**Usages:**

* Use this Profile: [Bundle NG AEFI Report](StructureDefinition-ng-aefi-report-bundle.md), [Bundle NG Immunization SMART Scheduler](StructureDefinition-ng-imm-smart-scheduler-bundle.md), [Bundle NG (IPS)](StructureDefinition-ng-ips-bundle.md) and [Bundle NG Referral MNCH](StructureDefinition-ng-mnch-referral-bundle.md)
* Refer to this Profile: [NG HIV National ART Register](StructureDefinition-NgHivArtRegister.md), [NG HIV Enhanced Adherence Counselling Monitoring Register](StructureDefinition-NgHivEacRegister.md), [NG HIV Integrated Laboratory Monitoring Register](StructureDefinition-NgHivIntLabMonitoringRegister.md), [NG HIV Pharmacy Daily Worksheet](StructureDefinition-NgHivPharmacyDailyWorksheet.md)... Show 38 more, [NG HIV Tracking Register](StructureDefinition-NgHivTrackingRegister.md), [NG Allergy Intolerance](StructureDefinition-ng-allergy-intolerance.md), [NG Appointment](StructureDefinition-ng-appointment.md), [NG CarePlan](StructureDefinition-ng-care-plan.md), [NG ClaimResponse](StructureDefinition-ng-claim-response.md), [NG Claim](StructureDefinition-ng-claim.md), [NG Communication](StructureDefinition-ng-communication.md), [NG Condition](StructureDefinition-ng-condition.md), [NG Claim Coverage Eligibility Request](StructureDefinition-ng-coverage-eligibility-request.md), [NG Claim Coverage Eligibility Response](StructureDefinition-ng-coverage-eligibility-response.md), [NG Claim Coverage](StructureDefinition-ng-coverage.md), [NG DeviceRequest](StructureDefinition-ng-device-request.md), [NG Device](StructureDefinition-ng-device.md), [DiagnosticReport (IPS)](StructureDefinition-ng-diagnostic-report.md), [NG Document Reference](StructureDefinition-ng-documents.md), [NG Encounter](StructureDefinition-ng-encounter.md), [NG Alert Flag](StructureDefinition-ng-flag.md), [NG Goal](StructureDefinition-ng-goal.md), [NG ImmunizationRecommendation](StructureDefinition-ng-immunization-recommendation.md), [NG Immunization](StructureDefinition-ng-immunization.md), [NG Invoice](StructureDefinition-ng-invoice.md), [Bundle NG IPS Composition](StructureDefinition-ng-ips-composition.md), [NG MedicationDispense](StructureDefinition-ng-medication-dispense.md), [NG MedicationRequest](StructureDefinition-ng-medication-request.md), [NG Medication Statement](StructureDefinition-ng-medication-statement.md), [NG Alcohol Use Observation](StructureDefinition-ng-observation-alcohol-use.md), [NG Pregnancy EDD Observation](StructureDefinition-ng-observation-pregnancy-edd.md), [NG Pregnancy Outcome Observation](StructureDefinition-ng-observation-pregnancy-outcome.md), [NG Pregnancy Status Observation](StructureDefinition-ng-observation-pregnancy-status.md), [NG Laboratory or Pathology Result Observation](StructureDefinition-ng-observation-results-laboratory-pathology.md), [NG Radiology Result Observation](StructureDefinition-ng-observation-results-radiology.md), [NG Tobacco Smoking Status Observation](StructureDefinition-ng-observation-tobacco-use.md), [NG Composite Observation](StructureDefinition-ng-observation.md), [NG Procedure](StructureDefinition-ng-procedure.md), [NG RelatedPerson](StructureDefinition-ng-related-person.md), [NG ServiceRequest](StructureDefinition-ng-service-request.md), [NG Specimen](StructureDefinition-ng-specimen.md) and [NG Task](StructureDefinition-ng-task.md)
* Examples for this Profile: [Patient/NgPatient-001-Pseudo](Patient-NgPatient-001-Pseudo.md), [Patient/NgPatient-001](Patient-NgPatient-001.md), [Patient/NgPatient-002](Patient-NgPatient-002.md), [Patient/NgPatient-003](Patient-NgPatient-003.md)... Show 2 more, [Patient/NgPatient-Consent-001](Patient-NgPatient-Consent-001.md) and [Patient/Patient-Chika-Okafor](Patient-Patient-Chika-Okafor.md)
* CapabilityStatements using this Profile: [Authoritative Nigeria Core Server Requirements](CapabilityStatement-NgCoreServerRequirements.md), [Nigeria Core General Hospital Registry Service Capability](CapabilityStatement-NgGeneralHospitalRegistryCapability.md), [Nigeria Core General Hospital Requestor Capability](CapabilityStatement-NgGeneralHospitalRequestorCapability.md), [Nigeria Core General Hospital Responder Capability](CapabilityStatement-NgGeneralHospitalResponderCapability.md)... Show 6 more, [Nigeria Core PHC Registry Service Capability](CapabilityStatement-NgPHCRegistryCapability.md), [Nigeria Core PHC Requestor Capability](CapabilityStatement-NgPHCRequestorCapability.md), [Nigeria Core PHC Responder Capability](CapabilityStatement-NgPHCResponderCapability.md), [Nigeria Core Tertiary Referral Registry Service Capability](CapabilityStatement-NgTertiaryRegistryCapability.md), [Nigeria Core Tertiary Referral Requestor Capability](CapabilityStatement-NgTertiaryRequestorCapability.md) and [Nigeria Core Tertiary Referral Responder Capability](CapabilityStatement-NgTertiaryResponderCapability.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-ng-patient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ng-patient.csv), [Excel](StructureDefinition-ng-patient.xlsx), [Schematron](StructureDefinition-ng-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ng-patient",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.59"
  }],
  "version" : "0.0.0",
  "name" : "NgPatient",
  "title" : "NG Patient",
  "status" : "draft",
  "date" : "2026-08-18T06:18:50+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Nigeria Core Patient Profile",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient.meta.lastUpdated",
      "path" : "Patient.meta.lastUpdated",
      "short" : "The date and time when the client record was created or last updated.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.implicitRules",
      "path" : "Patient.implicitRules",
      "max" : "0"
    },
    {
      "id" : "Patient.modifierExtension",
      "path" : "Patient.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding.code"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "The identifier set given to a Client at different points (can be the National ID, the Hospital specific MRN, Connectathon number, or even phone number)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:NationalIDNo",
      "path" : "Patient.identifier",
      "sliceName" : "NationalIDNo",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:NationalIDNo.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:NationalIDNo.type",
      "path" : "Patient.identifier.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-client-identifier-vs"
      }
    },
    {
      "id" : "Patient.identifier:NationalIDNo.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "patternUri" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs"
    },
    {
      "id" : "Patient.identifier:NationalIDNo.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "NIN"
    },
    {
      "id" : "Patient.identifier:NationalIDNo.type.coding.display",
      "path" : "Patient.identifier.type.coding.display",
      "patternString" : "National Identity Number of Client or Caregiver"
    },
    {
      "id" : "Patient.identifier:NationalIDNo.system",
      "path" : "Patient.identifier.system",
      "short" : "NamingSystem for NIMC's identifier in the system autheticated later, maybe at https://nimc.org/nin",
      "patternUri" : "https://fhir-ig.digitalhealth.gov.ng/identifier/nin"
    },
    {
      "id" : "Patient.identifier:NationalIDNo.value",
      "path" : "Patient.identifier.value",
      "short" : "The NIN number of the client which is a unique 11 digit number",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:MedicalRecordsNumber",
      "path" : "Patient.identifier",
      "sliceName" : "MedicalRecordsNumber",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:MedicalRecordsNumber.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:MedicalRecordsNumber.type",
      "path" : "Patient.identifier.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-client-identifier-vs"
      }
    },
    {
      "id" : "Patient.identifier:MedicalRecordsNumber.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "patternUri" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs"
    },
    {
      "id" : "Patient.identifier:MedicalRecordsNumber.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "MRN"
    },
    {
      "id" : "Patient.identifier:MedicalRecordsNumber.type.coding.display",
      "path" : "Patient.identifier.type.coding.display",
      "patternString" : "Medical Record Number"
    },
    {
      "id" : "Patient.identifier:MedicalRecordsNumber.system",
      "path" : "Patient.identifier.system",
      "short" : "The institution issuing the MRN number (e.g., Asokoro Hospital) validated at http://asokoro.org/medicalrecord-no",
      "definition" : "The URI system that identifies the assigning authority for the medical record number.",
      "example" : [{
        "label" : "Example MRN system",
        "valueUri" : "https://fhir-ig.digitalhealth.gov.ng/identifier/a-consort-mrn"
      },
      {
        "label" : "Example MRN system",
        "valueUri" : "https://fhir-ig.digitalhealth.gov.ng/identifier/wakanda-mrn"
      }]
    },
    {
      "id" : "Patient.identifier:MedicalRecordsNumber.value",
      "path" : "Patient.identifier.value",
      "short" : "The specific medical number value given the client at a health institution",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:BirthCertificateNo",
      "path" : "Patient.identifier",
      "sliceName" : "BirthCertificateNo",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:BirthCertificateNo.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:BirthCertificateNo.type",
      "path" : "Patient.identifier.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-client-identifier-vs"
      }
    },
    {
      "id" : "Patient.identifier:BirthCertificateNo.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "patternUri" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs"
    },
    {
      "id" : "Patient.identifier:BirthCertificateNo.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "BIRTHCERT"
    },
    {
      "id" : "Patient.identifier:BirthCertificateNo.type.coding.display",
      "path" : "Patient.identifier.type.coding.display",
      "patternString" : "Birth Certificate Number"
    },
    {
      "id" : "Patient.identifier:BirthCertificateNo.system",
      "path" : "Patient.identifier.system",
      "short" : "The institution generating the birth certificate number (e.g., NPC)",
      "definition" : "The URI system identifying the authority that assigns the birth certificate number validated at http://npc.gov.ng/birthCertificate-no.",
      "patternUri" : "https://fhir-ig.digitalhealth.gov.ng/identifier/birth-cert"
    },
    {
      "id" : "Patient.identifier:BirthCertificateNo.value",
      "path" : "Patient.identifier.value",
      "short" : "The client's birth certificate number",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:PhoneNumber",
      "path" : "Patient.identifier",
      "sliceName" : "PhoneNumber",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:PhoneNumber.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:PhoneNumber.type",
      "path" : "Patient.identifier.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-client-identifier-vs"
      }
    },
    {
      "id" : "Patient.identifier:PhoneNumber.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "patternUri" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs"
    },
    {
      "id" : "Patient.identifier:PhoneNumber.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "MOBILE"
    },
    {
      "id" : "Patient.identifier:PhoneNumber.type.coding.display",
      "path" : "Patient.identifier.type.coding.display",
      "patternString" : "mobile"
    },
    {
      "id" : "Patient.identifier:PhoneNumber.system",
      "path" : "Patient.identifier.system",
      "short" : "The provider of the phone number (e.g., MTN)",
      "definition" : "The URI system identifying the provider of the phone number.",
      "patternUri" : "https://fhir-ig.digitalhealth.gov.ng/identifier/mobile",
      "example" : [{
        "label" : "Example Phone Number system",
        "valueUri" : "http://mtnonline.com/phone-no"
      }]
    },
    {
      "id" : "Patient.identifier:PhoneNumber.value",
      "path" : "Patient.identifier.value",
      "short" : "Client's phone number which is 11 digits",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:InsuranceNumber",
      "path" : "Patient.identifier",
      "sliceName" : "InsuranceNumber",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:InsuranceNumber.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:InsuranceNumber.type",
      "path" : "Patient.identifier.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-client-identifier-vs"
      }
    },
    {
      "id" : "Patient.identifier:InsuranceNumber.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "patternUri" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs"
    },
    {
      "id" : "Patient.identifier:InsuranceNumber.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "INSUR"
    },
    {
      "id" : "Patient.identifier:InsuranceNumber.type.coding.display",
      "path" : "Patient.identifier.type.coding.display",
      "patternString" : "The Insurance or HMO number of the client"
    },
    {
      "id" : "Patient.identifier:InsuranceNumber.system",
      "path" : "Patient.identifier.system",
      "short" : "The generating institution e.g., State, NHIA, or HMO",
      "definition" : "The URI system identifying the provider of the insurance number validated at http://nhia.gov.ng/insurance-no.",
      "patternUri" : "https://fhir-ig.digitalhealth.gov.ng/identifier/ins"
    },
    {
      "id" : "Patient.identifier:InsuranceNumber.value",
      "path" : "Patient.identifier.value",
      "short" : "The actual insurance number generated at state, national or HMO authorities",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:Pseudonym",
      "path" : "Patient.identifier",
      "sliceName" : "Pseudonym",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:Pseudonym.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:Pseudonym.type",
      "path" : "Patient.identifier.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-client-identifier-vs"
      }
    },
    {
      "id" : "Patient.identifier:Pseudonym.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "patternUri" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-patient-identifier-type-cs"
    },
    {
      "id" : "Patient.identifier:Pseudonym.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "PSEUDONYM"
    },
    {
      "id" : "Patient.identifier:Pseudonym.type.coding.display",
      "path" : "Patient.identifier.type.coding.display",
      "patternString" : "Pseudonymized Identifier"
    },
    {
      "id" : "Patient.identifier:Pseudonym.system",
      "path" : "Patient.identifier.system",
      "short" : "The generating institution e.g., NIMC",
      "definition" : "The URI system identifying the provider of the pseudo number.",
      "example" : [{
        "label" : "Pseudonymized Patient Identifier system",
        "valueUri" : "https://fhir-ig.digitalhealth.gov.ng/identifier/pseudo"
      }]
    },
    {
      "id" : "Patient.identifier:Pseudonym.value",
      "path" : "Patient.identifier.value",
      "short" : "The actual one-way phsedonymized Patient number generated at state or national authorities",
      "min" : 1
    },
    {
      "id" : "Patient.active",
      "path" : "Patient.active",
      "short" : "Indicates whether this client's record is in active use or not"
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.use",
      "path" : "Patient.name.use",
      "max" : "0"
    },
    {
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "short" : "The surname or family name of the client",
      "min" : 1
    },
    {
      "id" : "Patient.name.given",
      "path" : "Patient.name.given",
      "short" : "The other names of the client like the Firstname and Middle names if applicable",
      "min" : 1
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "The sex of the client",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-gender-vs"
      }
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "short" : "The date of birth of the client in the form dd-mm-yyy",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.extension:administrativeWard",
      "path" : "Patient.address.extension",
      "sliceName" : "administrativeWard",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-administrative-ward"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.use",
      "path" : "Patient.address.use",
      "max" : "0"
    },
    {
      "id" : "Patient.address.line",
      "path" : "Patient.address.line",
      "short" : "The house number, street, and name where the client lives",
      "max" : "1"
    },
    {
      "id" : "Patient.address.city",
      "path" : "Patient.address.city",
      "short" : "The city, village, town or settlement where the client lives"
    },
    {
      "id" : "Patient.address.district",
      "path" : "Patient.address.district",
      "short" : "The FHIR name is district, used as Nigeria LGA in this profile",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
      }
    },
    {
      "id" : "Patient.address.state",
      "path" : "Patient.address.state",
      "short" : "The name of the state where the client resides in Nigeria",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
      }
    },
    {
      "id" : "Patient.contact",
      "path" : "Patient.contact",
      "short" : "The contact information of the client's primary Caregiver, can be a Parent or Guardian",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.modifierExtension",
      "path" : "Patient.contact.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Patient.contact.relationship.text",
      "path" : "Patient.contact.relationship.text",
      "short" : "The relationship of the client with the primary Caregiver or Guardian (eg. Parent)",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-relationships-vs"
      }
    },
    {
      "id" : "Patient.contact.name.use",
      "path" : "Patient.contact.name.use",
      "max" : "0"
    },
    {
      "id" : "Patient.contact.name.family",
      "path" : "Patient.contact.name.family",
      "short" : "The surname (family) name of the client's primary Caregiver, can be a Parent or Guardian"
    },
    {
      "id" : "Patient.contact.name.given",
      "path" : "Patient.contact.name.given",
      "short" : "The first name of the client's primary Caregiver, can be a Parent or Guardian"
    },
    {
      "id" : "Patient.contact.telecom",
      "path" : "Patient.contact.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.telecom.system",
      "path" : "Patient.contact.telecom.system",
      "short" : "The primary means to contact the client's primary Caregiver or Guardian"
    },
    {
      "id" : "Patient.contact.telecom.value",
      "path" : "Patient.contact.telecom.value",
      "short" : "The primary phone/email of the client's primary Caregiver or Guardian"
    },
    {
      "id" : "Patient.contact.telecom.use",
      "path" : "Patient.contact.telecom.use",
      "max" : "0"
    },
    {
      "id" : "Patient.contact.address.extension:administrativeWard",
      "path" : "Patient.contact.address.extension",
      "sliceName" : "administrativeWard",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-administrative-ward"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.address.use",
      "path" : "Patient.contact.address.use",
      "max" : "0"
    },
    {
      "id" : "Patient.contact.address.line",
      "path" : "Patient.contact.address.line",
      "short" : "The line address of the client's primary Caregiver or Guardian",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.address.city",
      "path" : "Patient.contact.address.city",
      "short" : "The city, town or settlement where the client's primary Caregiver or Guardian lives"
    },
    {
      "id" : "Patient.contact.address.district",
      "path" : "Patient.contact.address.district",
      "short" : "The LGA where the client's primary Caregiver or Guardian lives",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
      }
    },
    {
      "id" : "Patient.contact.address.state",
      "path" : "Patient.contact.address.state",
      "short" : "The State in Nigeria where the client's primary Caregiver or Guardian lives",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
      }
    },
    {
      "id" : "Patient.link",
      "path" : "Patient.link",
      "max" : "1"
    },
    {
      "id" : "Patient.link.modifierExtension",
      "path" : "Patient.link.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Patient.link.other",
      "path" : "Patient.link.other",
      "short" : "This link provides reference to the client's related persons",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : false
        }],
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-related-person"]
      }]
    },
    {
      "id" : "Patient.link.type",
      "path" : "Patient.link.type",
      "short" : "The type of Link (eg. reference) client's related persons"
    }]
  }
}

```
