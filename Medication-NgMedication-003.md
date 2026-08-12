# Example Ng Medication (Insulin 100 IU/mL Injection) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng Medication (Insulin 100 IU/mL Injection)**

## Example Medication: Example Ng Medication (Insulin 100 IU/mL Injection)

Profile: [NG Medication](StructureDefinition-ng-medication.md)

**identifier**: `https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-local`/IMMZ.Z.DE5

**code**: Insulin (short-acting) 100 IU/mL

**form**: Injection Solution

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | Insulin (short-acting) | 100 IU (Details: UCUM code[iU] = '[iU]')/1 mL (Details: UCUM codemL = 'mL') |

### Batches

| | | |
| :--- | :--- | :--- |
| - | **LotNumber** | **ExpirationDate** |
| * | INS-100-2025A | 2027-03-31 |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "NgMedication-003",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-medication"]
  },
  "identifier" : [{
    "system" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-vaccine-local",
    "value" : "IMMZ.Z.DE5"
  }],
  "code" : {
    "text" : "Insulin (short-acting) 100 IU/mL"
  },
  "form" : {
    "text" : "Injection Solution"
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "text" : "Insulin (short-acting)"
    },
    "strength" : {
      "numerator" : {
        "value" : 100,
        "unit" : "IU",
        "system" : "http://unitsofmeasure.org",
        "code" : "[iU]"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      }
    }
  }],
  "batch" : {
    "lotNumber" : "INS-100-2025A",
    "expirationDate" : "2027-03-31"
  }
}

```
