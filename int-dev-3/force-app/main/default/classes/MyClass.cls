public with sharing class MyClass {
    public MyClass() {
     System.now();
    }

    // As User I need to know what charges exist in my stripe payment process

    // 0. store my stripe API keys
    // 1. CustomMetadata - Can't do with Agentforce agents.  They can exfiltrate the metadata down.
    // 2. NamedCredentials (legacy)
    // 3. External Credentials, Named Credentials, Named Principals 
}