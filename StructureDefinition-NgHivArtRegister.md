# NG HIV National ART Register - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV National ART Register**

## Logical Model: NG HIV National ART Register 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgHivArtRegister | *Version*:0.0.0 |
| Draft as of 2026-08-17 | *Computable Name*:NgHivArtRegister |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.3 | |

 
Logical model for the patient-level Nigeria National ART Register. One model instance represents a facility cohort page for a reporting month and contains repeatable client entries corresponding to register rows A1 through A35. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-NgHivArtRegister.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NgHivArtRegister.csv), [Excel](StructureDefinition-NgHivArtRegister.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NgHivArtRegister",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgHivArtRegister",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.3"
  }],
  "version" : "0.0.0",
  "name" : "NgHivArtRegister",
  "title" : "NG HIV National ART Register",
  "status" : "draft",
  "date" : "2026-08-17T07:55:48+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    },
    {
      "system" : "email",
      "value" : "emeka2015@gmail.com"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "lekeojewale@gmail.com",
      "use" : "work"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "emeka2015@gmail.com",
      "use" : "work"
    }]
  }],
  "description" : "Logical model for the patient-level Nigeria National ART Register. One model\ninstance represents a facility cohort page for a reporting month and contains\nrepeatable client entries corresponding to register rows A1 through A35.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "NgHivArtRegisterColumns",
    "uri" : "urn:ng:hiv-art-register:2025",
    "name" : "National ART Register Column Mapping",
    "comment" : "Maps logical-model elements to the printed A1–A35 National ART Register columns."
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgHivArtRegister",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "NgHivArtRegister",
      "path" : "NgHivArtRegister",
      "short" : "NG HIV National ART Register",
      "definition" : "Logical model for the patient-level Nigeria National ART Register. One model\ninstance represents a facility cohort page for a reporting month and contains\nrepeatable client entries corresponding to register rows A1 through A35."
    },
    {
      "id" : "NgHivArtRegister.identifier",
      "path" : "NgHivArtRegister.identifier",
      "short" : "Register identifier",
      "definition" : "Identifier assigned to the facility ART register cohort page or electronic equivalent.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "NgHivArtRegister.facility",
      "path" : "NgHivArtRegister.facility",
      "short" : "Facility reference",
      "definition" : "FHIR reference to the facility maintaining the register.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "NgHivArtRegister.facilityName",
      "path" : "NgHivArtRegister.facilityName",
      "short" : "Facility name",
      "definition" : "Name of the facility maintaining the register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "Header: Facility name"
      }]
    },
    {
      "id" : "NgHivArtRegister.lga",
      "path" : "NgHivArtRegister.lga",
      "short" : "LGA",
      "definition" : "Local Government Area in which the facility is located.",
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
        "identity" : "NgHivArtRegisterColumns",
        "map" : "Header: LGA"
      }]
    },
    {
      "id" : "NgHivArtRegister.state",
      "path" : "NgHivArtRegister.state",
      "short" : "State",
      "definition" : "State in which the facility is located.",
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
        "identity" : "NgHivArtRegisterColumns",
        "map" : "Header: State"
      }]
    },
    {
      "id" : "NgHivArtRegister.reportingPeriod",
      "path" : "NgHivArtRegister.reportingPeriod",
      "short" : "Reporting month and year",
      "definition" : "The monthly cohort period represented by the register page.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "Header: Month and Year"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry",
      "path" : "NgHivArtRegister.entry",
      "short" : "ART register entry",
      "definition" : "One patient-level row of the National ART Register.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.subject",
      "path" : "NgHivArtRegister.entry.subject",
      "short" : "Patient reference",
      "definition" : "Reference to the corresponding FHIR Patient when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-patient"]
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.serialNumber",
      "path" : "NgHivArtRegister.entry.serialNumber",
      "short" : "A1 Serial number",
      "definition" : "Monthly serial number beginning from one.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A1"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.hospitalNumber",
      "path" : "NgHivArtRegister.entry.hospitalNumber",
      "short" : "A2 Hospital number",
      "definition" : "Client hospital number.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A2"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.uniqueId",
      "path" : "NgHivArtRegister.entry.uniqueId",
      "short" : "A3 Unique ID",
      "definition" : "HIV program unique identifier.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A3"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.ancNumber",
      "path" : "NgHivArtRegister.entry.ancNumber",
      "short" : "A4 ANC number",
      "definition" : "Antenatal-care number for a pregnant client registered for ANC.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A4"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.surname",
      "path" : "NgHivArtRegister.entry.surname",
      "short" : "A5 Surname",
      "definition" : "Client surname.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A5 Surname"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.otherNames",
      "path" : "NgHivArtRegister.entry.otherNames",
      "short" : "A5 Other names",
      "definition" : "Client first and other names.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A5 Other names"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.address",
      "path" : "NgHivArtRegister.entry.address",
      "short" : "A6 Address",
      "definition" : "Descriptive residential address.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A6"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.sex",
      "path" : "NgHivArtRegister.entry.sex",
      "short" : "A7 Sex",
      "definition" : "Administrative sex recorded in the register.",
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
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A7"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.kpTypology",
      "path" : "NgHivArtRegister.entry.kpTypology",
      "short" : "A8 KP typology",
      "definition" : "Key-population typology, when applicable.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-kp-typology-vs"
      },
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A8"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.dateOfBirth",
      "path" : "NgHivArtRegister.entry.dateOfBirth",
      "short" : "A9 Date of birth",
      "definition" : "Client date of birth.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A9"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.ageValue",
      "path" : "NgHivArtRegister.entry.ageValue",
      "short" : "A10 Age value",
      "definition" : "Age at enrolment or ART start.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A10"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.ageUnit",
      "path" : "NgHivArtRegister.entry.ageUnit",
      "short" : "A10 Age unit",
      "definition" : "years or months.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/units-of-time"
      }
    },
    {
      "id" : "NgHivArtRegister.entry.careEntryPoint",
      "path" : "NgHivArtRegister.entry.careEntryPoint",
      "short" : "A11 Care entry point",
      "definition" : "Point through which the client entered HIV care.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-care-entry-point-vs"
      },
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A11"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.transferIn",
      "path" : "NgHivArtRegister.entry.transferIn",
      "short" : "A12 Transfer in",
      "definition" : "True when the client was previously enrolled on ART in another facility.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A12"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.confirmedHivTestDate",
      "path" : "NgHivArtRegister.entry.confirmedHivTestDate",
      "short" : "A13 Date of confirmed HIV test",
      "definition" : "Date the client was confirmed HIV positive.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A13"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.dateEnrolledInCare",
      "path" : "NgHivArtRegister.entry.dateEnrolledInCare",
      "short" : "A14 Date enrolled in care",
      "definition" : "Date the client was enrolled in HIV care.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A14"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.pregnancyStatus",
      "path" : "NgHivArtRegister.entry.pregnancyStatus",
      "short" : "A15 Pregnancy status",
      "definition" : "Pregnancy status at ART initiation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-pregnancy-status-vs"
      },
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A15"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.breastfeeding",
      "path" : "NgHivArtRegister.entry.breastfeeding",
      "short" : "A15 Breastfeeding status",
      "definition" : "Whether the client was breastfeeding at ART initiation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A15"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.whoClinicalStage",
      "path" : "NgHivArtRegister.entry.whoClinicalStage",
      "short" : "A16 WHO clinical stage",
      "definition" : "WHO clinical stage at ART initiation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-who-stage-vs"
      },
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A16"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.weightKg",
      "path" : "NgHivArtRegister.entry.weightKg",
      "short" : "A17 Weight",
      "definition" : "Weight in kilograms at enrolment or ART initiation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A17"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.heightLengthValue",
      "path" : "NgHivArtRegister.entry.heightLengthValue",
      "short" : "A18 Height or length",
      "definition" : "Height or length at enrolment or ART initiation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A18"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.heightLengthUnit",
      "path" : "NgHivArtRegister.entry.heightLengthUnit",
      "short" : "A18 Height or length unit",
      "definition" : "m or cm.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.bodyMassIndex",
      "path" : "NgHivArtRegister.entry.bodyMassIndex",
      "short" : "A19 BMI",
      "definition" : "Body mass index at ART initiation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A19"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.midUpperArmCircumferenceCm",
      "path" : "NgHivArtRegister.entry.midUpperArmCircumferenceCm",
      "short" : "A19 MUAC",
      "definition" : "Mid-upper-arm circumference in centimetres at ART initiation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A19"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.bmiOrMuacSourceText",
      "path" : "NgHivArtRegister.entry.bmiOrMuacSourceText",
      "short" : "A19 BMI or MUAC source text",
      "definition" : "Legacy combined BMI/MUAC answer retained when the source does not distinguish the metric.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A19 legacy combined value"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.tbStatus",
      "path" : "NgHivArtRegister.entry.tbStatus",
      "short" : "A20 TB status",
      "definition" : "Combined TB screening, preventive-therapy, diagnostic or treatment status.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-art-register-tb-status-vs"
      },
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A20"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.tbStatusSourceText",
      "path" : "NgHivArtRegister.entry.tbStatusSourceText",
      "short" : "A20 TB status source text",
      "definition" : "Legacy free-text answer retained when the source Questionnaire has not yet been terminology-bound.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.cd4Count",
      "path" : "NgHivArtRegister.entry.cd4Count",
      "short" : "A21 CD4 count",
      "definition" : "CD4 count in cells/mm3 at enrolment or ART initiation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A21"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.tptType",
      "path" : "NgHivArtRegister.entry.tptType",
      "short" : "A22 TPT type",
      "definition" : "TB preventive-therapy regimen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-tb-preventive-therapy-vs"
      },
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A22 row 1"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.tptStartDate",
      "path" : "NgHivArtRegister.entry.tptStartDate",
      "short" : "A22 TPT start date",
      "definition" : "Date TB preventive therapy commenced.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A22 row 2"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.tptStopDate",
      "path" : "NgHivArtRegister.entry.tptStopDate",
      "short" : "A22 TPT stop date",
      "definition" : "Date TB preventive therapy stopped or completed.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A22 row 3"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.tptOutcome",
      "path" : "NgHivArtRegister.entry.tptOutcome",
      "short" : "A22 TPT outcome",
      "definition" : "Outcome of TB preventive therapy.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-art-register-tpt-outcome-vs"
      },
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A22 row 4"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.ctxStartDate",
      "path" : "NgHivArtRegister.entry.ctxStartDate",
      "short" : "A23 CTX start date",
      "definition" : "Date co-trimoxazole prophylaxis commenced.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A23 row 1"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.ctxDose",
      "path" : "NgHivArtRegister.entry.ctxDose",
      "short" : "A23 CTX dose",
      "definition" : "Co-trimoxazole dose.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A23 row 2"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.tbTreatmentStartDate",
      "path" : "NgHivArtRegister.entry.tbTreatmentStartDate",
      "short" : "A24 TB treatment start date",
      "definition" : "Date active-TB treatment commenced.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A24 row 1"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.tbTreatmentStopDate",
      "path" : "NgHivArtRegister.entry.tbTreatmentStopDate",
      "short" : "A24 TB treatment stop date",
      "definition" : "Date active-TB treatment stopped.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A24 row 2"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.cryptococcalStatus",
      "path" : "NgHivArtRegister.entry.cryptococcalStatus",
      "short" : "A25 Cryptococcal status",
      "definition" : "Cryptococcal screening or treatment status.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-art-register-cryptococcal-status-vs"
      },
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A25"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.cryptococcalTreatmentStartDate",
      "path" : "NgHivArtRegister.entry.cryptococcalTreatmentStartDate",
      "short" : "A26 Cryptococcal treatment start date",
      "definition" : "Date cryptococcal-meningitis treatment commenced.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A26 row 1"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.cryptococcalTreatmentStopDate",
      "path" : "NgHivArtRegister.entry.cryptococcalTreatmentStopDate",
      "short" : "A26 Cryptococcal treatment stop date",
      "definition" : "Date cryptococcal-meningitis treatment stopped or completed.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A26 row 2"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.cervicalCancerStatus",
      "path" : "NgHivArtRegister.entry.cervicalCancerStatus",
      "short" : "A27 Cervical cancer screening status",
      "definition" : "Combined screening workflow status.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-art-register-cervical-status-vs"
      },
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A27 row 1"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.cervicalCancerTreatment",
      "path" : "NgHivArtRegister.entry.cervicalCancerTreatment",
      "short" : "A27 Cervical cancer treatment",
      "definition" : "Treatment provided following a positive screening result.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-cervical-cancer-treatment-received-vs"
      },
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A27 row 2"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.cervicalCancerOtherFinding",
      "path" : "NgHivArtRegister.entry.cervicalCancerOtherFinding",
      "short" : "A27 Other cervical finding",
      "definition" : "Narrative for code 9, other finding.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.hepatitisStatus",
      "path" : "NgHivArtRegister.entry.hepatitisStatus",
      "short" : "A28 Hepatitis screening result",
      "definition" : "Hepatitis B or C screening or HCV-treatment status.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-art-register-hepatitis-status-vs"
      },
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A28"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.artStartDate",
      "path" : "NgHivArtRegister.entry.artStartDate",
      "short" : "A29 ART start date",
      "definition" : "Date ART commenced.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A29"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.regimenAtArtStart",
      "path" : "NgHivArtRegister.entry.regimenAtArtStart",
      "short" : "A30 Regimen at ART start",
      "definition" : "Register regimen code at ART commencement.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-art-register-regimen-vs"
      },
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A30"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.regimenAtArtStartText",
      "path" : "NgHivArtRegister.entry.regimenAtArtStartText",
      "short" : "A30 Regimen at ART start source text",
      "definition" : "Legacy regimen description retained when the source Questionnaire does not supply the register code.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.artRestartDate",
      "path" : "NgHivArtRegister.entry.artRestartDate",
      "short" : "A31 ART restart date",
      "definition" : "Date ART restarted following a treatment interruption.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A31"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.regimenAtArtRestart",
      "path" : "NgHivArtRegister.entry.regimenAtArtRestart",
      "short" : "A32 Regimen at ART restart",
      "definition" : "Register regimen code at ART restart.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-art-register-regimen-vs"
      },
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A32"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.regimenAtArtRestartText",
      "path" : "NgHivArtRegister.entry.regimenAtArtRestartText",
      "short" : "A32 Regimen at ART restart source text",
      "definition" : "Legacy regimen description retained when the source does not supply the register code.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.dsdStatus",
      "path" : "NgHivArtRegister.entry.dsdStatus",
      "short" : "A33 DSD status",
      "definition" : "First differentiated-service-delivery model to which the client was devolved, or non-devolved/not eligible.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-art-register-dsd-status-vs"
      },
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A33 row 1"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.dateDevolved",
      "path" : "NgHivArtRegister.entry.dateDevolved",
      "short" : "A33 Date devolved",
      "definition" : "Date the client was first devolved to the DSD model.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A33 row 2"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.sixMonthViralLoadResult",
      "path" : "NgHivArtRegister.entry.sixMonthViralLoadResult",
      "short" : "A34 Six-month viral-load result",
      "definition" : "Routine viral-load result approximately six months after ART initiation, in copies/mL.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A34 row 1"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.sixMonthViralLoadResultReceivedDate",
      "path" : "NgHivArtRegister.entry.sixMonthViralLoadResultReceivedDate",
      "short" : "A34 Date viral-load result received",
      "definition" : "Date the six-month viral-load result was received.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A34 row 2"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.sixMonthOutcome",
      "path" : "NgHivArtRegister.entry.sixMonthOutcome",
      "short" : "A35 Six-month outcome",
      "definition" : "Transfer out, stopped treatment, dead or lost to follow-up.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-art-register-outcome-vs"
      },
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A35 row 1"
      }]
    },
    {
      "id" : "NgHivArtRegister.entry.sixMonthOutcomeDate",
      "path" : "NgHivArtRegister.entry.sixMonthOutcomeDate",
      "short" : "A35 Date of outcome",
      "definition" : "Date the outcome became known to the facility.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "NgHivArtRegisterColumns",
        "map" : "A35 row 2"
      }]
    }]
  }
}

```
