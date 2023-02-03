package demo.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ExampleController {

    @GetMapping(value = "/example")
    public ResponseEntity<?> example() {
        return ResponseEntity.ok("Hello World");
    }
}
