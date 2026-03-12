package com.yw.age;

import lombok.*;

@Data // getter, setter
@AllArgsConstructor // 오버로딩
@NoArgsConstructor // 기본 생성자

//lombok을 쓰는건 가독성도 있지만 수정에 유용한게 큼 변수명 수정이나 추가 될때 하나하나 안고쳐도 된다
public class Bean {

    private int brith;
    private int age;

}
