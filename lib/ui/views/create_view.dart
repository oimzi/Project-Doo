import 'package:flutter/material.dart';

class CreateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1.0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            '새로운 doo루틴을 시작합니다.',
                            style:
                                TextStyle(fontSize: 14, color: Colors.black26),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                          width: 40,
                          height: 8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black12,
                                ),
                              ),
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black12,
                                ),
                              ),
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                            child: Text(
                              '새롭게 시작하고 싶은 \n습관이 무엇인가요?',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            )),
                        TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blueAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                            ),

                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black12,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                            ),
                            labelStyle: TextStyle(fontSize: 20.0, color: Colors.black12),
                            labelText: '클릭! 간단한 제목을 지어주세요.',
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            ButtonTheme(
              minWidth: double.infinity,
              height: 56.0,
              child: FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                //disabledColor: Colors.grey,
                //disabledTextColor: Colors.black,
                padding: EdgeInsets.all(12.0),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  /*...*/
                },
                child: Text(
                  "다음",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            )
          ],
        ));
  }
}
