// ------------------------------------------------------------------
/* PROFILE - Observation */
// ------------------------------------------------------------------

Profile: CodeconObservation
Parent: Observation
Id: shs-codecon-observation
Title: "SHS - Codecon - Observation"
Description: "General observation profile serves for backend capabilities."
* ^name = "SHS_Codecon_Observation"
* ^status = #draft
* ^purpose = "This profile defines the global server capabilities for observation resource.\r\nAll other observation profiles in this implementation guide are derived from this one."
* status
* category ..1
* category.coding ..2
* effectiveDateTime 1..1 MS 
* value[x] only Quantity or CodeableConcept or string or Period  
* interpretation.coding ..2

// ------------------------------------------------------------------
/* Example for Extension */
// ------------------------------------------------------------------
Profile: ExampleObservationExtension
Parent: shs-codecon-observation
Id: example-observation-extension

* bodySite.extension contains 
  Laterality
  named  myExtension 0..1

// ------------------------------------------------------------------
/* EXTENSION - Laterality */
// ------------------------------------------------------------------
Extension: Laterality
Description: "Body side of a body location."
* value[x] only CodeableConcept
* value[x] from http://hl7.org/fhir/ValueSet/bodysite-laterality (required)