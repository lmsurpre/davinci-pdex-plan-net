Instance: JoeSmithPractitioner
InstanceOf: PlannetPractitioner
Description: "Practitioner Dr Joe Smith"
Usage: #example
* meta.profile = Canonical(PlannetPractitioner)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* identifier[NPI].value = "NPI323"
* identifier[NPI].system = $NPICS
* name.text = "Joe Smith, MD"
* name.family = "Smith"
* name.given[0] = "Joe"
* qualification[0].code = $V2table0360CS#MD
* qualification[0].issuer.display = "State of Illinois"
* qualification[0].code.text = "MD"
* qualification[0].extension[practitioner-qualification].extension[status].valueCode = QualificationStatusCS#active 
* qualification[0].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
* qualification[1].code = $NUCCProviderTaxonomy#207R00000X "Internal Medicine"
* qualification[1].issuer.display = "American Board of Internal Medicine"
* qualification[1].code.text = "Board Certified Internal Medicine"
* qualification[1].extension[practitioner-qualification].extension[status].valueCode = QualificationStatusCS#active 
* qualification[1].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
* qualification[2].code = $NUCCProviderTaxonomy#207RC0000X "Cardiovascular Disease"
* qualification[2].issuer.display = "American Board of Internal Medicine"
* qualification[2].code.text = "Board Certified Cardiovascular Disease"
* qualification[2].extension[practitioner-qualification].extension[status].valueCode = QualificationStatusCS#active 
* qualification[2].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 


Instance: HansSoloPractitioner
InstanceOf: PlannetPractitioner
Description: "Solo Practitioner Hans Solo"
Usage: #example
* meta.profile = Canonical(PlannetPractitioner)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* identifier[NPI].value = "NPI3233"
* identifier[NPI].system = $NPICS
* name.text = "Hans Solo, MD"
* name.family = "Solo"
* name.given[0] = "Hans"
* qualification[0].code = $V2table0360CS#MD
* qualification[0].issuer.display = "State of Illinois"
* qualification[0].code.text = "MD"
* qualification[0].extension[practitioner-qualification].extension[status].valueCode = QualificationStatusCS#active 
* qualification[0].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
* qualification[1].code = $NUCCProviderTaxonomy#207R00000X "Internal Medicine"
* qualification[1].issuer.display = "American Board of Internal Medicine"
* qualification[1].code.text = "Board Certified Internal Medicine"
* qualification[1].extension[practitioner-qualification].extension[status].valueCode = QualificationStatusCS#active 
* qualification[1].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
* qualification[2].code = $NUCCProviderTaxonomy#207RC0000X "Cardiovascular Disease"
* qualification[2].issuer.display = "American Board of Internal Medicine"
* qualification[2].code.text = "Board Certified Cardiovascular Disease"
* qualification[2].extension[practitioner-qualification].extension[status].valueCode = QualificationStatusCS#active 
* qualification[2].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 


Instance: HansSoloPractitionerARole1
InstanceOf: PlannetPractitionerRole
Description: "Hans Solo is a solo practitioner"
Usage: #example
* meta.profile = Canonical(PlannetPractitionerRole)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* code = ProviderRoleCS#ph 
* practitioner = Reference(HansSoloPractitioner)
* healthcareService = Reference(HansSoloHealthcareService)
* extension[network-reference].valueReference = Reference(AcmeOfCTStandardNetwork)
* location[0] = Reference(HansSoloClinic)
* specialty =  $NUCCProviderTaxonomy#207R00000X "Internal Medicine"
* organization = Reference(HartfordGeneralHospital)
// specialty = internal medicine
// available M-F

Instance: HansSoloHealthcareService
InstanceOf: PlannetHealthcareService
Description: "Hans Solo Services"
Usage: #example
* meta.profile = Canonical(PlannetHealthcareService)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[deliverymethod].extension[type].valueCodeableConcept = DeliveryMethodCS#physical
* category = HealthcareServiceCategoryCS#Outpatient 
* specialty = $NUCCProviderTaxonomy#207Q00000X "Family Medicine Physician"  
* location[0] = Reference(HansSoloClinic)

