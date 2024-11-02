@param com.image.vuespringlocationpostgis.main.example.domain.ExampleDemoModel model
@param String kakaoMapApiKey
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>내 웹사이트</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        nav ul {
            display: flex;
            list-style-type: none;
            padding: 0;
        }

        nav ul li {
            margin-right: 20px;
        }
    </style>
</head>
<body>

@template.layout.header()

<main>
    <h2>환영합니다, ${model.getName()}님!</h2>
    <p>이곳은 메인 콘텐츠 영역입니다.</p>

    <div id="map" style="width: 100%; height: 400px;"></div>
</main>

@template.layout.footer()
<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=${kakaoMapApiKey}"></script>
<script type="text/javascript">
    // js 에서 사용할 변수 선언
    const myLocation = {latitude: 37.5665, longitude: 126.9780};

    // 지도 초기화 함수
    function initializeMap() {
        // 지도 옵션 설정
        const mapContainer = document.getElementById('map'), // 지도를 표시할 div
            mapOption = {
                center: new kakao.maps.LatLng(myLocation.latitude, myLocation.longitude), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };

        // 지도 생성
        const map = new kakao.maps.Map(mapContainer, mapOption);

        // 마커를 표시할 위치와 내용을 설정
        const markerPosition = new kakao.maps.LatLng(myLocation.latitude, myLocation.longitude);

        // 마커 생성
        const marker = new kakao.maps.Marker({
            position: markerPosition
        });

        // 마커를 지도에 표시
        marker.setMap(map);

        // 인포윈도우에 표시할 내용
        const infowindow = new kakao.maps.InfoWindow({
            content: '<div style="padding:5px;">현재 위치</div>'
        });

        // 마커에 인포윈도우 표시
        infowindow.open(map, marker);
    }

    // js 에서 현재 기기의 위 경도 가져오기
    navigator.geolocation.getCurrentPosition(function (position) {
        myLocation.latitude = position.coords.latitude;
        myLocation.longitude = position.coords.longitude;
        initializeMap();
    }, function (error) {
        console.error('Error occurred. Error code: ' + error.code);
        // 기본 위치로 지도 초기화
        initializeMap();
    });

    // 페이지 로드 시 지도 초기화
    document.addEventListener('DOMContentLoaded', initializeMap);
</script>
</body>
</html>
