Vector3::Vector3(float, float, float) [base object constructor]:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        movss   DWORD PTR [rbp-12], xmm0
        movss   DWORD PTR [rbp-16], xmm1
        movss   DWORD PTR [rbp-20], xmm2
        mov     rax, QWORD PTR [rbp-8]
        movss   xmm0, DWORD PTR [rbp-12]
        movss   DWORD PTR [rax], xmm0
        mov     rax, QWORD PTR [rbp-8]
        movss   xmm0, DWORD PTR [rbp-16]
        movss   DWORD PTR [rax+4], xmm0
        mov     rax, QWORD PTR [rbp-8]
        movss   xmm0, DWORD PTR [rbp-20]
        movss   DWORD PTR [rax+8], xmm0
        nop
        pop     rbp
        ret
        .set    Vector3::Vector3(float, float, float) [complete object constructor],Vector3::Vector3(float, float, float) [base object constructor]
Vector3::operator+(Vector3 const&) const:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 64
        mov     QWORD PTR [rbp-40], rdi
        mov     QWORD PTR [rbp-48], rsi
        mov     rax, QWORD PTR [rbp-40]
        movss   xmm1, DWORD PTR [rax+8]
        mov     rax, QWORD PTR [rbp-48]
        movss   xmm0, DWORD PTR [rax+8]
        movaps  xmm2, xmm1
        addss   xmm2, xmm0
        mov     rax, QWORD PTR [rbp-40]
        movss   xmm1, DWORD PTR [rax+4]
        mov     rax, QWORD PTR [rbp-48]
        movss   xmm0, DWORD PTR [rax+4]
        movaps  xmm3, xmm1
        addss   xmm3, xmm0
        mov     rax, QWORD PTR [rbp-40]
        movss   xmm1, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-48]
        movss   xmm0, DWORD PTR [rax]
        addss   xmm1, xmm0
        movd    edx, xmm1
        lea     rax, [rbp-12]
        movaps  xmm1, xmm3
        movd    xmm0, edx
        mov     rdi, rax
        call    Vector3::Vector3(float, float, float) [complete object constructor]
        mov     rax, QWORD PTR [rbp-12]
        mov     QWORD PTR [rbp-24], rax
        mov     eax, DWORD PTR [rbp-4]
        mov     DWORD PTR [rbp-16], eax
        mov     rax, QWORD PTR [rbp-24]
        movss   xmm0, DWORD PTR [rbp-16]
        movaps  xmm1, xmm0
        movq    xmm0, rax
        leave
        ret
Matrix3::Matrix3() [base object constructor]:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-24], rdi
        mov     DWORD PTR [rbp-4], 0
        jmp     .L5
.L10:
        mov     DWORD PTR [rbp-8], 0
        jmp     .L6
.L9:
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, DWORD PTR [rbp-8]
        jne     .L7
        movss   xmm0, DWORD PTR .LC0[rip]
        jmp     .L8
.L7:
        pxor    xmm0, xmm0
.L8:
        mov     rcx, QWORD PTR [rbp-24]
        mov     esi, DWORD PTR [rbp-8]
        mov     edx, DWORD PTR [rbp-4]
        mov     rax, rdx
        add     rax, rax
        add     rax, rdx
        add     rax, rsi
        movss   DWORD PTR [rcx+rax*4], xmm0
        add     DWORD PTR [rbp-8], 1
.L6:
        cmp     DWORD PTR [rbp-8], 2
        jbe     .L9
        add     DWORD PTR [rbp-4], 1
.L5:
        cmp     DWORD PTR [rbp-4], 2
        jbe     .L10
        nop
        nop
        pop     rbp
        ret
        .set    Matrix3::Matrix3() [complete object constructor],Matrix3::Matrix3() [base object constructor]
