# NG HIV Integrated Laboratory Monitoring Register - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Integrated Laboratory Monitoring Register**

## Logical Model: NG HIV Integrated Laboratory Monitoring Register 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgHivIntLabMonitoringRegister | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgHivIntLabMonitoringRegister |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.5 | |

 
Logical model for the Nigeria HIV Integrated Laboratory Monitoring Register. One instance represents one facility monthly register page and contains repeatable patient-level laboratory entries corresponding to printed columns A1 through A72. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-NgHivIntLabMonitoringRegister.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NgHivIntLabMonitoringRegister.csv), [Excel](StructureDefinition-NgHivIntLabMonitoringRegister.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NgHivIntLabMonitoringRegister",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgHivIntLabMonitoringRegister",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.5"
  }],
  "version" : "0.0.0",
  "name" : "NgHivIntLabMonitoringRegister",
  "title" : "NG HIV Integrated Laboratory Monitoring Register",
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
  "description" : "Logical model for the Nigeria HIV Integrated Laboratory Monitoring Register.\nOne instance represents one facility monthly register page and contains\nrepeatable patient-level laboratory entries corresponding to printed columns\nA1 through A72.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ng-hiv-int-lab-monitoring-register-columns",
    "uri" : "urn:ng:hiv-integrated-laboratory-monitoring-register:2025",
    "name" : "NG HIV Integrated Laboratory Monitoring Register Column Mapping",
    "comment" : "Maps logical-model elements to printed columns A1–A72."
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgHivIntLabMonitoringRegister",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "NgHivIntLabMonitoringRegister",
      "path" : "NgHivIntLabMonitoringRegister",
      "short" : "NG HIV Integrated Laboratory Monitoring Register",
      "definition" : "Logical model for the Nigeria HIV Integrated Laboratory Monitoring Register.\nOne instance represents one facility monthly register page and contains\nrepeatable patient-level laboratory entries corresponding to printed columns\nA1 through A72."
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.identifier",
      "path" : "NgHivIntLabMonitoringRegister.identifier",
      "short" : "Register identifier",
      "definition" : "Identifier assigned to the monthly Integrated Laboratory Monitoring Register page or its electronic equivalent.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.facility",
      "path" : "NgHivIntLabMonitoringRegister.facility",
      "short" : "Facility reference",
      "definition" : "Reference to the facility maintaining the register, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.facilityName",
      "path" : "NgHivIntLabMonitoringRegister.facilityName",
      "short" : "Facility name",
      "definition" : "Official name of the facility maintaining the register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "Header: Facility"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.state",
      "path" : "NgHivIntLabMonitoringRegister.state",
      "short" : "State",
      "definition" : "State where the facility is located.",
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
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "Header: State"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.lga",
      "path" : "NgHivIntLabMonitoringRegister.lga",
      "short" : "LGA",
      "definition" : "Local Government Area where the facility is located.",
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
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "Header: Local Government Area"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.reportingPeriod",
      "path" : "NgHivIntLabMonitoringRegister.reportingPeriod",
      "short" : "Month and year",
      "definition" : "Monthly reporting period represented by the register page.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "Header: Month and Year"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry",
      "path" : "NgHivIntLabMonitoringRegister.entry",
      "short" : "Integrated laboratory register entry",
      "definition" : "One patient-level row in the monthly Integrated Laboratory Monitoring Register.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.subject",
      "path" : "NgHivIntLabMonitoringRegister.entry.subject",
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
      "id" : "NgHivIntLabMonitoringRegister.entry.serialNumber",
      "path" : "NgHivIntLabMonitoringRegister.entry.serialNumber",
      "short" : "A1 Serial number",
      "definition" : "Sequential register number assigned to the row.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A1"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.entryDate",
      "path" : "NgHivIntLabMonitoringRegister.entry.entryDate",
      "short" : "A2 Entry date",
      "definition" : "Date entered from the Integrated Laboratory Order and Result Form.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A2"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.hospitalNumber",
      "path" : "NgHivIntLabMonitoringRegister.entry.hospitalNumber",
      "short" : "A3 Hospital number",
      "definition" : "Facility-specific hospital or unit number.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A3"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.uniqueId",
      "path" : "NgHivIntLabMonitoringRegister.entry.uniqueId",
      "short" : "A4 Unique ID",
      "definition" : "HIV program client unique identifier.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A4"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.surname",
      "path" : "NgHivIntLabMonitoringRegister.entry.surname",
      "short" : "A5 Surname",
      "definition" : "Client surname.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A5 upper space"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.otherNames",
      "path" : "NgHivIntLabMonitoringRegister.entry.otherNames",
      "short" : "A5 Other names",
      "definition" : "Client first and other names.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A5 lower space"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.address",
      "path" : "NgHivIntLabMonitoringRegister.entry.address",
      "short" : "A6 Address",
      "definition" : "Client descriptive address.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A6 upper space"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.phoneNumber",
      "path" : "NgHivIntLabMonitoringRegister.entry.phoneNumber",
      "short" : "A6 Phone number",
      "definition" : "Client telephone number, or caregiver telephone number for an HIV-exposed infant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A6 lower space"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.eidEntryPoint",
      "path" : "NgHivIntLabMonitoringRegister.entry.eidEntryPoint",
      "short" : "A7 EID entry point",
      "definition" : "Care entry point of the HIV-exposed infant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-care-entry-point-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A7"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.eidEntryPointText",
      "path" : "NgHivIntLabMonitoringRegister.entry.eidEntryPointText",
      "short" : "A7 EID entry point source text",
      "definition" : "Source entry-point text when the printed code is unavailable or is not represented by the existing ValueSet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A7 uncoded source value"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.sex",
      "path" : "NgHivIntLabMonitoringRegister.entry.sex",
      "short" : "A8–A9 Sex",
      "definition" : "Client sex represented by the printed male and female columns.",
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
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A8 Male / A9 Female"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.ageYears",
      "path" : "NgHivIntLabMonitoringRegister.entry.ageYears",
      "short" : "A10 Age in years",
      "definition" : "Client age in completed years.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A10"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.eidAgeValue",
      "path" : "NgHivIntLabMonitoringRegister.entry.eidAgeValue",
      "short" : "A11–A14 EID age value",
      "definition" : "Infant age at specimen collection.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A11–A14 value"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.eidAgeUnit",
      "path" : "NgHivIntLabMonitoringRegister.entry.eidAgeUnit",
      "short" : "A11–A14 EID age unit",
      "definition" : "Days, weeks or months used for the EID age value.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/units-of-time"
      },
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A11–A14 unit"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.eidAgeCategory",
      "path" : "NgHivIntLabMonitoringRegister.entry.eidAgeCategory",
      "short" : "A11–A14 EID age category",
      "definition" : "Printed EID age band into which the infant falls.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-eid-age-category-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A11 <=72 hours / A12 >72 hours to <2 months / A13 2–12 months / A14 >12 months"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.pregnant",
      "path" : "NgHivIntLabMonitoringRegister.entry.pregnant",
      "short" : "A15 Pregnancy status",
      "definition" : "True when the client was pregnant at specimen collection.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A15 code P"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.breastfeeding",
      "path" : "NgHivIntLabMonitoringRegister.entry.breastfeeding",
      "short" : "A15 Breastfeeding status",
      "definition" : "True when the client was breastfeeding at specimen collection.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A15 code B"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.testRequested",
      "path" : "NgHivIntLabMonitoringRegister.entry.testRequested",
      "short" : "A16–A21 Test requested",
      "definition" : "One or more tests marked in the register: HIV viral load, HBV viral load, HCV viral load, EID, CD4 count or other.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-register-test-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A16 HIV VL / A17 HBV VL / A18 HCV VL / A19 EID / A20 CD4 / A21 Other"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.otherLaboratoryTest",
      "path" : "NgHivIntLabMonitoringRegister.entry.otherLaboratoryTest",
      "short" : "A21 and A42 Other laboratory test",
      "definition" : "A requested laboratory test not represented by one of the fixed register columns.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.otherLaboratoryTest.test",
      "path" : "NgHivIntLabMonitoringRegister.entry.otherLaboratoryTest.test",
      "short" : "Other test code",
      "definition" : "Coded test when represented in the existing Integrated Laboratory Form terminology.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-other-test-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A21 other test indicated"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.otherLaboratoryTest.testName",
      "path" : "NgHivIntLabMonitoringRegister.entry.otherLaboratoryTest.testName",
      "short" : "Other test name",
      "definition" : "Printed or locally used test name when no suitable code is available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A21 free-text test name"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.otherLaboratoryTest.result",
      "path" : "NgHivIntLabMonitoringRegister.entry.otherLaboratoryTest.result",
      "short" : "Other test result",
      "definition" : "Result value or narrative for the other laboratory test.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A42"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.modeOfTesting",
      "path" : "NgHivIntLabMonitoringRegister.entry.modeOfTesting",
      "short" : "A22 Mode of testing",
      "definition" : "Testing platform used: GeneXpert, m-PIMA or conventional PCR laboratory.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-register-mode-of-testing-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A22"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.dsdStatus",
      "path" : "NgHivIntLabMonitoringRegister.entry.dsdStatus",
      "short" : "A23 DSD status",
      "definition" : "Client differentiated-service-delivery status using source register codes 1–3.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-register-dsd-status-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A23"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.laboratoryRegistrationNumber",
      "path" : "NgHivIntLabMonitoringRegister.entry.laboratoryRegistrationNumber",
      "short" : "A24 Laboratory registration number",
      "definition" : "Identifier assigned to the specimen when registered in the laboratory.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A24"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.sampleCollectionDate",
      "path" : "NgHivIntLabMonitoringRegister.entry.sampleCollectionDate",
      "short" : "A25 Sample collection date",
      "definition" : "Date the specimen was collected.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A25"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.sampleLoggedRemotely",
      "path" : "NgHivIntLabMonitoringRegister.entry.sampleLoggedRemotely",
      "short" : "A26–A27 Sample logged remotely",
      "definition" : "True when the specimen was logged remotely at the requesting facility; false when it was not.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A26 Yes / A27 No"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.sampleReceivedDate",
      "path" : "NgHivIntLabMonitoringRegister.entry.sampleReceivedDate",
      "short" : "A28 Sample received date",
      "definition" : "Date the testing laboratory received the specimen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A28"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.sampleAssayDate",
      "path" : "NgHivIntLabMonitoringRegister.entry.sampleAssayDate",
      "short" : "A29 Sample assay date",
      "definition" : "Date the specimen was assayed.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A29"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.resultReleasedDate",
      "path" : "NgHivIntLabMonitoringRegister.entry.resultReleasedDate",
      "short" : "A30 Result release date",
      "definition" : "Date the result was released by the testing laboratory.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A30"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.eidResult",
      "path" : "NgHivIntLabMonitoringRegister.entry.eidResult",
      "short" : "A31 EID result",
      "definition" : "Early-infant-diagnosis result.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-eid-result-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A31"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.hbvViralLoadResult",
      "path" : "NgHivIntLabMonitoringRegister.entry.hbvViralLoadResult",
      "short" : "A32 HBV result",
      "definition" : "Hepatitis B viral-load result. The source register does not specify the result unit.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A32"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.hcvViralLoadResult",
      "path" : "NgHivIntLabMonitoringRegister.entry.hcvViralLoadResult",
      "short" : "A33 HCV result",
      "definition" : "Hepatitis C viral-load result. The source register does not specify the result unit.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A33"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.hivViralLoadResult",
      "path" : "NgHivIntLabMonitoringRegister.entry.hivViralLoadResult",
      "short" : "A34–A36 HIV viral-load result",
      "definition" : "HIV viral-load result in copies/mL.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A34–A36 numeric result"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.hivViralLoadCategory",
      "path" : "NgHivIntLabMonitoringRegister.entry.hivViralLoadCategory",
      "short" : "A34–A36 HIV viral-load category",
      "definition" : "Printed category determining whether the result is entered under A34, A35 or A36.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-register-viral-load-category-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A34 target not detected or <=50 / A35 >50 to <=1000 / A36 >1000"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.cd4Count",
      "path" : "NgHivIntLabMonitoringRegister.entry.cd4Count",
      "short" : "A37 CD4 count",
      "definition" : "CD4 count in cells/mm3.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A37"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.tbLfLamResult",
      "path" : "NgHivIntLabMonitoringRegister.entry.tbLfLamResult",
      "short" : "A38 TB LF-LAM result",
      "definition" : "Qualitative TB LF-LAM result.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-positive-negative-result-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A38"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.serumCragResult",
      "path" : "NgHivIntLabMonitoringRegister.entry.serumCragResult",
      "short" : "A39 Serum CrAg result",
      "definition" : "Qualitative serum cryptococcal-antigen result.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-positive-negative-result-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A39"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.csfCragResult",
      "path" : "NgHivIntLabMonitoringRegister.entry.csfCragResult",
      "short" : "A40 CSF CrAg result",
      "definition" : "Qualitative cerebrospinal-fluid cryptococcal-antigen result.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-positive-negative-result-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A40"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.csfMcsResult",
      "path" : "NgHivIntLabMonitoringRegister.entry.csfMcsResult",
      "short" : "A41 CSF microscopy, culture and sensitivity result",
      "definition" : "Result of cerebrospinal-fluid microscopy, culture and sensitivity.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A41"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.viralLoadMonitoringType",
      "path" : "NgHivIntLabMonitoringRegister.entry.viralLoadMonitoringType",
      "short" : "A43–A44 Viral-load monitoring type",
      "definition" : "Routine or targeted viral-load monitoring.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-register-monitoring-type-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A43 Routine / A44 Targeted"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.viralLoadIndication",
      "path" : "NgHivIntLabMonitoringRegister.entry.viralLoadIndication",
      "short" : "A45–A51 Viral-load indication",
      "definition" : "Reason for viral-load monitoring.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-viral-load-indication-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A45 baseline 6 months / A46 annual routine / A47 clinical or immune failure / A48 32–36 weeks gestation / A49 post-EAC / A50 HIV Early Detect / A51 recent infection"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.viralLoadDisaggregationBand",
      "path" : "NgHivIntLabMonitoringRegister.entry.viralLoadDisaggregationBand",
      "short" : "A52–A67 Viral-load sex and age band",
      "definition" : "One sex-and-age reporting band marked for a client with a viral-load result.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-int-lab-register-viral-load-disaggregation-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A52–A67"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.viralLoadPregnantSubset",
      "path" : "NgHivIntLabMonitoringRegister.entry.viralLoadPregnantSubset",
      "short" : "A68 Pregnant subset",
      "definition" : "True when the viral-load result belongs to a pregnant client and is counted in the female total.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A68"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.viralLoadBreastfeedingSubset",
      "path" : "NgHivIntLabMonitoringRegister.entry.viralLoadBreastfeedingSubset",
      "short" : "A69 Breastfeeding subset",
      "definition" : "True when the viral-load result belongs to a breastfeeding client and is counted in the female total.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A69"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.earlyHivDetectionViralLoadResult",
      "path" : "NgHivIntLabMonitoringRegister.entry.earlyHivDetectionViralLoadResult",
      "short" : "A70 HIV Early Detect viral-load result",
      "definition" : "Viral-load result used to confirm suspected acute or recent HIV infection.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A70"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.pocErrorCode",
      "path" : "NgHivIntLabMonitoringRegister.entry.pocErrorCode",
      "short" : "A71 POC error code",
      "definition" : "Machine or human error code recorded for failed point-of-care testing. The source workbook does not provide an error-code catalogue.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A71"
      }]
    },
    {
      "id" : "NgHivIntLabMonitoringRegister.entry.comments",
      "path" : "NgHivIntLabMonitoringRegister.entry.comments",
      "short" : "A72 Comments",
      "definition" : "Additional notes, including specimen issues, invalid results or a need for repeat testing.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-int-lab-monitoring-register-columns",
        "map" : "A72"
      }]
    }]
  }
}

```
