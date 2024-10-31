package com.image.vuespringlocationpostgis.main.example.domain;

/**
 * packageName    : com.image.vuespringlocationpostgis.main
 * fileName       : ExampleDemoModel
 * author         : ipeac
 * date           : 24. 10. 31.
 * description    :
 * ===========================================================
 * DATE              AUTHOR             NOTE
 * -----------------------------------------------------------
 * 24. 10. 31.        ipeac       최초 생성
 */
public class ExampleDemoModel {
    private String title;
    private String name;
    
    public ExampleDemoModel(String title, String name) {
        this.title = title;
        this.name = name;
    }
    
    public static ExampleDemoModel create(String title, String name) {
        return new ExampleDemoModel(title, name);
    }
    
    public String getTitle() {
        return title;
    }
    
    public String getName() {
        return name;
    }
}
