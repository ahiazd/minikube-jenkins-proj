package com.example.mydemo

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class MydemoApplication

fun main(args: Array<String>) {
	runApplication<MydemoApplication>(*args)
}
