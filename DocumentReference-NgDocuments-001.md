# Nigeria Immunization Document Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Immunization Document Example**

## Example DocumentReference: Nigeria Immunization Document Example

Profile: [Nigeria Document Reference](StructureDefinition-ng-documents.md)

**status**: Current

**docStatus**: Final

**type**: Appends

**category**: Immunization record

**subject**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**date**: 2026-08-03 07:30:00+0100

**author**: [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md)

**authenticator**: [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md)

**custodian**: [Organization Kano Central Hospital Pharmacy](Organization-NgOrganization-002.md)

> **content**

### Attachments

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** | **Creation** |
| * | application/pdf | [https://nphcda.gov.ng/bhcpf-validated-list-tiered/](https://nphcda.gov.ng/bhcpf-validated-list-tiered/) | Immunization Record | 2026-08-03 07:25:00+0100 |


### Contexts

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Encounter** | **Period** | **FacilityType** | **PracticeSetting** | **SourcePatientInfo** |
| * | [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-11-04 12:15:00+0000 --> 2025-11-04 12:25:00+0000](Encounter-NgEncounter-002.md) | 2026-08-03 07:00:00+0100 --> 2026-08-03 07:30:00+0100 | Primary health care facility | Routine immunization service | [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md) |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "NgDocuments-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-documents"]
  },
  "status" : "current",
  "docStatus" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/document-relationship-type",
      "code" : "appends",
      "display" : "Appends"
    }]
  },
  "category" : [{
    "text" : "Immunization record"
  }],
  "subject" : {
    "reference" : "Patient/NgPatient-002"
  },
  "date" : "2026-08-03T07:30:00+01:00",
  "author" : [{
    "reference" : "Practitioner/NgPractitioner-002"
  }],
  "authenticator" : {
    "reference" : "Practitioner/NgPractitioner-002"
  },
  "custodian" : {
    "reference" : "Organization/NgOrganization-002"
  },
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "url" : "https://nphcda.gov.ng/bhcpf-validated-list-tiered/",
      "title" : "Immunization Record",
      "creation" : "2026-08-03T07:25:00+01:00"
    }
  }],
  "context" : {
    "encounter" : [{
      "reference" : "Encounter/NgEncounter-002"
    }],
    "period" : {
      "start" : "2026-08-03T07:00:00+01:00",
      "end" : "2026-08-03T07:30:00+01:00"
    },
    "facilityType" : {
      "text" : "Primary health care facility"
    },
    "practiceSetting" : {
      "text" : "Routine immunization service"
    },
    "sourcePatientInfo" : {
      "reference" : "Patient/NgPatient-002"
    }
  }
}

```
