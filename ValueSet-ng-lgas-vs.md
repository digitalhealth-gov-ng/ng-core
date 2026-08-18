# NG LGAs VS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG LGAs VS**

## ValueSet: NG LGAs VS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgLgasVS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.48.163 | |

 
The administrative Local Government Areas where a person or a facility is. 

 **References** 

* [NG DR-TB Treatment Register](StructureDefinition-NgDRTBTreatmentRegister.md)
* [NG HIV National ART Register](StructureDefinition-NgHivArtRegister.md)
* [NG HIV Enhanced Adherence Counselling Monitoring Register](StructureDefinition-NgHivEacRegister.md)
* [NG HIV Integrated Laboratory Monitoring Register](StructureDefinition-NgHivIntLabMonitoringRegister.md)
* [NG HIV Pharmacy Daily Worksheet](StructureDefinition-NgHivPharmacyDailyWorksheet.md)
* [NG HIV Tracking Register](StructureDefinition-NgHivTrackingRegister.md)
* [NG TB Community and Facility Referral Register](StructureDefinition-NgTBCommunityFacilityReferralRegister.md)
* [NG TB Laboratory Register](StructureDefinition-NgTBLaboratoryRegister.md)
* [NG TB Presumptive Register](StructureDefinition-NgTBPresumptiveRegister.md)
* [NG TB Specimen Shipment Register](StructureDefinition-NgTBSpecimenShipmentRegister.md)
* [NG Location](StructureDefinition-ng-location.md)
* [NG Organization](StructureDefinition-ng-organization.md)
* [NG Patient](StructureDefinition-ng-patient.md)
* [NG DR-TB Patient Discharge Questionnaire](Questionnaire-ng-drtb-patient-discharge-questionnaire.md)
* [NG HIV Combined Pharmacy Order Form Questionnaire](Questionnaire-ng-hiv-pharmacy-order-questionnaire.md)
* [NG HIV Care and Treatment Transfer Form Questionnaire](Questionnaire-ng-hiv-transfer-form-questionnaire.md)
* [NG Immunization Facility Registration Form](Questionnaire-ng-imm-facility-registration-form.md)
* [NG TB Patient Referral/Transfer Questionnaire](Questionnaire-ng-tb-patient-referral-transfer-questionnaire.md)
* [NG TB Treatment Interruption Tracking Questionnaire](Questionnaire-ng-tb-treatment-interruption-tracking-questionnaire.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ng-lgas-vs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/ValueSet/ng-lgas-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.48.163"
  }],
  "version" : "0.0.0",
  "name" : "NgLgasVS",
  "title" : "NG LGAs VS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T15:57:17+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "The administrative Local Government Areas where a person or a facility is.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-lgas-cs"
    }]
  }
}

```
