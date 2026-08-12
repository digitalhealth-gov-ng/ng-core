# Example Ng RelatedPerson (Sister) - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ng RelatedPerson (Sister)**

## Example RelatedPerson: Example Ng RelatedPerson (Sister)

Profile: [NG RelatedPerson](StructureDefinition-ng-related-person.md)

**patient**: [Suleiman Bala Male, DoB: 2019-09-05 ( birthcert)](Patient-NgPatient-003.md)

**relationship**: sister

**name**: Maryam Abdullahi 

**gender**: Female

**birthDate**: 2018-03-02



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "NgRelatedPerson-002",
  "meta" : {
    "profile" : ["https://fhir-ig.digitalhealth.gov.ng/StructureDefinition/ng-related-person"]
  },
  "patient" : {
    "reference" : "Patient/NgPatient-003"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "SIS",
      "display" : "sister"
    }]
  }],
  "name" : [{
    "family" : "Abdullahi",
    "given" : ["Maryam"]
  }],
  "gender" : "female",
  "birthDate" : "2018-03-02"
}

```
