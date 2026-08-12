# Example Ng Medication (Amoxicillin 500 mg Capsule) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Medication (Amoxicillin 500 mg Capsule)**

## Example Medication: Example Ng Medication (Amoxicillin 500 mg Capsule)

Profile: [NG Medication](StructureDefinition-ng-medication.md)

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-local`/IMMZ.Z.DE5

**code**: Amoxicillin 500 mg capsule

**form**: Capsule

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | Amoxicillin | 500 mg (Details: UCUM codemg = 'mg')/1 1 (Details: UCUM code1 = '1') |

### Batches

| | | |
| :--- | :--- | :--- |
| - | **LotNumber** | **ExpirationDate** |
| * | AMX-2025-001 | 2027-12-31 |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "NgMedication-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication"]
  },
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-local",
    "value" : "IMMZ.Z.DE5"
  }],
  "code" : {
    "text" : "Amoxicillin 500 mg capsule"
  },
  "form" : {
    "text" : "Capsule"
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "text" : "Amoxicillin"
    },
    "strength" : {
      "numerator" : {
        "value" : 500,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }
  }],
  "batch" : {
    "lotNumber" : "AMX-2025-001",
    "expirationDate" : "2027-12-31"
  }
}

```