Instance: HansSoloClinic
InstanceOf: PlannetLocation
Description: "Location of Hans Solo's clinic"
Usage: #example
* meta.profile = Canonical(PlannetLocation) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "OrgA CT Location 1"
* type = $V3RoleCode#OUTPHARM
* managingOrganization = Reference(OrganizationB)
* extension[newpatients].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#existing
* extension[newpatients].extension[fromNetwork].valueReference = Reference(AcmeOfCTStandardNetwork)
* extension[accessibility][1].valueCodeableConcept = AccessibilityCS#pubtrans
* extension[accessibility][0].valueCodeableConcept = AccessibilityCS#adacomp
* telecom[0].system = #phone
* telecom[0].value = "(111)-222-3333"
* telecom[0].rank = 2
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][1].valueCode  = #tue
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][2].valueCode  = #wed
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][3].valueCode  = #thu
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][4].valueCode  = #fri 
* telecom[0].extension[contactpoint-availabletime][0].extension[availableStartTime].valueTime = 08:00:00
* telecom[0].extension[contactpoint-availabletime][0].extension[availableEndTime].valueTime = 17:00:00
* telecom[1].system = #url
* telecom[1].value = "https://www.hanssolo.com"
* telecom[1].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Anytown"
* address.state = "CT"
* address.postalCode = "00014-1234"
* position.longitude = 3.0
* position.latitude = 15.0
* hoursOfOperation[0].daysOfWeek[0]  = #mon 
* hoursOfOperation[0].daysOfWeek[1] = #tue
* hoursOfOperation[0].daysOfWeek[2] = #wed
* hoursOfOperation[0].daysOfWeek[3] = #thu
* hoursOfOperation[0].daysOfWeek[4]  = #fri 
* hoursOfOperation[0].openingTime = 08:00:00
* hoursOfOperation[0].closingTime = 17:00:00


Instance: JoeSmithPractitionerARole1
InstanceOf: PlannetPractitionerRole
Description: "Dr Smith moonlighting as ER Doc at Hartford Hospital"
Usage: #example
* meta.profile = Canonical(PlannetPractitionerRole)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* code = ProviderRoleCS#ph 
* practitioner = Reference(JoeSmithPractitioner)
* healthcareService = Reference(HartfordGeneralHospitalEmergencyService)
* extension[network-reference].valueReference = Reference(AcmeOfCTStandardNetwork)
* location[0] = Reference(HartfordHospitalLocation1)
* specialty =  $NUCCProviderTaxonomy#207R00000X "Internal Medicine"
* organization = Reference(HartfordGeneralHospital)
// specialty = internal medicine
// available M-F

Instance: JoeSmithPractitionerARole2
InstanceOf: PlannetPractitionerRole
Description: "Dr Smith Internal Medicine at Burr Clinic"
Usage: #example
* meta.profile = Canonical(PlannetPractitionerRole)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* code = ProviderRoleCS#ph
// specialty = internal medicine
// Available:  Sat/Sun
* healthcareService = Reference(BurrClinicServices)
* extension[network-reference].valueReference = Reference(AcmeOfCTStandardNetwork)
* location[0] = Reference(HartfordHospitalLocation2)
* specialty =  $NUCCProviderTaxonomy#207R00000X "Internal Medicine"
* organization = Reference(BurrClinicOrganization)

Instance: JoeSmithPractitionerARole3
InstanceOf: PlannetPractitionerRole
Description: "Dr Smith Admitting Privileges at Hartford General"
Usage: #example
* meta.profile = Canonical(PlannetPractitionerRole)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* code = ProviderRoleCS#ap 
* healthcareService = Reference(BurrClinicServices)
* extension[network-reference].valueReference = Reference(AcmeOfCTStandardNetwork)
* location[0] = Reference(HartfordHospitalLocation2)
* specialty[0] =  $NUCCProviderTaxonomy#207R00000X "Internal Medicine"
* specialty[1] = $NUCCProviderTaxonomy#207RC0000X "Cardiovascular Disease"
* organization = Reference(HartfordGeneralHospital)