Matrix3::multiply(Vector3 const&) const:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 64
        mov     QWORD PTR [rbp-40], rdi
        mov     QWORD PTR [rbp-48], rsi
        mov     rax, QWORD PTR [rbp-40]
        movss   xmm1, DWORD PTR [rax+24]
        mov     rax, QWORD PTR [rbp-48]
        movss   xmm0, DWORD PTR [rax]
        mulss   xmm1, xmm0
        mov     rax, QWORD PTR [rbp-40]
        movss   xmm2, DWORD PTR [rax+28]
        mov     rax, QWORD PTR [rbp-48]
        movss   xmm0, DWORD PTR [rax+4]
        mulss   xmm0, xmm2
        addss   xmm1, xmm0
        mov     rax, QWORD PTR [rbp-40]
        movss   xmm2, DWORD PTR [rax+32]
        mov     rax, QWORD PTR [rbp-48]
        movss   xmm0, DWORD PTR [rax+8]
        mulss   xmm0, xmm2
        movaps  xmm4, xmm1
        addss   xmm4, xmm0
        mov     rax, QWORD PTR [rbp-40]
        movss   xmm1, DWORD PTR [rax+12]
        mov     rax, QWORD PTR [rbp-48]
        movss   xmm0, DWORD PTR [rax]
        mulss   xmm1, xmm0
        mov     rax, QWORD PTR [rbp-40]
        movss   xmm2, DWORD PTR [rax+16]
        mov     rax, QWORD PTR [rbp-48]
        movss   xmm0, DWORD PTR [rax+4]
        mulss   xmm0, xmm2
        addss   xmm1, xmm0
        mov     rax, QWORD PTR [rbp-40]
        movss   xmm2, DWORD PTR [rax+20]
        mov     rax, QWORD PTR [rbp-48]
        movss   xmm0, DWORD PTR [rax+8]
        mulss   xmm0, xmm2
        movaps  xmm3, xmm1
        addss   xmm3, xmm0
        mov     rax, QWORD PTR [rbp-40]
        movss   xmm1, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-48]
        movss   xmm0, DWORD PTR [rax]
        mulss   xmm1, xmm0
        mov     rax, QWORD PTR [rbp-40]
        movss   xmm2, DWORD PTR [rax+4]
        mov     rax, QWORD PTR [rbp-48]
        movss   xmm0, DWORD PTR [rax+4]
        mulss   xmm0, xmm2
        addss   xmm1, xmm0
        mov     rax, QWORD PTR [rbp-40]
        movss   xmm2, DWORD PTR [rax+8]
        mov     rax, QWORD PTR [rbp-48]
        movss   xmm0, DWORD PTR [rax+8]
        mulss   xmm0, xmm2
        addss   xmm1, xmm0
        movd    edx, xmm1
        lea     rax, [rbp-12]
        movaps  xmm2, xmm4
        movaps  xmm1, xmm3
        movd    xmm0, edx
        mov     rdi, rax
        call    Vector3::Vector3(float, float, float) [complete object constructor]
        mov     rax, QWORD PTR [rbp-12]
        mov     QWORD PTR [rbp-24], rax
        mov     eax, DWORD PTR [rbp-4]
        mov     DWORD PTR [rbp-16], eax
        mov     rax, QWORD PTR [rbp-24]
        movss   xmm0, DWORD PTR [rbp-16]
        movaps  xmm1, xmm0
        movq    xmm0, rax
        leave
        ret
Shape::Shape() [base object constructor]:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        mov     edx, OFFSET FLAT:vtable for Shape+16
        mov     rax, QWORD PTR [rbp-8]
        mov     QWORD PTR [rax], rdx
        nop
        pop     rbp
        ret
        .set    Shape::Shape() [complete object constructor],Shape::Shape() [base object constructor]
