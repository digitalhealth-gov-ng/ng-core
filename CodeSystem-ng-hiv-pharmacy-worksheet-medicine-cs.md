# NG HIV Pharmacy Daily Worksheet Medicine Columns - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Pharmacy Daily Worksheet Medicine Columns**

## CodeSystem: NG HIV Pharmacy Daily Worksheet Medicine Columns 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-pharmacy-worksheet-medicine-cs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivPharmacyWorksheetMedicineCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.64 | |

 
Local codes for the fixed medicine columns W24–W71 on the revised November 2025 Pharmacy Daily Worksheet. The code is the printed worksheet column identifier, allowing exact reconstruction of the paper worksheet. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Pharmacy Daily Worksheet Medicines](ValueSet-ng-hiv-pharmacy-worksheet-medicine-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-pharmacy-worksheet-medicine-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-pharmacy-worksheet-medicine-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.64"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPharmacyWorksheetMedicineCS",
  "title" : "NG HIV Pharmacy Daily Worksheet Medicine Columns",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-29",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Local codes for the fixed medicine columns W24–W71 on the revised November\n2025 Pharmacy Daily Worksheet. The code is the printed worksheet column\nidentifier, allowing exact reconstruction of the paper worksheet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 48,
  "concept" : [{
    "code" : "W24",
    "display" : "Abacavir/Lamivudine 600/300 mg",
    "definition" : "W24; category adult-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W25",
    "display" : "Zidovudine/Lamivudine 300/150 mg",
    "definition" : "W25; category adult-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W26",
    "display" : "Tenofovir/Lamivudine 300/300 mg",
    "definition" : "W26; category adult-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W27",
    "display" : "Tenofovir/Lamivudine/Efavirenz 300/300/400 mg",
    "definition" : "W27; category adult-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W28",
    "display" : "Tenofovir/Lamivudine/Dolutegravir 300/300/50 mg, 30 tablets",
    "definition" : "W28; category adult-art. Report in packs, bottles or vials; the printed column distinguishes the 30-tablet presentation."
  },
  {
    "code" : "W29",
    "display" : "Tenofovir/Lamivudine/Dolutegravir 300/300/50 mg, 90 tablets",
    "definition" : "W29; category adult-art. Report in packs, bottles or vials; the printed column distinguishes the 90-tablet presentation."
  },
  {
    "code" : "W30",
    "display" : "Tenofovir alafenamide/Lamivudine/Dolutegravir 25/300/50 mg",
    "definition" : "W30; category adult-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W31",
    "display" : "Tenofovir alafenamide/Emtricitabine/Dolutegravir 25/200/50 mg",
    "definition" : "W31; category adult-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W32",
    "display" : "Atazanavir/Ritonavir 300/100 mg",
    "definition" : "W32; category adult-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W33",
    "display" : "Dolutegravir 50 mg",
    "definition" : "W33; category adult-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W34",
    "display" : "Ritonavir 100 mg",
    "definition" : "W34; category adult-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W35",
    "display" : "Darunavir 600 mg",
    "definition" : "W35; category adult-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W36",
    "display" : "Darunavir/Ritonavir 400/50 mg",
    "definition" : "W36; category adult-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W37",
    "display" : "Cabotegravir 200 mg/mL, 3 mL vial",
    "definition" : "W37; category adult-art. Report in packs, bottles or vials. The source worksheet places this product in the adult-ARV section."
  },
  {
    "code" : "W38",
    "display" : "Lenacapavir 600 mg tablet",
    "definition" : "W38; category adult-art. Report in packs, bottles or vials. The source worksheet places this product in the adult-ARV section."
  },
  {
    "code" : "W39",
    "display" : "Lenacapavir 927 mg/3 mL injection",
    "definition" : "W39; category adult-art. Report in packs, bottles or vials. The source worksheet places this product in the adult-ARV section."
  },
  {
    "code" : "W40",
    "display" : "Abacavir/Lamivudine/Dolutegravir 60/30/5 mg",
    "definition" : "W40; category paediatric-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W41",
    "display" : "Abacavir/Lamivudine 120/60 mg",
    "definition" : "W41; category paediatric-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W42",
    "display" : "Zidovudine/Lamivudine 60/30 mg",
    "definition" : "W42; category paediatric-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W43",
    "display" : "Dolutegravir 10 mg",
    "definition" : "W43; category paediatric-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W44",
    "display" : "Nevirapine 50 mg/5 mL",
    "definition" : "W44; category paediatric-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W45",
    "display" : "Lopinavir/Ritonavir 100/25 mg",
    "definition" : "W45; category paediatric-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W46",
    "display" : "Darunavir/Ritonavir 120/20 mg",
    "definition" : "W46; category paediatric-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W47",
    "display" : "Zidovudine 10 mg/mL",
    "definition" : "W47; category paediatric-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W48",
    "display" : "Darunavir 75 mg",
    "definition" : "W48; category paediatric-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W49",
    "display" : "Ritonavir 25 mg",
    "definition" : "W49; category paediatric-art. Report in packs, bottles or vials."
  },
  {
    "code" : "W50",
    "display" : "Co-trimoxazole 960 mg",
    "definition" : "W50; category ctx-prophylaxis. Report in tablets."
  },
  {
    "code" : "W51",
    "display" : "Co-trimoxazole 120 mg",
    "definition" : "W51; category ctx-prophylaxis. Report in tablets."
  },
  {
    "code" : "W52",
    "display" : "Isoniazid 100 mg",
    "definition" : "W52; category tb-preventive-therapy. Report in kits."
  },
  {
    "code" : "W53",
    "display" : "Isoniazid 300 mg",
    "definition" : "W53; category tb-preventive-therapy. Report in kits."
  },
  {
    "code" : "W54",
    "display" : "Isoniazid/Rifapentine 300/300 mg",
    "definition" : "W54; category tb-preventive-therapy. Report in kits."
  },
  {
    "code" : "W55",
    "display" : "Rifapentine 150 mg",
    "definition" : "W55; category tb-preventive-therapy. Report in kits."
  },
  {
    "code" : "W56",
    "display" : "Acyclovir 200 mg tablet",
    "definition" : "W56; category anti-infective. The revised worksheet does not state a common reporting unit for this section."
  },
  {
    "code" : "W57",
    "display" : "Clotrimazole 100 mg vaginal tablet",
    "definition" : "W57; category anti-infective. The revised worksheet does not state a common reporting unit for this section."
  },
  {
    "code" : "W58",
    "display" : "Fluconazole 100 mg",
    "definition" : "W58; category anti-infective. The revised worksheet does not state a common reporting unit for this section."
  },
  {
    "code" : "W59",
    "display" : "Fluconazole 200 mg",
    "definition" : "W59; category anti-infective. The revised worksheet does not state a common reporting unit for this section."
  },
  {
    "code" : "W60",
    "display" : "Fluconazole 50 mg/5 mL suspension, 35 mL",
    "definition" : "W60; category anti-infective. The revised worksheet does not state a common reporting unit for this section."
  },
  {
    "code" : "W61",
    "display" : "Nystatin 100,000 IU/mL suspension",
    "definition" : "W61; category anti-infective. The revised worksheet does not state a common reporting unit for this section."
  },
  {
    "code" : "W62",
    "display" : "Azithromycin 500 mg capsule",
    "definition" : "W62; category anti-infective. The revised worksheet does not state a common reporting unit for this section."
  },
  {
    "code" : "W63",
    "display" : "Benzathine penicillin 1 g injection",
    "definition" : "W63; category anti-infective. The revised worksheet does not state a common reporting unit for this section."
  },
  {
    "code" : "W64",
    "display" : "Ceftriaxone 1 g injection",
    "definition" : "W64; category anti-infective. The revised worksheet does not state a common reporting unit for this section."
  },
  {
    "code" : "W65",
    "display" : "Ciprofloxacin 500 mg tablet",
    "definition" : "W65; category anti-infective. The revised worksheet does not state a common reporting unit for this section."
  },
  {
    "code" : "W66",
    "display" : "Doxycycline 100 mg capsule",
    "definition" : "W66; category anti-infective. The revised worksheet does not state a common reporting unit for this section."
  },
  {
    "code" : "W67",
    "display" : "Erythromycin 500 mg tablet",
    "definition" : "W67; category anti-infective. The revised worksheet does not state a common reporting unit for this section."
  },
  {
    "code" : "W68",
    "display" : "Metronidazole 400 mg tablet",
    "definition" : "W68; category anti-infective. The revised worksheet does not state a common reporting unit for this section."
  },
  {
    "code" : "W69",
    "display" : "Podophyllotoxin 0.5% solution",
    "definition" : "W69; category anti-infective. The workbook prints 'Podophyllon toxin'; this display uses the likely intended medicine name while preserving W69 as the source code."
  },
  {
    "code" : "W70",
    "display" : "Amphotericin B 50 mg vial",
    "definition" : "W70; category advanced-hiv-disease. Advanced HIV disease or cryptococcal-meningitis treatment product."
  },
  {
    "code" : "W71",
    "display" : "Flucytosine 500 mg tablet",
    "definition" : "W71; category advanced-hiv-disease. Advanced HIV disease or cryptococcal-meningitis treatment product."
  }]
}

```
