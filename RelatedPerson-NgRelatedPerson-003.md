# Example Ng RelatedPerson (Brother) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng RelatedPerson (Brother)**

## Example RelatedPerson: Example Ng RelatedPerson (Brother)

Profile: [NG RelatedPerson](StructureDefinition-ng-related-person.md)

**patient**: [Kemi Adebayo Female, DoB: 1995-02-14 ( nin)](Patient-NgPatient-001.md)

**relationship**: brother

**name**: Chinedu Okafor 

**gender**: Male

**birthDate**: 1990-01-20



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "NgRelatedPerson-003",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-related-person"]
  },
  "patient" : {
    "reference" : "Patient/NgPatient-001"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "BRO",
      "display" : "brother"
    }]
  }],
  "name" : [{
    "family" : "Okafor",
    "given" : ["Chinedu"]
  }],
  "gender" : "male",
  "birthDate" : "1990-01-20"
}

```
