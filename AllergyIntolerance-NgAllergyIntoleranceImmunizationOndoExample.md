# Immunization Allergy Example - Ondo - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immunization Allergy Example - Ondo**

## Example AllergyIntolerance: Immunization Allergy Example - Ondo

Profile: [NG Allergy Intolerance](StructureDefinition-ng-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Allergy

**category**: Medication

**criticality**: High Risk

**code**: Neomycin allergy

**patient**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-11-04 12:15:00+0000 --> 2025-11-04 12:25:00+0000](Encounter-NgEncounter-002.md)

**onset**: 2025-06-10

**recordedDate**: 2026-08-03

**recorder**: [Practitioner Kehinde Adebayo ](Practitioner-NgPractitioner-001.md)

**asserter**: [RelatedPerson Ibrahim Abdullahi ](RelatedPerson-NgRelatedPerson-001.md)

**lastOccurrence**: 2025-06-10

**note**: 

> 

The caregiver reported a previous allergic reaction following exposure to a neomycin-containing medicinal product. The allergy should be reviewed before administering vaccines containing trace quantities of neomycin.


### Reactions

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Substance** | **Manifestation** | **Description** | **Onset** | **Severity** | **ExposureRoute** |
| * | Neomycin | Generalized urticaria | Generalized itchy skin rash occurring shortly after exposure. | 2025-06-10 11:30:00+0100 | Moderate | Intramuscular administration |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "NgAllergyIntoleranceImmunizationOndoExample",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-allergy-intolerance"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "type" : "allergy",
  "category" : ["medication"],
  "criticality" : "high",
  "code" : {
    "text" : "Neomycin allergy"
  },
  "patient" : {
    "reference" : "Patient/NgPatient-002"
  },
  "encounter" : {
    "reference" : "Encounter/NgEncounter-002"
  },
  "onsetDateTime" : "2025-06-10",
  "recordedDate" : "2026-08-03",
  "recorder" : {
    "reference" : "Practitioner/NgPractitioner-001"
  },
  "asserter" : {
    "reference" : "RelatedPerson/NgRelatedPerson-001"
  },
  "lastOccurrence" : "2025-06-10",
  "note" : [{
    "text" : "The caregiver reported a previous allergic reaction following exposure\nto a neomycin-containing medicinal product. The allergy should be\nreviewed before administering vaccines containing trace quantities\nof neomycin."
  }],
  "reaction" : [{
    "substance" : {
      "text" : "Neomycin"
    },
    "manifestation" : [{
      "text" : "Generalized urticaria"
    }],
    "description" : "Generalized itchy skin rash occurring shortly after exposure.",
    "onset" : "2025-06-10T11:30:00+01:00",
    "severity" : "moderate",
    "exposureRoute" : {
      "text" : "Intramuscular administration"
    }
  }]
}

```
