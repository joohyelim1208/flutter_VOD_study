import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 11) 마지막으로 디버그 모드 해제. 우측 상단 디버그 라벨이 사라진다!
      debugShowCheckedModeBanner: false,
      // 2) 가장 처음 실행 될 페이지를 선언. 가상 디바이스에서 실행해보기
      home: StorePage(),
    );
  }
}

// 1) StorePage에 마우스-퀵 픽스-첫번째 Creat 1 missing override
// 1) tatelessWidget을 구현하기 위한 빌드 함수를 불러온다. 함수 재정의 해주기
class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 1) 스토에 페이지의 UI요소를 구현
    // 1) 각 페이지에는 Scaffold()가 있어야 한다!
    return SafeArea(
      // 12) afeArea: 앱 상단, 하단의 영역이 까맣게 보이게 된다! 해제해 줘야함
      child: Scaffold(
        // 3) Column의 사용방법 커맨드+클릭!. 나오는 속성들 중 사용할 것 복사
        // body= 전체영역
        body: Column(
          // 4) 커맨드+. 'Wrap with wiget' 선택. 스테이터스 바 만들 때 사용
          children: [
            // 3) Text나 image들 세로로 배치 시작
            // (8) Padding너무 길어서 접어줌)
            // 10) Padding 커맨드+. 'Wrap with SizedBox'
            SizedBox(
              // 10) SizedBox의 높이값
              height: 70, // 10) 여기까지 앱 구현 완료!!!

              child: Padding(
                // 7) Padding은 무조건 padding이라는 속성이 들어가줘야 한다!
                // 7) 양 끝 텍스트 사이가 화면 끝에서 떨어짐
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  // 7) Row 커맨드+. 'Wrap with widget'. Padding으로 바꿔줌
                  children: [
                    // 12) 남은 영역을 다 차지하게 해주는 것
                    Spacer(),
                    // 3)  Text나 image들 가로로 배치 시작
                    Text(
                      'Women',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    // 5) Text 글자 스타일 수정. 커맨드+클릭 속성들이 나옴
                    // 5) style:추가 TextStyle 속성 내에서 굵기를 변경해 봄
                    // 6) Spacer(): Row나 Colrumn 위젯 사이의 간격을 조정하는데 사용
                    // 6) 'Women'과 나머지 text들 사이가 벌어짐. (flex: 를 사용하는데 양쪽 간격을 조정함. 여기서는 간격이 동일하기 때문에 사용안함)
                    Spacer(),

                    Text('Kids', style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text(
                      'Shoes',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text('Bag', style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(),
                  ], // 3) 출력. 좌측 최상단에 텍스트들 생겨남!
                ),
              ),
            ),
            // 8) Image asset위젯으로 이미지 넣어줌
            // 9) Image 커맨드+. 'Wrap with wiget' 선택. Expanded 위젯으로 입력
            // 9) 딱 붙어있던 이미지들이 위 아래로 사이가 벌어짐
            // 9) Expanded 위젯의 fit으로 사진크기 맞춤
            Expanded(child: Image.asset('assets/bag.jpg', fit: BoxFit.cover)),
            Expanded(child: Image.asset('assets/shoes.jpg', fit: BoxFit.cover)),
          ],
        ),
      ),
    );
  }
}