Rectangle::Rectangle(float, float) [base object constructor]:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        movss   DWORD PTR [rbp-12], xmm0
        movss   DWORD PTR [rbp-16], xmm1
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    Shape::Shape() [base object constructor]
        mov     edx, OFFSET FLAT:vtable for Rectangle+16
        mov     rax, QWORD PTR [rbp-8]
        mov     QWORD PTR [rax], rdx
        mov     rax, QWORD PTR [rbp-8]
        movss   xmm0, DWORD PTR [rbp-12]
        movss   DWORD PTR [rax+8], xmm0
        mov     rax, QWORD PTR [rbp-8]
        movss   xmm0, DWORD PTR [rbp-16]
        movss   DWORD PTR [rax+12], xmm0
        nop
        leave
        ret
        .set    Rectangle::Rectangle(float, float) [complete object constructor],Rectangle::Rectangle(float, float) [base object constructor]
Rectangle::area() const:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        mov     rax, QWORD PTR [rbp-8]
        movss   xmm1, DWORD PTR [rax+8]
        mov     rax, QWORD PTR [rbp-8]
        movss   xmm0, DWORD PTR [rax+12]
        mulss   xmm0, xmm1
        pop     rbp
        ret
Rectangle::perimeter() const:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        mov     rax, QWORD PTR [rbp-8]
        movss   xmm1, DWORD PTR [rax+8]
        mov     rax, QWORD PTR [rbp-8]
        movss   xmm0, DWORD PTR [rax+12]
        addss   xmm0, xmm1
        addss   xmm0, xmm0
        pop     rbp
        ret
Circle::Circle(float) [base object constructor]:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        movss   DWORD PTR [rbp-12], xmm0
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    Shape::Shape() [base object constructor]
        mov     edx, OFFSET FLAT:vtable for Circle+16
        mov     rax, QWORD PTR [rbp-8]
        mov     QWORD PTR [rax], rdx
        mov     rax, QWORD PTR [rbp-8]
        movss   xmm0, DWORD PTR [rbp-12]
        movss   DWORD PTR [rax+8], xmm0
        nop
        leave
        ret
        .set    Circle::Circle(float) [complete object constructor],Circle::Circle(float) [base object constructor]
Circle::area() const:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-24], rdi
        movss   xmm0, DWORD PTR .LC2[rip]
        movss   DWORD PTR [rbp-4], xmm0
        mov     rax, QWORD PTR [rbp-24]
        movss   xmm1, DWORD PTR [rax+8]
        movss   xmm0, DWORD PTR .LC2[rip]
        mulss   xmm1, xmm0
        mov     rax, QWORD PTR [rbp-24]
        movss   xmm0, DWORD PTR [rax+8]
        mulss   xmm0, xmm1
        pop     rbp
        ret
Circle::perimeter() const:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-24], rdi
        movss   xmm0, DWORD PTR .LC2[rip]
        movss   DWORD PTR [rbp-4], xmm0
        mov     rax, QWORD PTR [rbp-24]
        movss   xmm1, DWORD PTR [rax+8]
        movss   xmm0, DWORD PTR .LC3[rip]
        mulss   xmm0, xmm1
        pop     rbp
        ret
