# NG LGA/Health Facility Tuberculosis Central Register - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG LGA/Health Facility Tuberculosis Central Register**

## Logical Model: NG LGA/Health Facility Tuberculosis Central Register 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBCentralRegister | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgTBCentralRegister |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.75 | |

 
Logical model for the Nigeria National Tuberculosis and Leprosy Control Programme NTBLCP/TB 08 Local Government Area/Health Facility Tuberculosis Central Register. One model instance represents a TB central register and contains repeatable patient entries covering registration, treatment initiation, disease classification, referral, bacteriological monitoring, treatment outcome and TB/HIV activities. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-NgTBCentralRegister.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NgTBCentralRegister.csv), [Excel](StructureDefinition-NgTBCentralRegister.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NgTBCentralRegister",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBCentralRegister",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.75"
  }],
  "version" : "0.0.0",
  "name" : "NgTBCentralRegister",
  "title" : "NG LGA/Health Facility Tuberculosis Central Register",
  "status" : "draft",
  "date" : "2026-08-18T16:47:52+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Logical model for the Nigeria National Tuberculosis and Leprosy Control\nProgramme NTBLCP/TB 08 Local Government Area/Health Facility Tuberculosis\nCentral Register. One model instance represents a TB central register and\ncontains repeatable patient entries covering registration, treatment\ninitiation, disease classification, referral, bacteriological monitoring,\ntreatment outcome and TB/HIV activities.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ng-tb-central-register-columns",
    "uri" : "urn:ng:ntblcp:tb08:tb-central-register",
    "name" : "NG LGA/Health Facility TB Central Register Column Mapping",
    "comment" : "Maps NgTBCentralRegister logical-model elements to the NTBLCP/TB 08\nLocal Government Area/Health Facility Tuberculosis Central Register."
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBCentralRegister",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "NgTBCentralRegister",
      "path" : "NgTBCentralRegister",
      "short" : "NG LGA/Health Facility Tuberculosis Central Register",
      "definition" : "Logical model for the Nigeria National Tuberculosis and Leprosy Control\nProgramme NTBLCP/TB 08 Local Government Area/Health Facility Tuberculosis\nCentral Register. One model instance represents a TB central register and\ncontains repeatable patient entries covering registration, treatment\ninitiation, disease classification, referral, bacteriological monitoring,\ntreatment outcome and TB/HIV activities."
    },
    {
      "id" : "NgTBCentralRegister.identifier",
      "path" : "NgTBCentralRegister.identifier",
      "short" : "Register identifier",
      "definition" : "Identifier assigned to the LGA/Health Facility TB Central Register or its electronic equivalent.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "NgTBCentralRegister.managingFacility",
      "path" : "NgTBCentralRegister.managingFacility",
      "short" : "Managing facility",
      "definition" : "Reference to the health facility or LGA TB service maintaining the register, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry",
      "path" : "NgTBCentralRegister.entry",
      "short" : "TB central register entry",
      "definition" : "One longitudinal patient row spanning the left and right pages of the NTBLCP/TB 08 register.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.subject",
      "path" : "NgTBCentralRegister.entry.subject",
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
      "id" : "NgTBCentralRegister.entry.serialNumber",
      "path" : "NgTBCentralRegister.entry.serialNumber",
      "short" : "Serial number",
      "definition" : "Sequential number assigned to the patient within the register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Serial Number"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.dateRegistered",
      "path" : "NgTBCentralRegister.entry.dateRegistered",
      "short" : "Date registered",
      "definition" : "Date the LGTBLS assigned the patient the LGA TB number; this is distinct from the treatment start date.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Date registered"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.lgaTbNumber",
      "path" : "NgTBCentralRegister.entry.lgaTbNumber",
      "short" : "LGA TB number",
      "definition" : "LGA TB registration number assigned to the patient.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Registration Number - LGA TB Number"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.eTbManagerUniqueNumber",
      "path" : "NgTBCentralRegister.entry.eTbManagerUniqueNumber",
      "short" : "e-TB Manager unique number",
      "definition" : "Patient number on e-TB Manager, provided following programme validation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Registration Number - e-TB Manager Unique Number"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.patientName",
      "path" : "NgTBCentralRegister.entry.patientName",
      "short" : "Name of patient",
      "definition" : "Full name of the patient as recorded in the register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Name of Patient"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.sex",
      "path" : "NgTBCentralRegister.entry.sex",
      "short" : "Sex",
      "definition" : "Patient sex. The source register records M or F.",
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
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Sex (M/F)"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.ageYears",
      "path" : "NgTBCentralRegister.entry.ageYears",
      "short" : "Age",
      "definition" : "Patient age in years.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Age in years"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.patientAddress",
      "path" : "NgTBCentralRegister.entry.patientAddress",
      "short" : "Patient address",
      "definition" : "Full residential address of the patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Patient address"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.treatmentStartFacility",
      "path" : "NgTBCentralRegister.entry.treatmentStartFacility",
      "short" : "Treatment-start facility reference",
      "definition" : "Reference to the facility where the patient started TB treatment, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.treatmentStartFacilityName",
      "path" : "NgTBCentralRegister.entry.treatmentStartFacilityName",
      "short" : "Facility where patient started treatment",
      "definition" : "Name of the facility where the patient commenced TB treatment.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Facility where patient started treatment"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.weightAtTreatmentStartKg",
      "path" : "NgTBCentralRegister.entry.weightAtTreatmentStartKg",
      "short" : "Weight at start of treatment",
      "definition" : "Patient weight in kilograms at the start of TB treatment.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Weight at the start of treatment"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.treatmentRegimen",
      "path" : "NgTBCentralRegister.entry.treatmentRegimen",
      "short" : "Treatment regimen",
      "definition" : "TB treatment regimen recorded in the source register.\nExpected source values are:\nR-6 = 6 months regimen;\nR-12 = 12 months regimen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Treatment Regimen"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.treatmentStartDate",
      "path" : "NgTBCentralRegister.entry.treatmentStartDate",
      "short" : "Date treatment started",
      "definition" : "Date TB treatment was initiated.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Date treatment started"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.referredFromCommunity",
      "path" : "NgTBCentralRegister.entry.referredFromCommunity",
      "short" : "Referred from community",
      "definition" : "Indicates whether the patient was referred through a Community Volunteer, Community TB Worker or Community Informant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Referred from the community? Y/N"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.referredFromPpmSite",
      "path" : "NgTBCentralRegister.entry.referredFromPpmSite",
      "short" : "Referred from PPM site",
      "definition" : "Indicates whether the patient was referred from a PPM-related service delivery point.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Referred from PPM site?"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.ppmReferralSource",
      "path" : "NgTBCentralRegister.entry.ppmReferralSource",
      "short" : "PPM referral source",
      "definition" : "PPM-related referral source when applicable.\n\nExpected source codes include:\nPMV,\nCP,\nSAL,\nTBA,\nFBO,\nPFP,\nPPM-1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Referred from PPM site - Insert code"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.dotProvidedByTreatmentSupporter",
      "path" : "NgTBCentralRegister.entry.dotProvidedByTreatmentSupporter",
      "short" : "DOT provided by treatment supporter",
      "definition" : "Indicates whether directly observed treatment is provided by a treatment supporter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Is DOT provided by TS? Y/N"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.siteOfDisease",
      "path" : "NgTBCentralRegister.entry.siteOfDisease",
      "short" : "Site of disease",
      "definition" : "Site of TB disease. Expected source values are P for Pulmonary and EP for Extrapulmonary.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Site of Disease P/EP"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.patientType",
      "path" : "NgTBCentralRegister.entry.patientType",
      "short" : "Type of patient",
      "definition" : "Initial TB patient classification. The source register requires one:\n\nNew;\nRelapse;\nTreatment after failure;\nTreatment after loss to follow-up;\nOther previously treated;\nUnknown previous TB treatment history;\nTransferred in.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "LEFT: Type of Patient - Tick only one"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.bacteriologicalResult",
      "path" : "NgTBCentralRegister.entry.bacteriologicalResult",
      "short" : "Bacteriological results",
      "definition" : "Diagnostic and treatment-monitoring bacteriological results recorded on the right side of the register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.bacteriologicalResult.xpertMtbResult",
      "path" : "NgTBCentralRegister.entry.bacteriologicalResult.xpertMtbResult",
      "short" : "Xpert MTB/RIF result",
      "definition" : "Xpert MTB/RIF result.\nExpected source values are:\nMTB Detected;\nMTB Not Detected.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: Bacteriological Results - Xpert MTB/RIF: MTB Detected / MTB not Detected"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.bacteriologicalResult.otherTest",
      "path" : "NgTBCentralRegister.entry.bacteriologicalResult.otherTest",
      "short" : "Other diagnostic test",
      "definition" : "Other bacteriological or TB diagnostic test such as TB-LAMP or LF-LAM.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.bacteriologicalResult.otherTest.testType",
      "path" : "NgTBCentralRegister.entry.bacteriologicalResult.otherTest.testType",
      "short" : "Type of test",
      "definition" : "Name or type of the diagnostic test.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: Other tests e.g. TB-LAMP, LF-LAM"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.bacteriologicalResult.otherTest.result",
      "path" : "NgTBCentralRegister.entry.bacteriologicalResult.otherTest.result",
      "short" : "Test result",
      "definition" : "Result of the other test. Source values are Positive or Negative.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: Other tests - Positive / Negative"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.afbMonitoring",
      "path" : "NgTBCentralRegister.entry.afbMonitoring",
      "short" : "AFB monitoring result",
      "definition" : "AFB smear microscopy result at a defined treatment-monitoring time point.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.afbMonitoring.timePoint",
      "path" : "NgTBCentralRegister.entry.afbMonitoring.timePoint",
      "short" : "Treatment monitoring time point",
      "definition" : "Monitoring time point represented in the source register.\n\nExpected values:\nmonth-0;\nmonth-2-or-3;\nmonth-5;\nmonth-6.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: AFB - Month 0 / Month 2 or 3 / Month 5 / Month 6"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.afbMonitoring.smearResult",
      "path" : "NgTBCentralRegister.entry.afbMonitoring.smearResult",
      "short" : "Smear result",
      "definition" : "AFB smear result recorded at the specified treatment-monitoring time point.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: AFB - Smear Result"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.afbMonitoring.examinationDate",
      "path" : "NgTBCentralRegister.entry.afbMonitoring.examinationDate",
      "short" : "Examination date",
      "definition" : "Date associated with the smear examination.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: AFB - Date/Lab No"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.afbMonitoring.laboratoryNumber",
      "path" : "NgTBCentralRegister.entry.afbMonitoring.laboratoryNumber",
      "short" : "Laboratory number",
      "definition" : "Laboratory number associated with the smear examination.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: AFB - Date/Lab No"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.xraySuggestive",
      "path" : "NgTBCentralRegister.entry.xraySuggestive",
      "short" : "X-Ray result suggestive",
      "definition" : "Indicates whether the X-ray result was suggestive of TB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: X-Ray Result - Suggestive? Y/N"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.biopsySuggestive",
      "path" : "NgTBCentralRegister.entry.biopsySuggestive",
      "short" : "Biopsy result suggestive",
      "definition" : "Indicates whether the biopsy result was suggestive of TB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: Biopsy Result - Suggestive? Y/N"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.treatmentOutcome",
      "path" : "NgTBCentralRegister.entry.treatmentOutcome",
      "short" : "Treatment outcome",
      "definition" : "Final TB treatment outcome.\n\nSource categories are:\nCured;\nTreatment completed;\nTreatment failed;\nDied;\nLost to follow-up;\nNot evaluated;\nRemoved from TB treatment register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: Treatment outcome"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.treatmentOutcomeDate",
      "path" : "NgTBCentralRegister.entry.treatmentOutcomeDate",
      "short" : "Treatment outcome date",
      "definition" : "Date the treatment outcome was assigned.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: Date treatment outcome was assigned"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.previouslyKnownHivStatus",
      "path" : "NgTBCentralRegister.entry.previouslyKnownHivStatus",
      "short" : "Previously known HIV status",
      "definition" : "HIV status known before the current TB episode.\nSource values are Positive or Negative.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: TB/HIV activities - Previously known HIV Status"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.hivTestResult",
      "path" : "NgTBCentralRegister.entry.hivTestResult",
      "short" : "HIV test result",
      "definition" : "HIV testing outcome for a patient whose status was previously unknown.\n\nSource values are:\nPositive;\nNegative;\nNot Tested.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: Previously unknown HIV status - Tested for HIV / Not Tested"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.artStartDate",
      "path" : "NgTBCentralRegister.entry.artStartDate",
      "short" : "ART start date",
      "definition" : "Date antiretroviral therapy was started.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: HIV care and Support - On ART start date"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.cptStartDate",
      "path" : "NgTBCentralRegister.entry.cptStartDate",
      "short" : "CPT start date",
      "definition" : "Date cotrimoxazole preventive therapy was started.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: HIV care and Support - On CPT start date"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.hivStatusAtEndOfTreatment",
      "path" : "NgTBCentralRegister.entry.hivStatusAtEndOfTreatment",
      "short" : "HIV status at end of TB treatment",
      "definition" : "HIV status at the end of TB treatment.\nSource values are:\nPositive;\nNegative;\nUnknown.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: HIV Status at end of TB treatment"
      }]
    },
    {
      "id" : "NgTBCentralRegister.entry.remarks",
      "path" : "NgTBCentralRegister.entry.remarks",
      "short" : "Remarks",
      "definition" : "Additional remarks recorded for the patient's treatment episode.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-central-register-columns",
        "map" : "RIGHT: Remarks"
      }]
    }]
  }
}

```
