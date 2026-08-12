# Example NG Condition - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example NG Condition**

## Example Condition: Example NG Condition

Profile: [NG Condition](StructureDefinition-ng-condition.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem List Item

**severity**: Moderate (severity modifier)

**code**: Hypertension

**subject**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-11-04 09:00:00+0000 --> 2025-11-04 09:35:00+0000](Encounter-NgEncounter-001.md)

**onset**: 2025-09-01

**recorder**: [Practitioner Kehinde Adebayo ](Practitioner-NgPractitioner-001.md)

**asserter**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "NgCondition-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-condition"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "problem-list-item",
      "display" : "Problem List Item"
    }]
  }],
  "severity" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "6736007",
      "display" : "Moderate (severity modifier)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "59621000",
      "display" : "Essential hypertension"
    }],
    "text" : "Hypertension"
  },
  "subject" : {
    "reference" : "Patient/NgPatient-001"
  },
  "encounter" : {
    "reference" : "Encounter/NgEncounter-001"
  },
  "onsetDateTime" : "2025-09-01",
  "recorder" : {
    "reference" : "Practitioner/NgPractitioner-001"
  },
  "asserter" : {
    "reference" : "Patient/NgPatient-001"
  }
}

```