main:
        push    rbp
        mov     rbp, rsp
        add     rsp, -128
        lea     rax, [rbp-20]
        movss   xmm2, DWORD PTR .LC4[rip]
        movss   xmm1, DWORD PTR .LC5[rip]
        mov     edx, DWORD PTR .LC0[rip]
        movd    xmm0, edx
        mov     rdi, rax
        call    Vector3::Vector3(float, float, float) [complete object constructor]
        lea     rax, [rbp-32]
        movss   xmm2, DWORD PTR .LC6[rip]
        movss   xmm1, DWORD PTR .LC7[rip]
        mov     edx, DWORD PTR .LC8[rip]
        movd    xmm0, edx
        mov     rdi, rax
        call    Vector3::Vector3(float, float, float) [complete object constructor]
        lea     rdx, [rbp-32]
        lea     rax, [rbp-20]
        mov     rsi, rdx
        mov     rdi, rax
        call    Vector3::operator+(Vector3 const&) const
        movq    rax, xmm0
        movaps  xmm0, xmm1
        mov     QWORD PTR [rbp-44], rax
        movss   DWORD PTR [rbp-36], xmm0
        lea     rax, [rbp-80]
        mov     rdi, rax
        call    Matrix3::Matrix3() [complete object constructor]
        lea     rdx, [rbp-44]
        lea     rax, [rbp-80]
        mov     rsi, rdx
        mov     rdi, rax
        call    Matrix3::multiply(Vector3 const&) const
        movq    rax, xmm0
        movaps  xmm0, xmm1
        mov     QWORD PTR [rbp-92], rax
        movss   DWORD PTR [rbp-84], xmm0
        mov     DWORD PTR [rbp-8], 42
        lea     rdx, [rbp-8]
        lea     rax, [rbp-96]
        mov     rsi, rdx
        mov     rdi, rax
        call    Box<int>::Box(int const&) [complete object constructor]
        mov     DWORD PTR [rbp-4], 100
        lea     rdx, [rbp-4]
        lea     rax, [rbp-96]
        mov     rsi, rdx
        mov     rdi, rax
        call    Box<int>::set(int const&)
        lea     rax, [rbp-112]
        movss   xmm1, DWORD PTR .LC7[rip]
        mov     edx, DWORD PTR .LC9[rip]
        movd    xmm0, edx
        mov     rdi, rax
        call    Rectangle::Rectangle(float, float) [complete object constructor]
        lea     rax, [rbp-128]
        mov     edx, DWORD PTR .LC4[rip]
        movd    xmm0, edx
        mov     rdi, rax
        call    Circle::Circle(float) [complete object constructor]
        mov     eax, 0
        leave
        ret
Box<int>::Box(int const&) [base object constructor]:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        mov     QWORD PTR [rbp-16], rsi
        mov     rax, QWORD PTR [rbp-16]
        mov     edx, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        mov     DWORD PTR [rax], edx
        nop
        pop     rbp
        ret
        .set    Box<int>::Box(int const&) [complete object constructor],Box<int>::Box(int const&) [base object constructor]
Box<int>::set(int const&):
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        mov     QWORD PTR [rbp-16], rsi
        mov     rax, QWORD PTR [rbp-16]
        mov     edx, DWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        mov     DWORD PTR [rax], edx
        nop
        pop     rbp
        ret
vtable for Circle:
        .quad   0
        .quad   typeinfo for Circle
        .quad   Circle::area() const
        .quad   Circle::perimeter() const
vtable for Rectangle:
        .quad   0
        .quad   typeinfo for Rectangle
        .quad   Rectangle::area() const
        .quad   Rectangle::perimeter() const
vtable for Shape:
        .quad   0
        .quad   typeinfo for Shape
        .quad   __cxa_pure_virtual
        .quad   __cxa_pure_virtual
typeinfo for Circle:
        .quad   vtable for __cxxabiv1::__si_class_type_info+16
        .quad   typeinfo name for Circle
        .quad   typeinfo for Shape
typeinfo name for Circle:
        .string "6Circle"
typeinfo for Rectangle:
        .quad   vtable for __cxxabiv1::__si_class_type_info+16
        .quad   typeinfo name for Rectangle
        .quad   typeinfo for Shape
typeinfo name for Rectangle:
        .string "9Rectangle"
typeinfo for Shape:
        .quad   vtable for __cxxabiv1::__class_type_info+16
        .quad   typeinfo name for Shape
typeinfo name for Shape:
        .string "5Shape"
.LC0:
        .long   1065353216
.LC2:
        .long   1078530011
.LC3:
        .long   1086918619
.LC4:
        .long   1077936128
.LC5:
        .long   1073741824
.LC6:
        .long   1086324736
.LC7:
        .long   1084227584
.LC8:
        .long   1082130432
.LC9:
        .long   1092616192
