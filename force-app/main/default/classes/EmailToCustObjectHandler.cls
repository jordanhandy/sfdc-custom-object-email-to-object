global class EmailToCustObjectHandler implements Messaging.InboundEmailHandler {
    global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope envelope) {
        Messaging.InboundEmailResult result = new Messaging.InboundEmailresult();
        // Prepare variables for Flow
        Map<String,Object> params = new Map<String,Object>();
        params.put('emailMessage',email);
        // Start Flow
        Flow.Interview.Email_to_Custom_Object startFlow = new Flow.Interview.Email_to_Custom_Object(params);
        startFlow.start();
        return result;
    }
}