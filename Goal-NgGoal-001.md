# Example NG Goal - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example NG Goal**

## Example Goal: Example NG Goal

Profile: [NG Goal](StructureDefinition-ng-goal.md)

**lifecycleStatus**: Active

**achievementStatus**: Improving

**category**: Chronic disease management

**priority**: High Priority

**description**: Control systolic blood pressure

**subject**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)

**start**: 2025-11-11

### Targets

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Measure** | **Detail[x]** | **Due[x]** |
| * | Bisacodyl [Mass/mass] in Stool | 120 mmHg | 2025-12-23 |



## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "NgGoal-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-goal"]
  },
  "lifecycleStatus" : "active",
  "achievementStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/goal-achievement",
      "code" : "improving"
    }]
  },
  "category" : [{
    "text" : "Chronic disease management"
  }],
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/goal-priority",
      "code" : "high-priority"
    }]
  },
  "description" : {
    "text" : "Control systolic blood pressure"
  },
  "subject" : {
    "reference" : "Patient/NgPatient-001"
  },
  "startDate" : "2025-11-11",
  "target" : [{
    "measure" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "10889-4",
        "display" : "Bisacodyl [Mass/mass] in Stool"
      }]
    },
    "detailQuantity" : {
      "value" : 120,
      "unit" : "mmHg"
    },
    "dueDate" : "2025-12-23"
  }]
}

```
