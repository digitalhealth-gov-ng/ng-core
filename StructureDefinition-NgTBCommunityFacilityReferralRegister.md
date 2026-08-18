# NG TB Community and Facility Referral Register - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG TB Community and Facility Referral Register**

## Logical Model: NG TB Community and Facility Referral Register 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBCommunityFacilityReferralRegister | *Version*:0.0.0 |
| Draft as of 2026-08-18 | *Computable Name*:NgTBCommunityFacilityReferralRegister |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.42.76 | |

 
Logical model for the Nigeria National Tuberculosis and Leprosy Control Programme Tuberculosis Referral Register for Community and Facility. One model instance represents one site-level monthly referral register and contains repeatable client entries covering demographics, referral date and reason, receiving facility, confirmation of TB, treatment initiation and remarks. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ng.gov.digitalhealth.fhir-ig|current/StructureDefinition/StructureDefinition-NgTBCommunityFacilityReferralRegister.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NgTBCommunityFacilityReferralRegister.csv), [Excel](StructureDefinition-NgTBCommunityFacilityReferralRegister.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NgTBCommunityFacilityReferralRegister",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBCommunityFacilityReferralRegister",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.42.76"
  }],
  "version" : "0.0.0",
  "name" : "NgTBCommunityFacilityReferralRegister",
  "title" : "NG TB Community and Facility Referral Register",
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
  "description" : "Logical model for the Nigeria National Tuberculosis and Leprosy Control\nProgramme Tuberculosis Referral Register for Community and Facility.\nOne model instance represents one site-level monthly referral register\nand contains repeatable client entries covering demographics, referral\ndate and reason, receiving facility, confirmation of TB, treatment\ninitiation and remarks.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "ng-tb-community-facility-referral-register-columns",
    "uri" : "urn:ng:ntblcp:tb14:community-facility-referral-register",
    "name" : "NG TB Community and Facility Referral Register Column Mapping",
    "comment" : "Maps NgTBCommunityFacilityReferralRegister logical-model elements to the\nprinted Tuberculosis Referral Register for Community and Facility."
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/NgTBCommunityFacilityReferralRegister",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "NgTBCommunityFacilityReferralRegister",
      "path" : "NgTBCommunityFacilityReferralRegister",
      "short" : "NG TB Community and Facility Referral Register",
      "definition" : "Logical model for the Nigeria National Tuberculosis and Leprosy Control\nProgramme Tuberculosis Referral Register for Community and Facility.\nOne model instance represents one site-level monthly referral register\nand contains repeatable client entries covering demographics, referral\ndate and reason, receiving facility, confirmation of TB, treatment\ninitiation and remarks."
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.identifier",
      "path" : "NgTBCommunityFacilityReferralRegister.identifier",
      "short" : "Register identifier",
      "definition" : "Identifier assigned to the community and facility TB referral register or its electronic equivalent.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.site",
      "path" : "NgTBCommunityFacilityReferralRegister.site",
      "short" : "Site reference",
      "definition" : "Reference to the site maintaining the referral register, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.siteName",
      "path" : "NgTBCommunityFacilityReferralRegister.siteName",
      "short" : "Name of site",
      "definition" : "Name of the site maintaining the TB referral register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "Header: Name of site"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.state",
      "path" : "NgTBCommunityFacilityReferralRegister.state",
      "short" : "State",
      "definition" : "State in which the reporting site is located.",
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
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "Header: State"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.lga",
      "path" : "NgTBCommunityFacilityReferralRegister.lga",
      "short" : "LGA",
      "definition" : "Local Government Area in which the reporting site is located.",
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
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "Header: LGA"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.ward",
      "path" : "NgTBCommunityFacilityReferralRegister.ward",
      "short" : "Ward",
      "definition" : "Administrative ward in which the reporting site is located.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-wards-vs"
      },
      "mapping" : [{
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "Header: Ward"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.reportingPeriod",
      "path" : "NgTBCommunityFacilityReferralRegister.reportingPeriod",
      "short" : "Reporting period",
      "definition" : "Monthly reporting period represented by the Month and Year fields in the source register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "Header: Month / Year"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.entry",
      "path" : "NgTBCommunityFacilityReferralRegister.entry",
      "short" : "Referral register entry",
      "definition" : "One client-level referral row in the community and facility TB referral register.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.entry.subject",
      "path" : "NgTBCommunityFacilityReferralRegister.entry.subject",
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
      "id" : "NgTBCommunityFacilityReferralRegister.entry.serialNumber",
      "path" : "NgTBCommunityFacilityReferralRegister.entry.serialNumber",
      "short" : "Serial number",
      "definition" : "Sequential number assigned to the client within the register.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mapping" : [{
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "S/N"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.entry.clientName",
      "path" : "NgTBCommunityFacilityReferralRegister.entry.clientName",
      "short" : "Name of client",
      "definition" : "Full name of the client referred for TB services.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "Name of Client"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.entry.address",
      "path" : "NgTBCommunityFacilityReferralRegister.entry.address",
      "short" : "Address in full",
      "definition" : "Full residential address of the client.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "Address in full"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.entry.ageYears",
      "path" : "NgTBCommunityFacilityReferralRegister.entry.ageYears",
      "short" : "Age",
      "definition" : "Client age in years.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "Age (Yr)"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.entry.sex",
      "path" : "NgTBCommunityFacilityReferralRegister.entry.sex",
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
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "Sex (M/F)"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.entry.telephoneNumber",
      "path" : "NgTBCommunityFacilityReferralRegister.entry.telephoneNumber",
      "short" : "Telephone number",
      "definition" : "Client telephone number.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "Telephone number"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.entry.referralDate",
      "path" : "NgTBCommunityFacilityReferralRegister.entry.referralDate",
      "short" : "Date of referral",
      "definition" : "Date the client was referred for TB-related services.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "Date of Referral"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.entry.referralReason",
      "path" : "NgTBCommunityFacilityReferralRegister.entry.referralReason",
      "short" : "Reason for referral",
      "definition" : "Reason the client was referred.\n\nSource codes are:\nD = Diagnosis;\nTx = Treatment;\nADR = Adverse Reaction to drugs;\nO = Other.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "Reason for referral"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.entry.otherReferralReason",
      "path" : "NgTBCommunityFacilityReferralRegister.entry.otherReferralReason",
      "short" : "Other reason for referral",
      "definition" : "Narrative description when referralReason is Other.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.entry.receivingFacility",
      "path" : "NgTBCommunityFacilityReferralRegister.entry.receivingFacility",
      "short" : "Receiving facility reference",
      "definition" : "Reference to the health facility to which the client was referred, when available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-organization"]
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.entry.receivingFacilityName",
      "path" : "NgTBCommunityFacilityReferralRegister.entry.receivingFacilityName",
      "short" : "Name of receiving facility",
      "definition" : "Name of the facility to which the client was referred.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "Name of receiving facility"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.entry.tbConfirmed",
      "path" : "NgTBCommunityFacilityReferralRegister.entry.tbConfirmed",
      "short" : "TB confirmed",
      "definition" : "Indicates whether TB was confirmed following the referral.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "TB Confirmed (Yes/No)"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.entry.treatmentStartDate",
      "path" : "NgTBCommunityFacilityReferralRegister.entry.treatmentStartDate",
      "short" : "Date treatment started",
      "definition" : "Date TB treatment was started following referral, when applicable.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "Date Treatment started"
      }]
    },
    {
      "id" : "NgTBCommunityFacilityReferralRegister.entry.remarks",
      "path" : "NgTBCommunityFacilityReferralRegister.entry.remarks",
      "short" : "Remarks",
      "definition" : "Additional information regarding the referral, diagnostic outcome, treatment initiation or follow-up.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "ng-tb-community-facility-referral-register-columns",
        "map" : "Remarks"
      }]
    }]
  }
}

```