Instance: AnonymousPractitionerARole
InstanceOf: PlannetPractitionerRole
Description: "Practitioner role that doesn't refer to a specific practitioner"
Usage: #example
* meta.profile = Canonical(PlannetPractitionerRole)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* code = ProviderRoleCS#ph
* healthcareService = Reference(BurrClinicServices)
* extension[network-reference].valueReference = Reference(AcmeOfCTStandardNetwork)
* location[0] = Reference(HartfordHospitalLocation2)
* specialty[0] =  $NUCCProviderTaxonomy#207R00000X "Internal Medicine"
* organization = Reference(HartfordCancerClinicLLCOrganization)

Instance: CancerClinicHealthcareService
InstanceOf: PlannetHealthcareService
Description: "Cancer Clinic Services"
Usage: #example
* meta.profile = Canonical(PlannetHealthcareService)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[deliverymethod].extension[type].valueCodeableConcept = DeliveryMethodCS#physical
* category = HealthcareServiceCategoryCS#Outpatient 
* providedBy = Reference(HartfordCancerClinicLLCOrganization)
* specialty = $NUCCProviderTaxonomy#XXXXXXXX "Cancer Treament"  
* location[0] = Reference(CancerClinicLocation)

Instance: CancerClinicLocation
InstanceOf: PlannetLocation
Description: "Location1 of Cancer Clinic"
Usage: #example
* meta.profile = Canonical(PlannetLocation) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "Cancer Clinic"
* type = $V3RoleCode#HOSP 
* managingOrganization = Reference(HartfordCancerClinicLLCOrganization)
* extension[accessibility][1].valueCodeableConcept = AccessibilityCS#pubtrans
* extension[accessibility][0].valueCodeableConcept = AccessibilityCS#adacomp
* telecom[0].system = #phone
* telecom[0].value = "(111)-222-3333"
* telecom[0].rank = 2
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][1].valueCode  = #tue
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][2].valueCode  = #wed
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][3].valueCode  = #thu
* telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][4].valueCode  = #fri 
* telecom[0].extension[contactpoint-availabletime][0].extension[allDay].valueBoolean = true
* telecom[1].system = #url
* telecom[1].value = "https://www.hgh.com"
* telecom[1].rank = 1
* address.line[0] = "456 Main Street"
* address.city = "Anytown"
* address.state = "CT"
* address.postalCode = "00014-1234"
* position.longitude = 3.0
* position.latitude = 15.0
* hoursOfOperation[0].daysOfWeek[0]  = #mon 
* hoursOfOperation[0].daysOfWeek[1] = #tue
* hoursOfOperation[0].daysOfWeek[2] = #wed
* hoursOfOperation[0].daysOfWeek[3] = #thu
* hoursOfOperation[0].daysOfWeek[4]  = #fri 

Instance: HartfordCancerClinicLLCOrganization
InstanceOf: PlannetOrganization
Description: "HartfordCancerClinicLLC"
Usage: #example
* meta.profile = Canonical(PlannetOrganization)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* identifier[NPI].value = "NPI788"
* identifier[NPI].system = $NPICS
* name = "Hamilton Clinic"
* telecom[0].system = #phone
* telecom[0].value = "(111)-222-3333"
* telecom[0].rank = 2
* telecom[1].system = #url
* telecom[1].value = "https://www.hartfordgeneralhospital.com"
* telecom[1].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Anytown"
* address.state = "CT"
* address.postalCode = "00014-1234"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "(111)-222-3333"
* contact.telecom[0].rank = 1
* type = OrgTypeCS#fac "Facility"

