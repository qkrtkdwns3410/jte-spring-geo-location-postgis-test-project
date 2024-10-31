package com.image.vuespringlocationpostgis.main;

import com.image.vuespringlocationpostgis.main.example.domain.ExampleDemoModel;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * packageName    : com.image.vuespringlocationpostgis.main
 * fileName       : TemplateController
 * author         : Jun
 * date           : 24. 10. 31.
 * description    :
 * ===========================================================
 * DATE              AUTHOR             NOTE
 * -----------------------------------------------------------
 * 24. 10. 31.        Jun       최초 생성
 */
@Controller
@RequiredArgsConstructor
@Slf4j
public class TemplateController {
    
    @GetMapping("/example")
    public String index(Model model) {
        
        ExampleDemoModel exampleDemoModel = ExampleDemoModel.create("Example", "Jun");
        
        model.addAttribute("model", exampleDemoModel);
        
        return "pages/example";
    }
}
