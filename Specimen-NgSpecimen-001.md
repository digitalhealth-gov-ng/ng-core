# Nigeria Venous Blood Specimen Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Venous Blood Specimen Example**

## Example Specimen: Nigeria Venous Blood Specimen Example

Profile: [Specimen profile](StructureDefinition-ng-specimen.md)

**status**: Available

**type**: Venous blood specimen

**subject**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**receivedTime**: 2026-08-03 09:20:00+0100

### Collections

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Collector** | **Collected[x]** | **Quantity** | **Method** | **BodySite** |
| * | [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md) | 2026-08-03 09:10:00+0100 | 5 mL (Details: UCUM codemL = 'mL') | Venipuncture | Left antecubital fossa |

**note**: 

> 

Specimen received in good condition and accepted for testing.




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "NgSpecimen-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-specimen"]
  },
  "status" : "available",
  "type" : {
    "text" : "Venous blood specimen"
  },
  "subject" : {
    "reference" : "Patient/NgPatient-002"
  },
  "receivedTime" : "2026-08-03T09:20:00+01:00",
  "collection" : {
    "collector" : {
      "reference" : "Practitioner/NgPractitioner-002"
    },
    "collectedDateTime" : "2026-08-03T09:10:00+01:00",
    "quantity" : {
      "value" : 5,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    },
    "method" : {
      "text" : "Venipuncture"
    },
    "bodySite" : {
      "text" : "Left antecubital fossa"
    }
  },
  "note" : [{
    "text" : "Specimen received in good condition and accepted for testing."
  }]
}

```
