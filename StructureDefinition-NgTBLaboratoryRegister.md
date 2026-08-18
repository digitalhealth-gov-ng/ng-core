# NG TB Laboratory Register - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Laboratory Register**

## Logical Model: NG TB Laboratory Register 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBLaboratoryRegister | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgTBLaboratoryRegister |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.78 | |

 
Logical model for the Nigeria National Tuberculosis and Leprosy Control Programme NTBLCP/TB 04 TB Laboratory Register for Xpert MTB/RIF assay, AFB microscopy and other TB diagnostic tests. One model instance represents a laboratory register and contains repeatable laboratory entries corresponding to individual patient/specimen rows in the source register. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-NgTBLaboratoryRegister.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NgTBLaboratoryRegister.csv), [Excel](StructureDefinition-NgTBLaboratoryRegister.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NgTBLaboratoryRegister",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBLaboratoryRegister",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.78"
  }],
  "version" : "0.0.0",
  "name" : "NgTBLaboratoryRegister",
  "title" : "NG TB Laboratory Register",
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
  "description" : "Logical model for the Nigeria National Tuberculosis and Leprosy Control\nProgramme NTBLCP/TB 04 TB Laboratory Register for Xpert MTB/RIF assay,\nAFB microscopy and other TB diagnostic tests. One model instance represents\na laboratory register and contains repeatable laboratory entries corresponding\nto individual patient/specimen rows in the source register.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ng-tb-laboratory-register-columns",
    "uri" : "urn:ng:ntblcp:tb04:tb-laboratory-register",
    "name" : "NG TB Laboratory Register Column Mapping",
    "comment" : "Maps NgTBLaboratoryRegister logical-model elements to the printed\nNTBLCP/TB 04 TB Laboratory Register columns."
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBLaboratoryRegister",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "NgTBLaboratoryRegister",
      "path" : "NgTBLaboratoryRegister",
      "short" : "NG TB Laboratory Register",
      "definition" : "Logical model for the Nigeria National Tuberculosis and Leprosy Control\nProgramme NTBLCP/TB 04 TB Laboratory Register for Xpert MTB/RIF assay,\nAFB microscopy and other TB diagnostic tests. One model instance represents\na laboratory register and contains repeatable laboratory entries corresponding\nto individual patient/specimen rows in the source register."
    },
    {
      "id" : "NgTBLaboratoryRegister.identifier",
      "path" : "NgTBLaboratoryRegister.identifier",
      "short" : "Register identifier",
      "definition" : "Identifier assigned to the TB laboratory register or its electronic equivalent.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.laboratory",
      "path" : "NgTBLaboratoryRegister.laboratory",
      "short" : "Laboratory reference",
      "definition" : "Reference to the laboratory maintaining the register, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.laboratoryName",
      "path" : "NgTBLaboratoryRegister.laboratoryName",
      "short" : "Name of laboratory",
      "definition" : "Name of the laboratory maintaining the NTBLCP/TB 04 register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Header: Name of Laboratory"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.lga",
      "path" : "NgTBLaboratoryRegister.lga",
      "short" : "LGA",
      "definition" : "Local Government Area in which the laboratory is located.",
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
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Header: LGA"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry",
      "path" : "NgTBLaboratoryRegister.entry",
      "short" : "Laboratory register entry",
      "definition" : "One patient/specimen row in the NTBLCP/TB 04 TB Laboratory Register.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.subject",
      "path" : "NgTBLaboratoryRegister.entry.subject",
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
      "id" : "NgTBLaboratoryRegister.entry.laboratorySerialNumber",
      "path" : "NgTBLaboratoryRegister.entry.laboratorySerialNumber",
      "short" : "Laboratory serial number",
      "definition" : "Laboratory-assigned serial number for the specimen or examination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Laboratory serial number"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.specimenIdentificationNumber",
      "path" : "NgTBLaboratoryRegister.entry.specimenIdentificationNumber",
      "short" : "Specimen identification number",
      "definition" : "Specimen identification number recorded on the laboratory register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Specimen Identification Number"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.specimenReceivedDate",
      "path" : "NgTBLaboratoryRegister.entry.specimenReceivedDate",
      "short" : "Date specimen received",
      "definition" : "Date the specimen was received in the laboratory.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Date specimen was received in the lab"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.specimenAccepted",
      "path" : "NgTBLaboratoryRegister.entry.specimenAccepted",
      "short" : "Specimen accepted",
      "definition" : "True when the specimen was accepted by the laboratory; false when rejected.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Specimen Status: Accepted / Rejected"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.specimenRejectionReason",
      "path" : "NgTBLaboratoryRegister.entry.specimenRejectionReason",
      "short" : "Reason specimen rejected",
      "definition" : "Reason for specimen rejection when specimenAccepted is false.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "If rejected specify reason"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.patientName",
      "path" : "NgTBLaboratoryRegister.entry.patientName",
      "short" : "Patient name",
      "definition" : "Name of the patient as recorded in the laboratory register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Patient Data: Patient Name"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.sex",
      "path" : "NgTBLaboratoryRegister.entry.sex",
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
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Patient Data: Sex (insert M or F)"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.age",
      "path" : "NgTBLaboratoryRegister.entry.age",
      "short" : "Age",
      "definition" : "Patient age recorded in the laboratory register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Patient Data: Age"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.patientAddress",
      "path" : "NgTBLaboratoryRegister.entry.patientAddress",
      "short" : "Patient address",
      "definition" : "Patient address recorded in the laboratory register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Patient Data: Patient Address"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.referringHealthFacility",
      "path" : "NgTBLaboratoryRegister.entry.referringHealthFacility",
      "short" : "Referring health facility reference",
      "definition" : "Reference to the facility from which the patient or specimen was referred, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.referringHealthFacilityName",
      "path" : "NgTBLaboratoryRegister.entry.referringHealthFacilityName",
      "short" : "Referring health facility",
      "definition" : "Name of the facility from which the patient or specimen was referred.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Patient Data: Referring health facility"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.presumptiveTBType",
      "path" : "NgTBLaboratoryRegister.entry.presumptiveTBType",
      "short" : "Type of presumptive TB",
      "definition" : "Type of presumptive TB recorded in the source register. Expected source values are DS-TB or DR-TB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Patient Data: Type of Presumptive - DS-TB / DR-TB"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.siteOfDisease",
      "path" : "NgTBLaboratoryRegister.entry.siteOfDisease",
      "short" : "Site of disease",
      "definition" : "Site of TB disease. Expected source values are Pulmonary or Extra-Pulmonary.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Patient Data: Site of Disease - Pulmonary / Extra-Pulmonary"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.healthCareWorker",
      "path" : "NgTBLaboratoryRegister.entry.healthCareWorker",
      "short" : "Health care worker",
      "definition" : "Indicates whether the patient is a health care worker.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Patient Data: Health care worker (Indicate Y/N)"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.previouslyKnownHivStatus",
      "path" : "NgTBLaboratoryRegister.entry.previouslyKnownHivStatus",
      "short" : "Previously known HIV status",
      "definition" : "HIV status known before presentation to the laboratory. Expected source values are Positive, Negative or Unknown.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "HIV Status: Previously Known HIV status - Positive / Negative / Unknown"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.laboratoryHivTestStatus",
      "path" : "NgTBLaboratoryRegister.entry.laboratoryHivTestStatus",
      "short" : "Tested for HIV in the laboratory",
      "definition" : "HIV testing status/result recorded by the laboratory. Expected source values are Positive, Negative or Not tested.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "HIV Status: Tested for HIV in the lab - Positive / Negative / Not tested"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.specimenType",
      "path" : "NgTBLaboratoryRegister.entry.specimenType",
      "short" : "Type of specimen",
      "definition" : "Type of specimen submitted to the laboratory, for example sputum or another clinical specimen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Specimen Information: Type of specimen (Specify)"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.testRequired",
      "path" : "NgTBLaboratoryRegister.entry.testRequired",
      "short" : "Type of test required",
      "definition" : "Laboratory test requested for the specimen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Specimen Information: Type of Test Required (Specify test)"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.xpertResult",
      "path" : "NgTBLaboratoryRegister.entry.xpertResult",
      "short" : "Xpert MTB/RIF result",
      "definition" : "Results of Xpert MTB/RIF testing when performed.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.xpertResult.mtbDetected",
      "path" : "NgTBLaboratoryRegister.entry.xpertResult.mtbDetected",
      "short" : "MTB detected",
      "definition" : "Indicates whether Mycobacterium tuberculosis was detected by the Xpert MTB/RIF assay.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Xpert MTB/RIF: MTB Detected (Indicate Y/N)"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.xpertResult.rifResistanceResult",
      "path" : "NgTBLaboratoryRegister.entry.xpertResult.rifResistanceResult",
      "short" : "RIF resistance result",
      "definition" : "Rifampicin-resistance result when MTB is detected. Expected source values are resistance-not-detected, resistance-detected or resistance-indeterminate.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Xpert MTB/RIF: RIF Resistance not detected / detected / indeterminate"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.xpertResult.errorCode",
      "path" : "NgTBLaboratoryRegister.entry.xpertResult.errorCode",
      "short" : "Xpert error code",
      "definition" : "Xpert MTB/RIF error code when the assay reports an error.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Xpert MTB/RIF: Error (specify error code)"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.xpertResult.invalidOrIncomplete",
      "path" : "NgTBLaboratoryRegister.entry.xpertResult.invalidOrIncomplete",
      "short" : "Invalid or incomplete Xpert test",
      "definition" : "Indicates whether the Xpert MTB/RIF examination was invalid or incomplete.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Xpert MTB/RIF: Invalid/Incomplete test (Indicate Y/N)"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.afbResult",
      "path" : "NgTBLaboratoryRegister.entry.afbResult",
      "short" : "AFB result",
      "definition" : "Acid-fast bacilli microscopy information when AFB testing is performed.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.afbResult.reasonForTest",
      "path" : "NgTBLaboratoryRegister.entry.afbResult.reasonForTest",
      "short" : "Reason for AFB test",
      "definition" : "Reason for AFB microscopy. Expected source values are Diagnosis or Follow-up.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "AFB: Reason for AFB Test - Diagnosis / Follow-up"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.afbResult.followUpMonth",
      "path" : "NgTBLaboratoryRegister.entry.afbResult.followUpMonth",
      "short" : "Month of treatment",
      "definition" : "Treatment month for which the follow-up AFB examination was performed.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "AFB: Indicate Month of treatment"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.afbResult.result",
      "path" : "NgTBLaboratoryRegister.entry.afbResult.result",
      "short" : "AFB result",
      "definition" : "AFB microscopy result entered in the laboratory register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "AFB: Insert AFB result"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.otherTestResult",
      "path" : "NgTBLaboratoryRegister.entry.otherTestResult",
      "short" : "Other test result",
      "definition" : "Result of a TB diagnostic test other than the dedicated Xpert MTB/RIF and AFB columns.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.otherTestResult.testType",
      "path" : "NgTBLaboratoryRegister.entry.otherTestResult.testType",
      "short" : "Type of other test",
      "definition" : "Type of test performed, for example TB LAMP, LF-LAM or Quantiferon.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Other test results: Write type of test"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.otherTestResult.result",
      "path" : "NgTBLaboratoryRegister.entry.otherTestResult.result",
      "short" : "Other test result",
      "definition" : "Result of the other diagnostic test. Expected source values are Positive, Negative or Indeterminate.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Other test results: Positive / Negative / Indeterminate"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.reportingOfficer",
      "path" : "NgTBLaboratoryRegister.entry.reportingOfficer",
      "short" : "Reporting officer reference",
      "definition" : "Reference to the health worker or laboratory professional reporting the result, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-practitioner-role"]
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.reportingOfficerName",
      "path" : "NgTBLaboratoryRegister.entry.reportingOfficerName",
      "short" : "Name of officer reporting",
      "definition" : "Name of the officer reporting the laboratory result.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Name of officer reporting"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.resultReleasedDate",
      "path" : "NgTBLaboratoryRegister.entry.resultReleasedDate",
      "short" : "Date result released",
      "definition" : "Date the laboratory result was released.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Date result released"
      }]
    },
    {
      "id" : "NgTBLaboratoryRegister.entry.remarks",
      "path" : "NgTBLaboratoryRegister.entry.remarks",
      "short" : "Remarks",
      "definition" : "Additional remarks recorded for the laboratory entry.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-laboratory-register-columns",
        "map" : "Remarks"
      }]
    }]
  }
}

```
