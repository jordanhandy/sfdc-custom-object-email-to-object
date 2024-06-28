public class TestEmailToCustomObjectHandler {
    @isTest
    public static void TestInboundMail(){
        EmailToCustObjectHandler newEmail = new EmailToCustObjectHandler();
        Messaging.InboundEmail email = new Messaging.InboundEmail(); // Test email
        Messaging.InboundEnvelope env = new Messaging.InboundEnvelope(); // Test envelope
        email.subject = '9@/7@/No@/@/2@/Couldn't do something@/';
        email.fromAddress = 'testaddress@test.com';
        email.plainTextBody = '9@/7@/No@/@/2@/Couldn't do something@/';
        
        Test.startTest();
        Messaging.InboundEmailResult result = newEmail.handleInboundEmail(email,env);
        Test.stopTest();
        
    }
}