// ------------------------------------------------------------------
/* PROFILE - Lab Values General */
// ------------------------------------------------------------------

Profile: CodeconLabValuesGeneral
Parent: Observation
Id: shs-codecon-lab-values-general
Title: "SHS - Codecon - General profile for Lab Values"
Description: "General observation profile that defines base profile for lab values"
* ^name = "SHS_Codecon_Laboratory"
* ^status = #draft
* category.coding.system = "http://snomed.info/sct" (exactly)
* category.coding.code = #118246004 (exactly)
* component ..0
* hasMember ..0
* interpretation ..0
* derivedFrom ..0

// ------------------------------------------------------------------
/* PROFILE - PSA Base */
// ------------------------------------------------------------------

Profile: CodeconProstateSpecificAntigenPSA
Parent: shs-codecon-lab-values-general
Id: shs-codecon-prostate-specific-antigen-psa
Title: "SHS - Codecon - Prostate specific antigen (PSA)"
Description: "A protein made by the prostate gland and found in the blood. Prostate-specific antigen blood levels may be higher than normal in men who have prostate cancer, benign prostatic hyperplasia (BPH), or infection or inflammation of the prostate gland. "
* insert Codecon_ValueQuantity
* ^name = "SHS_Codecon_ProstateSspecificAntigen_PSA"
* ^status = #draft
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "commonCode"
* code.coding ^slicing.rules = #open
* code.coding.userSelected ..0
* code.coding.version ..0
* code.coding contains commonCode 1..1
* code.coding[commonCode] ^binding.strength = #required
* code.coding[commonCode] ^binding.description = "only those codes can be interpreted by the application"
* code.coding[commonCode] from VsProstatespecificantigenPSA (required)
* valueQuantity.code = #ng/mL (exactly)
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.unit = "ng/mL" (exactly)

