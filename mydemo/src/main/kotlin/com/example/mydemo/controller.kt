package com.example.mydemo

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class  controller {

    @GetMapping
    fun helloWorld(): String {
        return "Hello World!"
    }
}
