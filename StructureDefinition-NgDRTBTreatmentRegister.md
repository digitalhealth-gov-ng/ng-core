# NG DR-TB Treatment Register - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG DR-TB Treatment Register**

## Logical Model: NG DR-TB Treatment Register 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgDRTBTreatmentRegister | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgDRTBTreatmentRegister |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.74 | |

 
Logical model for the Nigeria National Tuberculosis and Leprosy Control Programme DR-TB Treatment Register. One model instance represents a DR-TB treatment register and contains repeatable patient entries covering registration, treatment initiation, diagnosis and baseline investigations, longitudinal bacteriological follow-up, TB/HIV activities and treatment outcomes. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-NgDRTBTreatmentRegister.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NgDRTBTreatmentRegister.csv), [Excel](StructureDefinition-NgDRTBTreatmentRegister.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NgDRTBTreatmentRegister",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgDRTBTreatmentRegister",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.74"
  }],
  "version" : "0.0.0",
  "name" : "NgDRTBTreatmentRegister",
  "title" : "NG DR-TB Treatment Register",
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
  "description" : "Logical model for the Nigeria National Tuberculosis and Leprosy Control\nProgramme DR-TB Treatment Register. One model instance represents a DR-TB\ntreatment register and contains repeatable patient entries covering\nregistration, treatment initiation, diagnosis and baseline investigations,\nlongitudinal bacteriological follow-up, TB/HIV activities and treatment\noutcomes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ng-drtb-treatment-register-columns",
    "uri" : "urn:ng:ntblcp:drtb-treatment-register",
    "name" : "NG DR-TB Treatment Register Column Mapping",
    "comment" : "Maps NgDRTBTreatmentRegister logical-model elements to the attached\nNTBLCP DR-TB Treatment Register."
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgDRTBTreatmentRegister",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "NgDRTBTreatmentRegister",
      "path" : "NgDRTBTreatmentRegister",
      "short" : "NG DR-TB Treatment Register",
      "definition" : "Logical model for the Nigeria National Tuberculosis and Leprosy Control\nProgramme DR-TB Treatment Register. One model instance represents a DR-TB\ntreatment register and contains repeatable patient entries covering\nregistration, treatment initiation, diagnosis and baseline investigations,\nlongitudinal bacteriological follow-up, TB/HIV activities and treatment\noutcomes."
    },
    {
      "id" : "NgDRTBTreatmentRegister.identifier",
      "path" : "NgDRTBTreatmentRegister.identifier",
      "short" : "Register identifier",
      "definition" : "Identifier assigned to the DR-TB treatment register or its electronic equivalent.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.treatmentUnit",
      "path" : "NgDRTBTreatmentRegister.treatmentUnit",
      "short" : "DR-TB treatment unit/facility reference",
      "definition" : "Reference to the DR-TB treatment unit or facility maintaining the register, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.treatmentUnitName",
      "path" : "NgDRTBTreatmentRegister.treatmentUnitName",
      "short" : "Name of DR-TB treatment unit/facility",
      "definition" : "Name of the DR-TB treatment unit or facility maintaining the register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Page 2 Header: Name of DR-TB Treatment Unit/Facility"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.state",
      "path" : "NgDRTBTreatmentRegister.state",
      "short" : "State",
      "definition" : "State in which the DR-TB register is maintained.",
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
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Page 1 Header: Name of State"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.lga",
      "path" : "NgDRTBTreatmentRegister.lga",
      "short" : "LGA",
      "definition" : "Local Government Area in which the DR-TB register is maintained.",
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
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Page 1 Header: Name of LGA"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.quarter",
      "path" : "NgDRTBTreatmentRegister.quarter",
      "short" : "Quarter",
      "definition" : "Reporting quarter shown on the continuation/follow-up page of the source register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Page 2 Header: Quarter"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.month",
      "path" : "NgDRTBTreatmentRegister.month",
      "short" : "Month",
      "definition" : "Reporting month shown on the continuation/follow-up page of the source register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Page 2 Header: Month"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.year",
      "path" : "NgDRTBTreatmentRegister.year",
      "short" : "Year",
      "definition" : "Reporting year shown on the continuation/follow-up page of the source register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Page 2 Header: Year"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry",
      "path" : "NgDRTBTreatmentRegister.entry",
      "short" : "DR-TB treatment register entry",
      "definition" : "One longitudinal patient row in the DR-TB Treatment Register.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.subject",
      "path" : "NgDRTBTreatmentRegister.entry.subject",
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
      "id" : "NgDRTBTreatmentRegister.entry.patientSerialNumber",
      "path" : "NgDRTBTreatmentRegister.entry.patientSerialNumber",
      "short" : "Patient serial number",
      "definition" : "Sequential patient serial number assigned within the register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Patient Serial Number"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.dateRegistered",
      "path" : "NgDRTBTreatmentRegister.entry.dateRegistered",
      "short" : "Date registered",
      "definition" : "Date the patient was entered into the DR-TB treatment register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Date Registered"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.placeOfInitiation",
      "path" : "NgDRTBTreatmentRegister.entry.placeOfInitiation",
      "short" : "Place of initiation",
      "definition" : "Place where DR-TB treatment was initiated. Source values are C for Community and TC for Treatment Centre.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Place of Initiation: C = Community / TC = Treatment Centre"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.lgaDrTbRegistrationNumber",
      "path" : "NgDRTBTreatmentRegister.entry.lgaDrTbRegistrationNumber",
      "short" : "LGA DR-TB registration number",
      "definition" : "Programme registration number assigned to the patient for DR-TB care.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "LGA DR-TB Registration Number"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.patientName",
      "path" : "NgDRTBTreatmentRegister.entry.patientName",
      "short" : "Name of patient",
      "definition" : "Patient name as recorded in the DR-TB treatment register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Name of Patient"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.sex",
      "path" : "NgDRTBTreatmentRegister.entry.sex",
      "short" : "Sex",
      "definition" : "Patient sex as recorded in the source register.",
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
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Sex: M or F"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.age",
      "path" : "NgDRTBTreatmentRegister.entry.age",
      "short" : "Age",
      "definition" : "Patient age at registration.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Age: Above - Insert Age"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.dateOfBirth",
      "path" : "NgDRTBTreatmentRegister.entry.dateOfBirth",
      "short" : "Date of birth",
      "definition" : "Patient date of birth. The source register records age above and date of birth below in the same column.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Age: Below - Insert Date of Birth"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.patientAddress",
      "path" : "NgDRTBTreatmentRegister.entry.patientAddress",
      "short" : "Patient address",
      "definition" : "Full address of the patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Address of Patient in Full"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.referringFacility",
      "path" : "NgDRTBTreatmentRegister.entry.referringFacility",
      "short" : "Referring health facility reference",
      "definition" : "Reference to the health facility that referred the patient, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.referringFacilityName",
      "path" : "NgDRTBTreatmentRegister.entry.referringFacilityName",
      "short" : "Referring health facility",
      "definition" : "Full name of the referring health facility.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Name of the Referring Health Facility in Full"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.referringFacilityState",
      "path" : "NgDRTBTreatmentRegister.entry.referringFacilityState",
      "short" : "Referring facility state",
      "definition" : "State of the referring health facility.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-states-vs"
      },
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Referring Health Facility: Above - Enter Name of State"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.referringFacilityLga",
      "path" : "NgDRTBTreatmentRegister.entry.referringFacilityLga",
      "short" : "Referring facility LGA",
      "definition" : "LGA of the referring health facility.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs"
      },
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Referring Health Facility: Below - Enter Name of LGA"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.previousSecondLineTbDrugIntake",
      "path" : "NgDRTBTreatmentRegister.entry.previousSecondLineTbDrugIntake",
      "short" : "Previous intake of second-line TB drugs",
      "definition" : "Indicates whether the patient previously received second-line anti-TB drugs.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Previous intake of second line TB drugs: Above Y/N"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.previousSecondLineTbDrugIntakeDate",
      "path" : "NgDRTBTreatmentRegister.entry.previousSecondLineTbDrugIntakeDate",
      "short" : "Date of previous second-line TB drug intake",
      "definition" : "Relevant date recorded beneath the previous second-line drug-intake indicator.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Previous intake of second line TB drugs: Below date"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.weightKg",
      "path" : "NgDRTBTreatmentRegister.entry.weightKg",
      "short" : "Weight in kilograms",
      "definition" : "Patient weight recorded at registration.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Weight (kg): Above"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.heightCm",
      "path" : "NgDRTBTreatmentRegister.entry.heightCm",
      "short" : "Height in centimetres",
      "definition" : "Patient height recorded at registration.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Height (cm): Below"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.treatmentRegimen",
      "path" : "NgDRTBTreatmentRegister.entry.treatmentRegimen",
      "short" : "Type of treatment regimen",
      "definition" : "DR-TB treatment regimen recorded in the source register.\nExpected source categories are:\nShorter Regimen (Injectable),\nShorter Regimen (Bdq),\nIndividualized (Pre-XDR),\nIndividualized (XDR).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Type of Treatment Regimen"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.newDrugInRegimen",
      "path" : "NgDRTBTreatmentRegister.entry.newDrugInRegimen",
      "short" : "New drug in regimen",
      "definition" : "New DR-TB drug included in the regimen. Source examples are Bdq (Bedaquiline) and Dlm (Delamanid).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Enter Bdq or Dlm if patient's regimen contains new drugs"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.treatmentStartDate",
      "path" : "NgDRTBTreatmentRegister.entry.treatmentStartDate",
      "short" : "Date treatment started",
      "definition" : "Date the patient's DR-TB treatment regimen was started.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Date treatment started"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.siteOfDisease",
      "path" : "NgDRTBTreatmentRegister.entry.siteOfDisease",
      "short" : "Site of disease",
      "definition" : "Site of TB disease. Source values are P for Pulmonary and EP for Extra-pulmonary.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Site of Disease: P = Pulmonary / EP = Extra-pulmonary"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.registrationGroup",
      "path" : "NgDRTBTreatmentRegister.entry.registrationGroup",
      "short" : "Registration group",
      "definition" : "Initial DR-TB registration classification. The source requires one of:\nNew,\nRelapse,\nTreatment after failure,\nTreatment after loss to follow-up,\nOther previously treated TB patient,\nUnknown previous TB treatment history,\nTransferred in.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Registration Group (Tick only one)"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation",
      "short" : "Diagnosis and baseline investigations",
      "definition" : "Baseline bacteriological investigations, second-line LPA/DST and X-ray information recorded before or around treatment initiation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.date",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.date",
      "short" : "Baseline investigation date",
      "definition" : "Date associated with the baseline bacteriological investigations.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Diagnosis and Baseline Investigations: date"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.xpertRifampicinResult",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.xpertRifampicinResult",
      "short" : "Baseline Xpert rifampicin result",
      "definition" : "Xpert MTB/RIF resistance result. Expected source values are Resistant, Susceptible or Not done.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Baseline: Xpert"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.afbResult",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.afbResult",
      "short" : "Baseline AFB result",
      "definition" : "Baseline smear microscopy result. Expected source values are Positive, Negative or Not done.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Baseline: AFB"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.cultureResult",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.cultureResult",
      "short" : "Baseline culture result",
      "definition" : "Baseline TB culture result. Expected source values are Positive, Negative or Contaminated.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Baseline: Culture"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.secondLineLpa",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.secondLineLpa",
      "short" : "Second-line LPA result",
      "definition" : "Second-line line-probe assay information recorded in the source register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.secondLineLpa.aminoglycosideName",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.secondLineLpa.aminoglycosideName",
      "short" : "Aminoglycoside name",
      "definition" : "Name of the aminoglycoside recorded for the second-line LPA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "LPA Second-line: Above - Name of Aminoglycoside"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.secondLineLpa.aminoglycosideResistancePattern",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.secondLineLpa.aminoglycosideResistancePattern",
      "short" : "Aminoglycoside resistance pattern",
      "definition" : "Resistance pattern recorded for the aminoglycoside.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "LPA Second-line: Below - Aminoglycoside resistant pattern"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.secondLineLpa.quinoloneName",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.secondLineLpa.quinoloneName",
      "short" : "Quinolone name",
      "definition" : "Name of the quinolone recorded for the second-line LPA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "LPA Second-line: Above - Name of Quinolone"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.secondLineLpa.quinoloneResistancePattern",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.secondLineLpa.quinoloneResistancePattern",
      "short" : "Quinolone resistance pattern",
      "definition" : "Resistance pattern recorded for the quinolone.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "LPA Second-line: Below - Quinolone resistant pattern"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst",
      "short" : "Baseline DST results",
      "definition" : "Baseline drug-susceptibility testing results for the anti-TB drugs represented as individual columns in the source register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.isoniazid",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.isoniazid",
      "short" : "Isoniazid (H)",
      "definition" : "Baseline DST result for isoniazid.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "DST Result: H"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.rifampicin",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.rifampicin",
      "short" : "Rifampicin (R)",
      "definition" : "Baseline DST result for rifampicin.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "DST Result: R"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.ethambutol",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.ethambutol",
      "short" : "Ethambutol (E)",
      "definition" : "Baseline DST result for ethambutol.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "DST Result: E"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.pyrazinamide",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.pyrazinamide",
      "short" : "Pyrazinamide (Z)",
      "definition" : "Baseline DST result for pyrazinamide.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "DST Result: Z"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.kanamycin",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.kanamycin",
      "short" : "Kanamycin (Km)",
      "definition" : "Baseline DST result for kanamycin.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "DST Result: Km"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.amikacin",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.amikacin",
      "short" : "Amikacin (Am)",
      "definition" : "Baseline DST result for amikacin.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "DST Result: Am"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.capreomycin",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.capreomycin",
      "short" : "Capreomycin (Cm)",
      "definition" : "Baseline DST result for capreomycin.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "DST Result: Cm"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.levofloxacin",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.levofloxacin",
      "short" : "Levofloxacin (Lfx)",
      "definition" : "Baseline DST result for levofloxacin.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "DST Result: Lfx"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.moxifloxacin",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.moxifloxacin",
      "short" : "Moxifloxacin (Mfx)",
      "definition" : "Baseline DST result for moxifloxacin.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "DST Result: Mfx"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.protionamideEthionamide",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.protionamideEthionamide",
      "short" : "Protionamide/Ethionamide (Pto/Eto)",
      "definition" : "Baseline DST result for protionamide or ethionamide.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "DST Result: Pto/Eto"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.cycloserine",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.cycloserine",
      "short" : "Cycloserine (Cs)",
      "definition" : "Baseline DST result for cycloserine.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "DST Result: Cs"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.linezolid",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.linezolid",
      "short" : "Linezolid (Lzd)",
      "definition" : "Baseline DST result for linezolid.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "DST Result: Lzd"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.bedaquiline",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.bedaquiline",
      "short" : "Bedaquiline (Bdq)",
      "definition" : "Baseline DST result for bedaquiline.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "DST Result: Bdq"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.otherDrugName",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.otherDrugName",
      "short" : "Other drug",
      "definition" : "Name of another anti-TB drug represented by the Other column.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.otherDrugResult",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.dst.otherDrugResult",
      "short" : "Other drug DST result",
      "definition" : "Baseline DST result for the drug entered in otherDrugName.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "DST Result: Other"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.xrayDone",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.xrayDone",
      "short" : "X-ray done",
      "definition" : "Indicates whether a chest X-ray was performed.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "X-Ray done?: Above Y/N"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.xrayLesionPresent",
      "path" : "NgDRTBTreatmentRegister.entry.baselineInvestigation.xrayLesionPresent",
      "short" : "X-ray lesion present",
      "definition" : "Indicates whether a lesion was reported when an X-ray was performed.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "X-Ray done?: Below - If lesion Y/N"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.followUpInvestigation",
      "path" : "NgDRTBTreatmentRegister.entry.followUpInvestigation",
      "short" : "Follow-up investigation",
      "definition" : "Monthly smear and culture examination during DR-TB treatment follow-up.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.followUpInvestigation.month",
      "path" : "NgDRTBTreatmentRegister.entry.followUpInvestigation.month",
      "short" : "Treatment month",
      "definition" : "Treatment follow-up month. The source register provides Months 1 through 27.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Follow-up Investigations: Month 1 through Month 27"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.followUpInvestigation.date",
      "path" : "NgDRTBTreatmentRegister.entry.followUpInvestigation.date",
      "short" : "Investigation date",
      "definition" : "Date of the follow-up smear/culture examination.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Follow-up Investigations: DD/MM/YY"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.followUpInvestigation.smearResult",
      "path" : "NgDRTBTreatmentRegister.entry.followUpInvestigation.smearResult",
      "short" : "Smear result",
      "definition" : "Follow-up AFB smear result. Expected source values are Positive, Negative or Not done.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Follow-up Investigations: S"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.followUpInvestigation.cultureResult",
      "path" : "NgDRTBTreatmentRegister.entry.followUpInvestigation.cultureResult",
      "short" : "Culture result",
      "definition" : "Follow-up culture result. Expected source values are Positive, Negative or Contaminated.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Follow-up Investigations: C"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.hivStatus",
      "path" : "NgDRTBTreatmentRegister.entry.hivStatus",
      "short" : "HIV status",
      "definition" : "Patient HIV status. Source values are Positive, Negative or Unknown.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "TB/HIV activities: HIV Status - Positive / Negative / Unknown"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.onArt",
      "path" : "NgDRTBTreatmentRegister.entry.onArt",
      "short" : "On ART",
      "definition" : "Indicates whether the patient is receiving antiretroviral therapy.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "TB/HIV activities: ART - Above Y/N"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.artStartDate",
      "path" : "NgDRTBTreatmentRegister.entry.artStartDate",
      "short" : "ART start date",
      "definition" : "Date antiretroviral therapy was started.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "TB/HIV activities: ART - Below Start date"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.onCpt",
      "path" : "NgDRTBTreatmentRegister.entry.onCpt",
      "short" : "On CPT",
      "definition" : "Indicates whether the patient is receiving cotrimoxazole preventive therapy.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "TB/HIV activities: CPT - Above Y/N"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.cptStartDate",
      "path" : "NgDRTBTreatmentRegister.entry.cptStartDate",
      "short" : "CPT start date",
      "definition" : "Date cotrimoxazole preventive therapy was started.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "TB/HIV activities: CPT - Below Start date"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.treatmentOutcome",
      "path" : "NgDRTBTreatmentRegister.entry.treatmentOutcome",
      "short" : "Treatment outcome",
      "definition" : "Final DR-TB treatment outcome. Source categories are:\nCured,\nDied,\nLost to follow-up,\nTreatment Completed,\nTreatment Failure,\nNot evaluated.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Treatment Outcome: Insert appropriate abbreviation"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.treatmentOutcomeDate",
      "path" : "NgDRTBTreatmentRegister.entry.treatmentOutcomeDate",
      "short" : "Treatment outcome date",
      "definition" : "Date associated with the final treatment outcome.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Treatment Outcome: DD/MM/YY"
      }]
    },
    {
      "id" : "NgDRTBTreatmentRegister.entry.comments",
      "path" : "NgDRTBTreatmentRegister.entry.comments",
      "short" : "Comments",
      "definition" : "Additional comments recorded for the patient's DR-TB treatment course.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-drtb-treatment-register-columns",
        "map" : "Comments"
      }]
    }]
  }
}

```
