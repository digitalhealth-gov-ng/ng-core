# Example Ng RelatedPerson (Brother) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng RelatedPerson (Brother)**

## Example RelatedPerson: Example Ng RelatedPerson (Brother)

Profile: [NG RelatedPerson](StructureDefinition-ng-related-person.md)

**patient**: [Suleiman Bala Male, DoB: 2019-09-05 ( birthcert)](Patient-NgPatient-003.md)

**relationship**: brother

**name**: Ibrahim Abdullahi 

**gender**: Male

**birthDate**: 2015-07-12



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "NgRelatedPerson-001",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-related-person"]
  },
  "patient" : {
    "reference" : "Patient/NgPatient-003"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "BRO",
      "display" : "brother"
    }]
  }],
  "name" : [{
    "family" : "Abdullahi",
    "given" : ["Ibrahim"]
  }],
  "gender" : "male",
  "birthDate" : "2015-07-12"
}

```
