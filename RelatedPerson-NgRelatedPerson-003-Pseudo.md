# Pseudonymized Ng RelatedPerson (Brother) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pseudonymized Ng RelatedPerson (Brother)**

## Example RelatedPerson: Pseudonymized Ng RelatedPerson (Brother)

Profile: [NG RelatedPerson](StructureDefinition-ng-related-person.md)

**patient**: [Female-01 Client Female, DoB: 1995-02-01 ( Pseudonymized Identifier: PSN-8A7F-2C19-KE95)](Patient-NgPatient-001-Pseudo.md)

**relationship**: brother

**name**: Alias-01 Relative 

**gender**: Male

**birthDate**: 1990-01-01



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "NgRelatedPerson-003-Pseudo",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-related-person"]
  },
  "patient" : {
    "reference" : "Patient/NgPatient-001-Pseudo"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "BRO",
      "display" : "brother"
    }]
  }],
  "name" : [{
    "family" : "Relative",
    "given" : ["Alias-01"]
  }],
  "gender" : "male",
  "birthDate" : "1990-01-01"
}

```
