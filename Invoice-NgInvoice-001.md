# Nigeria Pharmacy Dispensing Invoice Example - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nigeria Pharmacy Dispensing Invoice Example**

## Example Invoice: Nigeria Pharmacy Dispensing Invoice Example

Profile: [NG Invoice](StructureDefinition-ng-invoice.md)

**status**: issued

**type**: Pharmacy dispensing invoice

**subject**: [Musa Abdullahi Male, DoB: 1987-07-06 ( nin)](Patient-NgPatient-002.md)

**date**: 2026-08-03 08:30:00+0100

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Role** | **Actor** |
| * | Dispensing pharmacist | [Practitioner Nkiru Okeke ](Practitioner-NgPractitioner-002.md) |

**issuer**: [Organization Kano Central Hospital Pharmacy](Organization-NgOrganization-002.md)

> **lineItem****sequence**: 1**chargeItem**: Amoxicillin 500 mg capsules, 21 capsules
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 3500 | Nigerian naira |



> **lineItem****sequence**: 2**chargeItem**: Paracetamol 500 mg tablets, 20 tablets
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 1000 | Nigerian naira |



> **lineItem****sequence**: 3**chargeItem**: Pharmacy dispensing service
> **priceComponent****type**: base price

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 500 | Nigerian naira |



### TotalNets

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 5000 | Nigerian naira |

### TotalGrosses

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 5000 | Nigerian naira |

**paymentTerms**: 

Payment is due at the point of medicine collection.

**note**: 

> 

The invoice covers medicines dispensed and the associated pharmacy service.




## Resource Content

```json
{
  "resourceType" : "Invoice",
  "id" : "NgInvoice-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-invoice"]
  },
  "status" : "issued",
  "type" : {
    "text" : "Pharmacy dispensing invoice"
  },
  "subject" : {
    "reference" : "Patient/NgPatient-002"
  },
  "date" : "2026-08-03T08:30:00+01:00",
  "participant" : [{
    "role" : {
      "text" : "Dispensing pharmacist"
    },
    "actor" : {
      "reference" : "Practitioner/NgPractitioner-002"
    }
  }],
  "issuer" : {
    "reference" : "Organization/NgOrganization-002"
  },
  "lineItem" : [{
    "sequence" : 1,
    "chargeItemCodeableConcept" : {
      "text" : "Amoxicillin 500 mg capsules, 21 capsules"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 3500,
        "currency" : "NGN"
      }
    }]
  },
  {
    "sequence" : 2,
    "chargeItemCodeableConcept" : {
      "text" : "Paracetamol 500 mg tablets, 20 tablets"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 1000,
        "currency" : "NGN"
      }
    }]
  },
  {
    "sequence" : 3,
    "chargeItemCodeableConcept" : {
      "text" : "Pharmacy dispensing service"
    },
    "priceComponent" : [{
      "type" : "base",
      "amount" : {
        "value" : 500,
        "currency" : "NGN"
      }
    }]
  }],
  "totalNet" : {
    "value" : 5000,
    "currency" : "NGN"
  },
  "totalGross" : {
    "value" : 5000,
    "currency" : "NGN"
  },
  "paymentTerms" : "Payment is due at the point of medicine collection.",
  "note" : [{
    "text" : "The invoice covers medicines dispensed and the associated pharmacy service."
  }]
}

```
