# Example NG CarePlan - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example NG CarePlan**

## Example CarePlan: Example NG CarePlan

Profile: [NG CarePlan](StructureDefinition-ng-care-plan.md)

**status**: Active

**intent**: Plan

**category**: MNCH

**subject**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)

**period**: 2025-11-11 --> 2025-12-31

**goal**: [Goal: lifecycleStatus = active; achievementStatus = Improving; category = ; priority = High Priority; description = ; start[x] = 2025-11-11](Goal-NgGoal-001.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "NgCarePlan-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-care-plan"]
  },
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-careplan-category-cs",
      "code" : "mnch",
      "display" : "MNCH"
    }]
  }],
  "subject" : {
    "reference" : "Patient/NgPatient-001"
  },
  "period" : {
    "start" : "2025-11-11",
    "end" : "2025-12-31"
  },
  "goal" : [{
    "reference" : "Goal/NgGoal-001"
  }]
}

```
