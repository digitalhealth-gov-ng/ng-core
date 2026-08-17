# NG Electromechanical Medical Device Identifier CS - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG Electromechanical Medical Device Identifier CS**

## CodeSystem: NG Electromechanical Medical Device Identifier CS 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-device-identifier-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgDeviceIdentifierCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.11 | |

 
Simplified CodeSystem of 50 placeholder identifiers for electromechanical medical devices (vital signs, analyzers, imaging/DICOM, bedside, handheld, IoT). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG Electromechanical Medical Device Identifier VS](ValueSet-ng-device-identifier-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-device-identifier-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-device-identifier-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.11"
  }],
  "version" : "0.0.0",
  "name" : "NgDeviceIdentifierCS",
  "title" : "NG Electromechanical Medical Device Identifier CS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T13:27:53+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    },
    {
      "system" : "email",
      "value" : "emeka2015@gmail.com"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "lekeojewale@gmail.com",
      "use" : "work"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "emeka2015@gmail.com",
      "use" : "work"
    }]
  }],
  "description" : "Simplified CodeSystem of 50 placeholder identifiers for electromechanical medical devices (vital signs, analyzers, imaging/DICOM, bedside, handheld, IoT).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 50,
  "concept" : [{
    "code" : "VS-001",
    "display" : "Automated Blood Pressure Monitor"
  },
  {
    "code" : "VS-002",
    "display" : "Pulse Oximeter (SpO2)"
  },
  {
    "code" : "VS-003",
    "display" : "Digital Thermometer"
  },
  {
    "code" : "VS-004",
    "display" : "ECG Monitor (12-lead)"
  },
  {
    "code" : "VS-005",
    "display" : "Capnograph (EtCO2)"
  },
  {
    "code" : "VS-006",
    "display" : "Multiparameter Patient Monitor"
  },
  {
    "code" : "VS-007",
    "display" : "Spirometer"
  },
  {
    "code" : "VS-008",
    "display" : "Non-invasive Cardiac Output Monitor"
  },
  {
    "code" : "AN-001",
    "display" : "Chemistry Analyzer"
  },
  {
    "code" : "AN-002",
    "display" : "Hematology Analyzer"
  },
  {
    "code" : "AN-003",
    "display" : "Immunoassay Analyzer"
  },
  {
    "code" : "AN-004",
    "display" : "Blood Gas Analyzer"
  },
  {
    "code" : "AN-005",
    "display" : "Coagulation Analyzer"
  },
  {
    "code" : "AN-006",
    "display" : "PCR Analyzer (qPCR)"
  },
  {
    "code" : "US-001",
    "display" : "Cart Ultrasound System"
  },
  {
    "code" : "US-002",
    "display" : "Portable Ultrasound"
  },
  {
    "code" : "US-003",
    "display" : "Point-of-Care Ultrasound"
  },
  {
    "code" : "US-004",
    "display" : "Handheld Ultrasound Probe"
  },
  {
    "code" : "US-005",
    "display" : "Obstetric Ultrasound"
  },
  {
    "code" : "US-006",
    "display" : "Vascular Ultrasound"
  },
  {
    "code" : "XR-001",
    "display" : "Mobile X-ray (DX)"
  },
  {
    "code" : "XR-002",
    "display" : "Fixed X-ray Room (CR)"
  },
  {
    "code" : "XR-003",
    "display" : "Digital Radiography Panel (DR)"
  },
  {
    "code" : "XR-004",
    "display" : "PACS Workstation"
  },
  {
    "code" : "XR-005",
    "display" : "Fluoroscopy System"
  },
  {
    "code" : "XR-006",
    "display" : "Mammography System (MG)"
  },
  {
    "code" : "XR-007",
    "display" : "Dental X-ray (Intraoral)"
  },
  {
    "code" : "CT-001",
    "display" : "CT Scanner 16-slice"
  },
  {
    "code" : "CT-002",
    "display" : "CT Scanner 64-slice"
  },
  {
    "code" : "CT-003",
    "display" : "CT Injector (Contrast)"
  },
  {
    "code" : "CT-004",
    "display" : "CT Workstation (Reconstruction)"
  },
  {
    "code" : "MR-001",
    "display" : "MRI 1.5T Scanner"
  },
  {
    "code" : "MR-002",
    "display" : "MRI 3.0T Scanner"
  },
  {
    "code" : "MR-003",
    "display" : "MRI Patient Monitor (MR-Conditional)"
  },
  {
    "code" : "BED-001",
    "display" : "Infusion Pump"
  },
  {
    "code" : "BED-002",
    "display" : "Syringe Pump"
  },
  {
    "code" : "BED-003",
    "display" : "Ventilator"
  },
  {
    "code" : "BED-004",
    "display" : "Anesthesia Machine"
  },
  {
    "code" : "BED-005",
    "display" : "Defibrillator (AED/Manual)"
  },
  {
    "code" : "HH-001",
    "display" : "Handheld ECG Recorder"
  },
  {
    "code" : "HH-002",
    "display" : "Handheld Capnograph"
  },
  {
    "code" : "HH-003",
    "display" : "Handheld Vital Signs Monitor (NIBP/SpO2)"
  },
  {
    "code" : "HH-004",
    "display" : "Glucometer (POC)"
  },
  {
    "code" : "HH-005",
    "display" : "Fetal Doppler (Handheld)"
  },
  {
    "code" : "HH-006",
    "display" : "Handheld Ultrasound (Probe)"
  },
  {
    "code" : "IOT-001",
    "display" : "Cold Chain Temperature Logger"
  },
  {
    "code" : "IOT-002",
    "display" : "Room Air Quality Monitor (PM/CO2)"
  },
  {
    "code" : "IOT-003",
    "display" : "Smart Medical Scale (Bed/Chair)"
  },
  {
    "code" : "IOT-004",
    "display" : "Asset Tracker (BLE/GPS)"
  },
  {
    "code" : "IOT-005",
    "display" : "Refrigerator Door/Temperature Sensor"
  }]
}

```
