# NG HIV Enhanced Adherence Counselling Monitoring Register - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Enhanced Adherence Counselling Monitoring Register**

## Logical Model: NG HIV Enhanced Adherence Counselling Monitoring Register 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgHivEacRegister | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgHivEacRegister |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.4 | |

 
Logical model for the patient-level Nigeria Enhanced Adherence Counselling Monitoring Register. One model instance represents one facility monthly cohort page and contains repeatable client entries corresponding to printed columns A1 through A24. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-NgHivEacRegister.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NgHivEacRegister.csv), [Excel](StructureDefinition-NgHivEacRegister.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NgHivEacRegister",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgHivEacRegister",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.4"
  }],
  "version" : "0.0.0",
  "name" : "NgHivEacRegister",
  "title" : "NG HIV Enhanced Adherence Counselling Monitoring Register",
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
  "description" : "Logical model for the patient-level Nigeria Enhanced Adherence Counselling\nMonitoring Register. One model instance represents one facility monthly cohort\npage and contains repeatable client entries corresponding to printed columns\nA1 through A24.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ng-hiv-eac-register-columns",
    "uri" : "urn:ng:hiv-eac-monitoring-register:2025",
    "name" : "NG HIV EAC Monitoring Register Column Mapping",
    "comment" : "Maps logical-model elements to the printed A1–A24 Enhanced Adherence Counselling Monitoring Register columns."
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgHivEacRegister",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "NgHivEacRegister",
      "path" : "NgHivEacRegister",
      "short" : "NG HIV Enhanced Adherence Counselling Monitoring Register",
      "definition" : "Logical model for the patient-level Nigeria Enhanced Adherence Counselling\nMonitoring Register. One model instance represents one facility monthly cohort\npage and contains repeatable client entries corresponding to printed columns\nA1 through A24."
    },
    {
      "id" : "NgHivEacRegister.identifier",
      "path" : "NgHivEacRegister.identifier",
      "short" : "Register identifier",
      "definition" : "Identifier assigned to the monthly EAC register page or its electronic equivalent.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "NgHivEacRegister.facility",
      "path" : "NgHivEacRegister.facility",
      "short" : "Facility reference",
      "definition" : "Reference to the facility maintaining the EAC register, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "NgHivEacRegister.facilityName",
      "path" : "NgHivEacRegister.facilityName",
      "short" : "Facility name",
      "definition" : "Official name of the facility providing Enhanced Adherence Counselling services.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "Header: Facility"
      }]
    },
    {
      "id" : "NgHivEacRegister.lga",
      "path" : "NgHivEacRegister.lga",
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
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "Header: LGA"
      }]
    },
    {
      "id" : "NgHivEacRegister.state",
      "path" : "NgHivEacRegister.state",
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
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "Header: State"
      }]
    },
    {
      "id" : "NgHivEacRegister.reportingPeriod",
      "path" : "NgHivEacRegister.reportingPeriod",
      "short" : "Registration month and year",
      "definition" : "Monthly cohort period. The month should correspond to the month the qualifying viral-load result was received at the facility.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "Header: Month and Year"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry",
      "path" : "NgHivEacRegister.entry",
      "short" : "EAC register entry",
      "definition" : "One patient-level row of the Enhanced Adherence Counselling Monitoring Register.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.subject",
      "path" : "NgHivEacRegister.entry.subject",
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
      "id" : "NgHivEacRegister.entry.serialNumber",
      "path" : "NgHivEacRegister.entry.serialNumber",
      "short" : "A1 Serial number",
      "definition" : "Sequential number assigned to the client within the monthly register page.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A1"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.hospitalNumber",
      "path" : "NgHivEacRegister.entry.hospitalNumber",
      "short" : "A2 Hospital number",
      "definition" : "Facility hospital or unit number assigned to the client.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A2"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.uniqueId",
      "path" : "NgHivEacRegister.entry.uniqueId",
      "short" : "A3 Unique ID",
      "definition" : "National HIV program ART unique identifier.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A3"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.clientName",
      "path" : "NgHivEacRegister.entry.clientName",
      "short" : "A4 Name",
      "definition" : "Client full name, recorded surname first followed by other names.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A4"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.sex",
      "path" : "NgHivEacRegister.entry.sex",
      "short" : "A5–A6 Sex",
      "definition" : "Client sex represented by the printed male or female columns.",
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
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A5 Male / A6 Female"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.ageValue",
      "path" : "NgHivEacRegister.entry.ageValue",
      "short" : "A7 Age value",
      "definition" : "Client age at registration into the EAC monthly cohort.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A7"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.ageUnit",
      "path" : "NgHivEacRegister.entry.ageUnit",
      "short" : "A7 Age unit",
      "definition" : "Age in years, or months when the client is younger than one year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/units-of-time"
      },
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A7 age unit implied by SOP"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.artStartDate",
      "path" : "NgHivEacRegister.entry.artStartDate",
      "short" : "A8 ART start date",
      "definition" : "Date the client commenced antiretroviral therapy.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A8"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.currentArtRegimen",
      "path" : "NgHivEacRegister.entry.currentArtRegimen",
      "short" : "A9 Current ART regimen",
      "definition" : "Register ART regimen code at enrolment into EAC.",
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
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A9"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.currentArtRegimenText",
      "path" : "NgHivEacRegister.entry.currentArtRegimenText",
      "short" : "A9 Current ART regimen source text",
      "definition" : "Regimen description retained when the source does not provide a valid register code.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A9 legacy or uncoded value"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.qualifyingViralLoadResult",
      "path" : "NgHivEacRegister.entry.qualifyingViralLoadResult",
      "short" : "A10 Qualifying viral-load result",
      "definition" : "Most recent viral-load result prompting EAC registration, in copies/mL. The register is intended for results greater than 50 copies/mL.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A10 result"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.qualifyingViralLoadResultReceivedDate",
      "path" : "NgHivEacRegister.entry.qualifyingViralLoadResultReceivedDate",
      "short" : "A10 Date qualifying result received",
      "definition" : "Date the qualifying viral-load result was received at the facility. This date determines the monthly cohort.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A10 date received in facility"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.indexTestingOffered",
      "path" : "NgHivEacRegister.entry.indexTestingOffered",
      "short" : "A11–A12 Offered index testing",
      "definition" : "True when index testing was offered; false when it was not offered.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A11 Yes / A12 No"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.eacSession",
      "path" : "NgHivEacRegister.entry.eacSession",
      "short" : "A13–A16 EAC session",
      "definition" : "Enhanced Adherence Counselling session delivered to the client.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.eacSession.sequence",
      "path" : "NgHivEacRegister.entry.eacSession.sequence",
      "short" : "EAC session number",
      "definition" : "EAC session sequence. EAC-1, EAC-2 and EAC-3 map to A13–A15; later sessions map to A16.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-eac-given-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A13 first EAC / A14 second EAC / A15 third EAC / A16 additional EAC"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.eacSession.date",
      "path" : "NgHivEacRegister.entry.eacSession.date",
      "short" : "EAC session date",
      "definition" : "Date the EAC session was delivered.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A13–A16"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.postEacViralLoadSampleCollectionDate",
      "path" : "NgHivEacRegister.entry.postEacViralLoadSampleCollectionDate",
      "short" : "A17 Date post-EAC VL sample collected",
      "definition" : "Date the post-EAC viral-load sample was collected after the counselling sequence.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A17"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.postEacViralLoadResult",
      "path" : "NgHivEacRegister.entry.postEacViralLoadResult",
      "short" : "A18 Post-EAC repeat viral-load result",
      "definition" : "Post-EAC repeat viral-load result in copies/mL.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A18 result"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.postEacViralLoadResultReceivedDate",
      "path" : "NgHivEacRegister.entry.postEacViralLoadResultReceivedDate",
      "short" : "A18 Date post-EAC result received",
      "definition" : "Date the post-EAC viral-load result was received at the facility.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A18 date received"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.suspectedVirologicFailureCause",
      "path" : "NgHivEacRegister.entry.suspectedVirologicFailureCause",
      "short" : "A19 Suspected cause of virologic failure",
      "definition" : "One or more suspected causes selected from the codes printed on the register.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-hiv-eac-register-virologic-failure-cause-vs"
      },
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A19"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.suspectedVirologicFailureOther",
      "path" : "NgHivEacRegister.entry.suspectedVirologicFailureOther",
      "short" : "A19 Other suspected cause",
      "definition" : "Narrative description when code 3, other suspected cause, is selected.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A19 code 3 narrative"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.regimenSwitched",
      "path" : "NgHivEacRegister.entry.regimenSwitched",
      "short" : "A20–A21 Regimen switched",
      "definition" : "True when the ART regimen was switched following EAC; false when it was not switched.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A20 Yes / A21 No"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.regimenSwitchDate",
      "path" : "NgHivEacRegister.entry.regimenSwitchDate",
      "short" : "A20 Date regimen switched",
      "definition" : "Date the regimen switch occurred when regimenSwitched is true.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A20 date"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.newArtRegimen",
      "path" : "NgHivEacRegister.entry.newArtRegimen",
      "short" : "A22 New ART regimen",
      "definition" : "Register ART regimen code after switch or substitution.",
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
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A22"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.newArtRegimenText",
      "path" : "NgHivEacRegister.entry.newArtRegimenText",
      "short" : "A22 New ART regimen source text",
      "definition" : "Regimen description retained when a valid register code is unavailable.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A22 legacy or uncoded value"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.oneYearRepeatViralLoadResult",
      "path" : "NgHivEacRegister.entry.oneYearRepeatViralLoadResult",
      "short" : "A23 Repeat viral-load result one year later",
      "definition" : "Viral-load result obtained approximately one year after EAC and any regimen switch, in copies/mL.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A23 result"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.oneYearRepeatViralLoadResultReceivedDate",
      "path" : "NgHivEacRegister.entry.oneYearRepeatViralLoadResultReceivedDate",
      "short" : "A23 Date one-year repeat result received",
      "definition" : "Date the one-year repeat viral-load result was received at the facility.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A23 date received"
      }]
    },
    {
      "id" : "NgHivEacRegister.entry.comments",
      "path" : "NgHivEacRegister.entry.comments",
      "short" : "A24 Comments",
      "definition" : "Additional notes on EAC completion or stoppage, missed sessions, result delays, regimen changes, follow-up outcomes or further action plans.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-hiv-eac-register-columns",
        "map" : "A24"
      }]
    }]
  }
}

```
