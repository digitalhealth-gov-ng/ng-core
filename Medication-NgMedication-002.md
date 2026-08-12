# Example Ng Medication (Paracetamol Oral Suspension 250 mg/5 mL) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Medication (Paracetamol Oral Suspension 250 mg/5 mL)**

## Example Medication: Example Ng Medication (Paracetamol Oral Suspension 250 mg/5 mL)

Profile: [NG Medication](StructureDefinition-ng-medication.md)

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-local`/IMMZ.Z.DE5

**code**: Paracetamol oral suspension 250 mg/5 mL

**form**: Oral Suspension

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | Paracetamol (Acetaminophen) | 250 mg (Details: UCUM codemg = 'mg')/5 mL (Details: UCUM codemL = 'mL') |

### Batches

| | | |
| :--- | :--- | :--- |
| - | **LotNumber** | **ExpirationDate** |
| * | PCM-25-091 | 2026-06-30 |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "NgMedication-002",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication"]
  },
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-local",
    "value" : "IMMZ.Z.DE5"
  }],
  "code" : {
    "text" : "Paracetamol oral suspension 250 mg/5 mL"
  },
  "form" : {
    "text" : "Oral Suspension"
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "text" : "Paracetamol (Acetaminophen)"
    },
    "strength" : {
      "numerator" : {
        "value" : 250,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 5,
        "unit" : "mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      }
    }
  }],
  "batch" : {
    "lotNumber" : "PCM-25-091",
    "expirationDate" : "2026-06-30"
  }
}

```
