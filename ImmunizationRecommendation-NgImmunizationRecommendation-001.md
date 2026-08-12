# Immunization Recommendation – Measles (due) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immunization Recommendation – Measles (due)**

## Example ImmunizationRecommendation: Immunization Recommendation – Measles (due)

Profile: [NG ImmunizationRecommendation](StructureDefinition-ng-immunization-recommendation.md)

**patient**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)

**date**: 2025-11-06 09:00:00+0100

### Recommendations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **VaccineCode** | **ForecastStatus** | **Series** | **DoseNumber[x]** |
| * | Measles-containing vaccine (MCV1) | Due | RI Schedule – Measles | 1 |



## Resource Content

```json
{
  "resourceType" : "ImmunizationRecommendation",
  "id" : "NgImmunizationRecommendation-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-immunization-recommendation"]
  },
  "patient" : {
    "reference" : "Patient/NgPatient-001"
  },
  "date" : "2025-11-06T09:00:00+01:00",
  "recommendation" : [{
    "vaccineCode" : [{
      "text" : "Measles-containing vaccine (MCV1)"
    }],
    "forecastStatus" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/immunization-recommendation-status",
        "code" : "due"
      }]
    },
    "series" : "RI Schedule – Measles",
    "doseNumberPositiveInt" : 1
  }]
}

```
