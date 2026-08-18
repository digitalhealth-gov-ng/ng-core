# NG TB Presumptive Register - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Presumptive Register**

## Logical Model: NG TB Presumptive Register 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBPresumptiveRegister | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgTBPresumptiveRegister |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.79 | |

 
Logical model for the Nigeria National Tuberculosis and Leprosy Control Programme NTBLCP/TB 01 Presumptive TB Register for drug-susceptible and drug-resistant tuberculosis. One model instance represents one facility register reporting period and contains repeatable client entries covering registration, presumptive-TB classification, referral source, specimen processing, diagnostic investigations, HIV activities, investigation outcome and linkage to TB treatment. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-NgTBPresumptiveRegister.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NgTBPresumptiveRegister.csv), [Excel](StructureDefinition-NgTBPresumptiveRegister.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NgTBPresumptiveRegister",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBPresumptiveRegister",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.79"
  }],
  "version" : "0.0.0",
  "name" : "NgTBPresumptiveRegister",
  "title" : "NG TB Presumptive Register",
  "status" : "draft",
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Logical model for the Nigeria National Tuberculosis and Leprosy Control\nProgramme NTBLCP/TB 01 Presumptive TB Register for drug-susceptible and\ndrug-resistant tuberculosis. One model instance represents one facility\nregister reporting period and contains repeatable client entries covering\nregistration, presumptive-TB classification, referral source, specimen\nprocessing, diagnostic investigations, HIV activities, investigation outcome\nand linkage to TB treatment.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ng-tb-presumptive-register-columns",
    "uri" : "urn:ng:ntblcp:tb01:presumptive-tb-register",
    "name" : "NG TB Presumptive Register Column Mapping",
    "comment" : "Maps NgTBPresumptiveRegister logical-model elements to the printed\nNTBLCP/TB 01 Presumptive TB Register."
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBPresumptiveRegister",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "NgTBPresumptiveRegister",
      "path" : "NgTBPresumptiveRegister",
      "short" : "NG TB Presumptive Register",
      "definition" : "Logical model for the Nigeria National Tuberculosis and Leprosy Control\nProgramme NTBLCP/TB 01 Presumptive TB Register for drug-susceptible and\ndrug-resistant tuberculosis. One model instance represents one facility\nregister reporting period and contains repeatable client entries covering\nregistration, presumptive-TB classification, referral source, specimen\nprocessing, diagnostic investigations, HIV activities, investigation outcome\nand linkage to TB treatment."
    },
    {
      "id" : "NgTBPresumptiveRegister.identifier",
      "path" : "NgTBPresumptiveRegister.identifier",
      "short" : "Register identifier",
      "definition" : "Identifier assigned to the presumptive TB register or its electronic equivalent.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.state",
      "path" : "NgTBPresumptiveRegister.state",
      "short" : "State",
      "definition" : "State in which the facility maintaining the register is located.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
      },
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Header: Name of State"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.lga",
      "path" : "NgTBPresumptiveRegister.lga",
      "short" : "LGA",
      "definition" : "Local Government Area in which the facility maintaining the register is located.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
      },
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Header: Name of LGA"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.site",
      "path" : "NgTBPresumptiveRegister.site",
      "short" : "Site reference",
      "definition" : "Reference to the health facility or service delivery site maintaining the register, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.siteName",
      "path" : "NgTBPresumptiveRegister.siteName",
      "short" : "Name of site",
      "definition" : "Name of the site maintaining the presumptive TB register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Header: Name of Site"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.clinicCode",
      "path" : "NgTBPresumptiveRegister.clinicCode",
      "short" : "Clinic code",
      "definition" : "Clinic code recorded in the source register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Header: Clinic Code"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.reportingPeriod",
      "path" : "NgTBPresumptiveRegister.reportingPeriod",
      "short" : "Reporting period",
      "definition" : "Monthly reporting period represented by the Month and Year fields in the source register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Header: Month / Year"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry",
      "path" : "NgTBPresumptiveRegister.entry",
      "short" : "Presumptive TB register entry",
      "definition" : "One client-level row in the NTBLCP/TB 01 Presumptive TB Register.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.subject",
      "path" : "NgTBPresumptiveRegister.entry.subject",
      "short" : "Patient reference",
      "definition" : "Reference to the corresponding Nigeria Core Patient resource, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.serialNumber",
      "path" : "NgTBPresumptiveRegister.entry.serialNumber",
      "short" : "Serial number",
      "definition" : "Sequential number assigned to the client in the register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "S/N"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.registrationDate",
      "path" : "NgTBPresumptiveRegister.entry.registrationDate",
      "short" : "Date of registration",
      "definition" : "Date the client was registered as a presumptive TB client.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Date of Registration"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.hospitalClinicNumber",
      "path" : "NgTBPresumptiveRegister.entry.hospitalClinicNumber",
      "short" : "Hospital or clinic number",
      "definition" : "Hospital or clinic identifier assigned to the client.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Hospital/Clinic No"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.patientName",
      "path" : "NgTBPresumptiveRegister.entry.patientName",
      "short" : "Full name",
      "definition" : "Full name of the client.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Full Name"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.ageYears",
      "path" : "NgTBPresumptiveRegister.entry.ageYears",
      "short" : "Age in years",
      "definition" : "Age of the client in years as recorded in the source register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Age (Yrs)"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.sex",
      "path" : "NgTBPresumptiveRegister.entry.sex",
      "short" : "Sex",
      "definition" : "Client sex. The source register records M or F.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-gender-vs"
      },
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Sex (M/F)"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.patientAddress",
      "path" : "NgTBPresumptiveRegister.entry.patientAddress",
      "short" : "Full address",
      "definition" : "Full residential address of the client.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Full Address"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.specimenIdentificationNumber",
      "path" : "NgTBPresumptiveRegister.entry.specimenIdentificationNumber",
      "short" : "Specimen identification number",
      "definition" : "Identification number assigned to the specimen submitted for TB investigation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Specimen Identification Number"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.presumptiveTbType",
      "path" : "NgTBPresumptiveRegister.entry.presumptiveTbType",
      "short" : "Type of presumptive TB",
      "definition" : "Indicates whether the client is presumptive drug-susceptible TB or\ndrug-resistant TB. Source values are DS-TB and DR-TB.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Type of presumptive TB: DS-TB / DR-TB"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.presumptiveDrTbCategory",
      "path" : "NgTBPresumptiveRegister.entry.presumptiveDrTbCategory",
      "short" : "Type of presumptive DR-TB",
      "definition" : "DR-TB presumptive category when presumptiveTbType is DR-TB.\nSource codes are:\na = Previously treated;\nb = Contact of a DR-TB patient;\nc = Failure to convert at the end of the second month of treatment.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "DR-TB: Enter code - a / b / c"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.healthCareWorker",
      "path" : "NgTBPresumptiveRegister.entry.healthCareWorker",
      "short" : "Health care worker",
      "definition" : "Indicates whether the client is a health care worker.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Is client a health worker? Y/N"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.referralSource",
      "path" : "NgTBPresumptiveRegister.entry.referralSource",
      "short" : "Source of referral",
      "definition" : "Source from which the presumptive TB client was referred.\n\nSource register abbreviations:\nART = ART Facility\nOPD = Outpatient Department\nDOTS = DOTS Facility\nCP = Community Pharmacist\nPPM = PPM Scheme\nCV = Community Volunteer\nTB Px = TB patient\nPMV = Patent Medicine Vendor\nCTW = Community TB Worker\nCI = Community Informant\nO = Other form of referral.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Who referred the client? Source of referral"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.otherReferralSource",
      "path" : "NgTBPresumptiveRegister.entry.otherReferralSource",
      "short" : "Other referral source",
      "definition" : "Narrative description when the source of referral is recorded as Other.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.siteOfDisease",
      "path" : "NgTBPresumptiveRegister.entry.siteOfDisease",
      "short" : "Site of disease",
      "definition" : "Presumptive site of TB disease. The source requires one of:\nPulmonary or Extra-Pulmonary.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Site of Disease: Pulmonary / Extra-Pulmonary"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.specimenProcessing",
      "path" : "NgTBPresumptiveRegister.entry.specimenProcessing",
      "short" : "Specimen processing",
      "definition" : "Specimen-processing dates for Xpert MTB/RIF or AFB microscopy.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.specimenProcessing.testType",
      "path" : "NgTBPresumptiveRegister.entry.specimenProcessing.testType",
      "short" : "Test type",
      "definition" : "Test associated with the specimen-processing dates. Expected source values are Xpert-MTB-RIF or AFB-microscopy.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Specimen processing period: Xpert MTB/RIF above / AFB microscopy below"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.specimenProcessing.specimenCollectionDate",
      "path" : "NgTBPresumptiveRegister.entry.specimenProcessing.specimenCollectionDate",
      "short" : "Date of specimen collection",
      "definition" : "Date the specimen was collected. The source footnote specifies recording the date of the first specimen collected.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Date of Specimen Collection"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.specimenProcessing.sentToLaboratoryDate",
      "path" : "NgTBPresumptiveRegister.entry.specimenProcessing.sentToLaboratoryDate",
      "short" : "Date specimen sent to laboratory",
      "definition" : "Date the specimen was sent to the laboratory.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Date specimen was sent to Laboratory"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.specimenProcessing.resultReleasedDate",
      "path" : "NgTBPresumptiveRegister.entry.specimenProcessing.resultReleasedDate",
      "short" : "Date result released",
      "definition" : "Date the laboratory result was released.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Date Result released"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.xpertResult",
      "path" : "NgTBPresumptiveRegister.entry.xpertResult",
      "short" : "Xpert MTB/RIF result",
      "definition" : "Result of Xpert MTB/RIF testing.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.xpertResult.mtbDetected",
      "path" : "NgTBPresumptiveRegister.entry.xpertResult.mtbDetected",
      "short" : "MTB detected",
      "definition" : "Indicates whether Mycobacterium tuberculosis was detected.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Xpert/MTB/RIF Result: MTB Not Detected / MTB Detected"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.xpertResult.rifResistanceResult",
      "path" : "NgTBPresumptiveRegister.entry.xpertResult.rifResistanceResult",
      "short" : "Rifampicin resistance result",
      "definition" : "Rifampicin-resistance result when MTB is detected.\nSource categories are:\nRIF resistance not detected,\nRIF resistance detected,\nRIF resistance indeterminate.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Xpert/MTB/RIF: RIF Resistance not Detected / Detected / Indeterminate"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.xpertResult.errorInvalidIncomplete",
      "path" : "NgTBPresumptiveRegister.entry.xpertResult.errorInvalidIncomplete",
      "short" : "Error, incomplete or invalid Xpert result",
      "definition" : "Indicates whether the Xpert MTB/RIF result was reported as an error, incomplete or invalid result.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Xpert/MTB/RIF: Error or incomplete/invalid result"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.xpertResult.errorDescription",
      "path" : "NgTBPresumptiveRegister.entry.xpertResult.errorDescription",
      "short" : "Xpert error or invalid-result details",
      "definition" : "Additional information about an error, incomplete or invalid Xpert result when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.afbResult",
      "path" : "NgTBPresumptiveRegister.entry.afbResult",
      "short" : "AFB result",
      "definition" : "AFB microscopy result recorded as it appears on the specimen examination request/result form.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "AFB Result: Enter result as it is in the request form"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.otherTest",
      "path" : "NgTBPresumptiveRegister.entry.otherTest",
      "short" : "Other diagnostic test",
      "definition" : "Diagnostic test other than Xpert MTB/RIF or AFB microscopy.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.otherTest.testType",
      "path" : "NgTBPresumptiveRegister.entry.otherTest.testType",
      "short" : "Type of test",
      "definition" : "Name or type of other diagnostic test, for example TB-LAMP or LF-LAM.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Other tests: Type of test"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.otherTest.result",
      "path" : "NgTBPresumptiveRegister.entry.otherTest.result",
      "short" : "Other test result",
      "definition" : "Test result. Expected source values are Positive, Negative or Indeterminate.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Other tests: Positive / Negative / Indeterminate"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.chestXrayResult",
      "path" : "NgTBPresumptiveRegister.entry.chestXrayResult",
      "short" : "Chest X-ray result",
      "definition" : "Chest X-ray interpretation. Source values are Suggestive or Not Suggestive.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Chest X-ray: Suggestive / Not Suggestive"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.clinicallyDiagnosed",
      "path" : "NgTBPresumptiveRegister.entry.clinicallyDiagnosed",
      "short" : "Clinically diagnosed",
      "definition" : "Indicates whether the client was clinically diagnosed with TB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Clinically Diagnosed Y/N"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.previouslyKnownHivStatus",
      "path" : "NgTBPresumptiveRegister.entry.previouslyKnownHivStatus",
      "short" : "Previously known HIV status",
      "definition" : "HIV status already known before the current presumptive-TB investigation.\nSource options are Positive or Negative.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "HIV Activities: Previously known HIV status - Positive / Negative"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.hivTestResult",
      "path" : "NgTBPresumptiveRegister.entry.hivTestResult",
      "short" : "HIV test result",
      "definition" : "HIV testing outcome for a client whose HIV status was previously unknown.\nSource options are Positive, Negative or Not Tested.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "HIV Activities: Previously unknown HIV status - Tested for HIV Positive / Negative / Not Tested"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.investigationOutcome",
      "path" : "NgTBPresumptiveRegister.entry.investigationOutcome",
      "short" : "Outcome of investigations",
      "definition" : "Final classification following the presumptive-TB investigations.\nSource categories are:\nDSTB,\nDRTB,\nNot TB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Outcome of investigations: DSTB / DRTB / Not TB"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.startedTbTreatment",
      "path" : "NgTBPresumptiveRegister.entry.startedTbTreatment",
      "short" : "Started TB treatment",
      "definition" : "Indicates whether a client diagnosed with TB started TB treatment.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Started TB treatment?"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.lgaTbRegistrationNumber",
      "path" : "NgTBPresumptiveRegister.entry.lgaTbRegistrationNumber",
      "short" : "LGA TB registration number",
      "definition" : "LGA TB registration number assigned when the patient starts treatment.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "If yes: LGA TB Reg No. above"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.treatmentStartDate",
      "path" : "NgTBPresumptiveRegister.entry.treatmentStartDate",
      "short" : "TB treatment start date",
      "definition" : "Date TB treatment was initiated.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "If yes: treatment date below"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.noTreatmentReason",
      "path" : "NgTBPresumptiveRegister.entry.noTreatmentReason",
      "short" : "Reason TB treatment not started",
      "definition" : "Reason a patient diagnosed with TB had not started treatment.\n\nSource codes:\n1 = Pre-treatment loss to follow-up;\n2 = Died before treatment initiation;\n3 = Transferred to another facility for treatment enrolment.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "If no: code 1 / 2 / 3"
      }]
    },
    {
      "id" : "NgTBPresumptiveRegister.entry.remarks",
      "path" : "NgTBPresumptiveRegister.entry.remarks",
      "short" : "Remarks",
      "definition" : "Additional remarks recorded for the presumptive-TB client.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-presumptive-register-columns",
        "map" : "Remarks"
      }]
    }]
  }
}

```
