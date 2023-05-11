// ------------------------------------------------------------------
/* RULE SET - Observation Value Quantity */
// ------------------------------------------------------------------

RuleSet: Codecon_ValueQuantity
* valueQuantity // MS
* valueQuantity only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value
* valueQuantity.system 
* valueQuantity.code 