global class EmailToCustObjectHandler implements Messaging.InboundEmailHandler {
    global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope envelope) {
        Messaging.InboundEmailResult result = new Messaging.InboundEmailresult();
        // Prepare variables for Flow
        Map<String,Object> params = new Map<String,Object>();
        params.put('envelope_from',envelope.fromAddress);
        params.put('envelope_to',envelope.toAddress);
        params.put('ccAddresses',email.ccAddresses);
        params.put('binaryAttachments',email.binaryAttachments);
        params.put('textAttachments',email.textAttachments);
        params.put('fromAddress',email.fromAddress);
        params.put('fromName',email.fromName);
        params.put('htmlBody',email.htmlBody);
        params.put('messageId',email.messageId);
        params.put('plaintextBody',email.plainTextBody);
        params.put('references',email.references);
        params.put('subject',email.subject);
        params.put('toAddresses',email.toAddresses);
        params.put('recordToken',EmailMessages.getRecordIdFromEmail(email.subject,email.plainTextBody,email.htmlBody));
        // Start Flow
        Flow.Interview.Email_to_Custom_Object startFlow = new Flow.Interview.Email_to_Custom_Object(params);
        startFlow.start();
        return result;
    }
}