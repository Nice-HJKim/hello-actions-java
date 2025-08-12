package com.example;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class AppTest {
    @Test
    void helloMessageContainsHello() {
        String msg = "Hello from Java 17 + Maven + Docker!";
        assertTrue(msg.contains("Hello"), "메시지에 'Hello'가 있어야 해요");
    }
}
