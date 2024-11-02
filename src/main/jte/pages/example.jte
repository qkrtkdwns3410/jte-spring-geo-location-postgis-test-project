@param com.image.vuespringlocationpostgis.main.example.domain.ExampleDemoModel model
@param String kakaoMapApiKey
@template.layout.header()
<h2>환영합니다, ${model.getName()}님!</h2>
<p>이곳은 메인 콘텐츠 영역입니다.</p>
<script type="text/javascript">
    const KAKAO_MAP_API_KEY = "${kakaoMapApiKey}";
</script>
<script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=${kakaoMapApiKey}&autoload=false"></script>
<script type="text/javascript">
    // js 에서 현재 기기의 위 경도 가져오기
    navigator.geolocation.getCurrentPosition(function (position) {
        console.log(position.coords.latitude, position.coords.longitude);
    });
</script>

@template.layout.footer()
