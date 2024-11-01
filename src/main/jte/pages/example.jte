@param com.image.vuespringlocationpostgis.main.example.domain.ExampleDemoModel model
@template.layout.header()
<script src="https://unpkg.com/typescript@latest/lib/typescript.js"></script>

<h2>환영합니다, ${model.getName()}님!</h2>
<p>이곳은 메인 콘텐츠 영역입니다.</p>

<script type="text/javascript">
    // js 에서 현재 기기의 위 경도 가져오기
    navigator.geolocation.getCurrentPosition(function (position) {
        console.log(position.coords.latitude, position.coords.longitude);
    });
</script>

@template.layout.footer()
