import ballerina/io;
import healthcare/uscore;

public function main() {
    io:println(medicationRequest());
}

function medicationRequest() returns uscore:USCoreMedicationRequestProfile{
    uscore:USCoreMedicationRequestProfile medicationRequest = {
        
        medicationReference: {
            reference: "medication/123"
        }, 
        subject: {
            reference: "Patient/123"
        },
        medicationCodeableConcept: {
            coding: [
                {
                    system: "http://www.nlm.nih.gov/research/umls/rxnorm",
                    code: "code",
                    display: "display"
                }
            ]
        },
        intent: "option", 
        status: "unknown",
        dosageInstruction: [
            {   
                sequence: 1,
                additionalInstruction: [
                    {
                        coding: [
                            {
                                system: "http://snomed.info/sct",
                                code: "311501008",
                                display: "Half to one hour before food"
                            }
                        ]
                    }
                ],
                doseAndRate: [
                    {
                        doseQuantity: {
                            value: 10,
                            unit: "mg",
                            system: "http://unitsofmeasure.org",
                            code: "code",
                            comparator: ">"
                        },
                        rateRatio: {
                            numerator: {
                                value: 10, 
                                comparator: ">=",
                                unit: "mg"
                            }
                        },
                        id: "NF249024S",
                        'type: {
                            coding: [
                                {
                                    system: "http://terminology.hl7.org/CodeSystem/data-absent-reason",
                                    code: "unknown",
                                    display: "Unknown"
                                }
                            ]
                        }
                    }
                ]
            }
        ]
    
    };

    return medicationRequest;
}





