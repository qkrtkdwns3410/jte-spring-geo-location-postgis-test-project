@import gg.jte.Content

@param Content content

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>사이트 제목</title>
</head>
<body>
@template.layout.header()

<div class="content">
    ${content}
</div>

@template.layout.footer()
</body>
</html>
