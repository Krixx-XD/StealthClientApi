main:
 stp	x29, x30, [sp, #-176]!
 mov	x29, sp
 add	x0, sp, #0x98
 fmov	s2, #3.000000000000000000e+00
 fmov	s1, #2.000000000000000000e+00
 fmov	s0, #1.000000000000000000e+00
 bl	0 <main>
    R_AARCH64_CALL26 Vector3::Vector3(float, float, float)
 add	x0, sp, #0x88
 fmov	s2, #6.000000000000000000e+00
 fmov	s1, #5.000000000000000000e+00
 fmov	s0, #4.000000000000000000e+00
 bl	0 <main>
    R_AARCH64_CALL26 Vector3::Vector3(float, float, float)
 add	x1, sp, #0x88
 add	x0, sp, #0x98
 bl	0 <main>
    R_AARCH64_CALL26 Vector3::operator+(Vector3 const&) const
 fmov	s29, s0
 fmov	s30, s1
 fmov	s31, s2
 str	s29, [sp, #120]
 str	s30, [sp, #124]
 str	s31, [sp, #128]
 add	x0, sp, #0x50
 bl	0 <main>
    R_AARCH64_CALL26 Matrix3::Matrix3()
 add	x1, sp, #0x78
 add	x0, sp, #0x50
 bl	0 <main>
    R_AARCH64_CALL26 Matrix3::multiply(Vector3 const&) const
 fmov	s29, s0
 fmov	s30, s1
 fmov	s31, s2
 str	s29, [sp, #64]
 str	s30, [sp, #68]
 str	s31, [sp, #72]
 mov	w0, #0x2a                  	// #42
 str	w0, [sp, #168]
 add	x1, sp, #0xa8
 add	x0, sp, #0x38
 bl	0 <main>
    R_AARCH64_CALL26 Box<int>::Box(int const&)
 mov	w0, #0x64                  	// #100
 str	w0, [sp, #172]
 add	x1, sp, #0xac
 add	x0, sp, #0x38
 bl	0 <main>
    R_AARCH64_CALL26 Box<int>::set(int const&)
 add	x0, sp, #0x28
 fmov	s1, #5.000000000000000000e+00
 fmov	s0, #1.000000000000000000e+01
 bl	0 <main>
    R_AARCH64_CALL26 Rectangle::Rectangle(float, float)
 add	x0, sp, #0x18
 fmov	s0, #3.000000000000000000e+00
 bl	0 <main>
    R_AARCH64_CALL26 Circle::Circle(float)
 mov	w0, #0x0                   	// #0
 ldp	x29, x30, [sp], #176
 ret
Vector3::Vector3(float, float, float):
 sub	sp, sp, #0x20
 str	x0, [sp, #24]
 str	s0, [sp, #20]
 str	s1, [sp, #16]
 str	s2, [sp, #12]
 ldr	x0, [sp, #24]
 ldr	s31, [sp, #20]
 str	s31, [x0]
 ldr	x0, [sp, #24]
 ldr	s31, [sp, #16]
 str	s31, [x0, #4]
 ldr	x0, [sp, #24]
 ldr	s31, [sp, #12]
 str	s31, [x0, #8]
 nop
 add	sp, sp, #0x20
 ret
Vector3::operator+(Vector3 const&) const:
 stp	x29, x30, [sp, #-80]!
 mov	x29, sp
 str	x0, [sp, #40]
 str	x1, [sp, #32]
 ldr	x0, [sp, #40]
 ldr	s30, [x0]
 ldr	x0, [sp, #32]
 ldr	s31, [x0]
 fadd	s29, s30, s31
 ldr	x0, [sp, #40]
 ldr	s30, [x0, #4]
 ldr	x0, [sp, #32]
 ldr	s31, [x0, #4]
 fadd	s28, s30, s31
 ldr	x0, [sp, #40]
 ldr	s30, [x0, #8]
 ldr	x0, [sp, #32]
 ldr	s31, [x0, #8]
 fadd	s31, s30, s31
 add	x0, sp, #0x40
 fmov	s2, s31
 fmov	s1, s28
 fmov	s0, s29
 bl	0 <Vector3::operator+(Vector3 const&) const>
    R_AARCH64_CALL26 Vector3::Vector3(float, float, float)
 add	x0, sp, #0x30
 add	x1, sp, #0x40
 ldr	x2, [x1]
 ldr	w1, [x1, #8]
 str	x2, [x0]
 str	w1, [x0, #8]
 ldr	s29, [sp, #48]
 ldr	s30, [sp, #52]
 ldr	s31, [sp, #56]
 fmov	s0, s29
 fmov	s1, s30
 fmov	s2, s31
 ldp	x29, x30, [sp], #80
 ret
Matrix3::Matrix3():
 sub	sp, sp, #0x20
 str	x0, [sp, #8]
 str	wzr, [sp, #28]
 b	78 <Matrix3::Matrix3()+0x78>
 str	wzr, [sp, #24]
 b	60 <Matrix3::Matrix3()+0x60>
 ldr	w1, [sp, #28]
 ldr	w0, [sp, #24]
 cmp	w1, w0
 b.ne	30 <Matrix3::Matrix3()+0x30>  // b.any
 fmov	s31, #1.000000000000000000e+00
 b	34 <Matrix3::Matrix3()+0x34>
 movi	v31.2s, #0x0
 ldr	x2, [sp, #8]
 ldr	w3, [sp, #24]
 ldr	w1, [sp, #28]
 mov	x0, x1
 lsl	x0, x0, #1
 add	x0, x0, x1
 add	x0, x0, x3
 str	s31, [x2, x0, lsl #2]
 ldr	w0, [sp, #24]
 add	w0, w0, #0x1
 str	w0, [sp, #24]
 ldr	w0, [sp, #24]
 cmp	w0, #0x2
 b.ls	18 <Matrix3::Matrix3()+0x18>  // b.plast
 ldr	w0, [sp, #28]
 add	w0, w0, #0x1
 str	w0, [sp, #28]
 ldr	w0, [sp, #28]
 cmp	w0, #0x2
 b.ls	10 <Matrix3::Matrix3()+0x10>  // b.plast
 nop
 nop
 add	sp, sp, #0x20
 ret
Matrix3::multiply(Vector3 const&) const:
 stp	x29, x30, [sp, #-80]!
 mov	x29, sp
 str	x0, [sp, #40]
 str	x1, [sp, #32]
 ldr	x0, [sp, #40]
 ldr	s30, [x0]
 ldr	x0, [sp, #32]
 ldr	s31, [x0]
 fmul	s30, s30, s31
 ldr	x0, [sp, #40]
 ldr	s29, [x0, #4]
 ldr	x0, [sp, #32]
 ldr	s31, [x0, #4]
 fmul	s31, s29, s31
 fadd	s30, s30, s31
 ldr	x0, [sp, #40]
 ldr	s29, [x0, #8]
 ldr	x0, [sp, #32]
 ldr	s31, [x0, #8]
 fmul	s31, s29, s31
 fadd	s28, s30, s31
 ldr	x0, [sp, #40]
 ldr	s30, [x0, #12]
 ldr	x0, [sp, #32]
 ldr	s31, [x0]
 fmul	s30, s30, s31
 ldr	x0, [sp, #40]
 ldr	s29, [x0, #16]
 ldr	x0, [sp, #32]
 ldr	s31, [x0, #4]
 fmul	s31, s29, s31
 fadd	s30, s30, s31
 ldr	x0, [sp, #40]
 ldr	s29, [x0, #20]
 ldr	x0, [sp, #32]
 ldr	s31, [x0, #8]
 fmul	s31, s29, s31
 fadd	s27, s30, s31
 ldr	x0, [sp, #40]
 ldr	s30, [x0, #24]
 ldr	x0, [sp, #32]
 ldr	s31, [x0]
 fmul	s30, s30, s31
 ldr	x0, [sp, #40]
 ldr	s29, [x0, #28]
 ldr	x0, [sp, #32]
 ldr	s31, [x0, #4]
 fmul	s31, s29, s31
 fadd	s30, s30, s31
 ldr	x0, [sp, #40]
 ldr	s29, [x0, #32]
 ldr	x0, [sp, #32]
 ldr	s31, [x0, #8]
 fmul	s31, s29, s31
 fadd	s31, s30, s31
 add	x0, sp, #0x40
 fmov	s2, s31
 fmov	s1, s27
 fmov	s0, s28
 bl	0 <Matrix3::multiply(Vector3 const&) const>
    R_AARCH64_CALL26 Vector3::Vector3(float, float, float)
 add	x0, sp, #0x30
 add	x1, sp, #0x40
 ldr	x2, [x1]
 ldr	w1, [x1, #8]
 str	x2, [x0]
 str	w1, [x0, #8]
 ldr	s29, [sp, #48]
 ldr	s30, [sp, #52]
 ldr	s31, [sp, #56]
 fmov	s0, s29
 fmov	s1, s30
 fmov	s2, s31
 ldp	x29, x30, [sp], #80
 ret
Shape::Shape():
 sub	sp, sp, #0x10
 str	x0, [sp, #8]
 adrp	x0, 0 <Shape::Shape()>
    R_AARCH64_ADR_PREL_PG_HI21 vtable for Shape+0x10
 add	x1, x0, #0x0
    R_AARCH64_ADD_ABS_LO12_NC vtable for Shape+0x10
 ldr	x0, [sp, #8]
 str	x1, [x0]
 nop
 add	sp, sp, #0x10
 ret
Rectangle::Rectangle(float, float):
 stp	x29, x30, [sp, #-32]!
 mov	x29, sp
 str	x0, [sp, #24]
 str	s0, [sp, #20]
 str	s1, [sp, #16]
 ldr	x0, [sp, #24]
 bl	0 <Rectangle::Rectangle(float, float)>
    R_AARCH64_CALL26 Shape::Shape()
 adrp	x0, 0 <Rectangle::Rectangle(float, float)>
    R_AARCH64_ADR_PREL_PG_HI21 vtable for Rectangle+0x10
 add	x1, x0, #0x0
    R_AARCH64_ADD_ABS_LO12_NC vtable for Rectangle+0x10
 ldr	x0, [sp, #24]
 str	x1, [x0]
 ldr	x0, [sp, #24]
 ldr	s31, [sp, #20]
 str	s31, [x0, #8]
 ldr	x0, [sp, #24]
 ldr	s31, [sp, #16]
 str	s31, [x0, #12]
 nop
 ldp	x29, x30, [sp], #32
 ret
Rectangle::area() const:
 sub	sp, sp, #0x10
 str	x0, [sp, #8]
 ldr	x0, [sp, #8]
 ldr	s30, [x0, #8]
 ldr	x0, [sp, #8]
 ldr	s31, [x0, #12]
 fmul	s31, s30, s31
 fmov	s0, s31
 add	sp, sp, #0x10
 ret
Rectangle::perimeter() const:
 sub	sp, sp, #0x10
 str	x0, [sp, #8]
 ldr	x0, [sp, #8]
 ldr	s30, [x0, #8]
 ldr	x0, [sp, #8]
 ldr	s31, [x0, #12]
 fadd	s31, s30, s31
 fadd	s31, s31, s31
 fmov	s0, s31
 add	sp, sp, #0x10
 ret
Circle::Circle(float):
 stp	x29, x30, [sp, #-32]!
 mov	x29, sp
 str	x0, [sp, #24]
 str	s0, [sp, #20]
 ldr	x0, [sp, #24]
 bl	0 <Circle::Circle(float)>
    R_AARCH64_CALL26 Shape::Shape()
 adrp	x0, 0 <Circle::Circle(float)>
    R_AARCH64_ADR_PREL_PG_HI21 vtable for Circle+0x10
 add	x1, x0, #0x0
    R_AARCH64_ADD_ABS_LO12_NC vtable for Circle+0x10
 ldr	x0, [sp, #24]
 str	x1, [x0]
 ldr	x0, [sp, #24]
 ldr	s31, [sp, #20]
 str	s31, [x0, #8]
 nop
 ldp	x29, x30, [sp], #32
 ret
Circle::area() const:
 sub	sp, sp, #0x20
 str	x0, [sp, #8]
 mov	w0, #0xfdb                 	// #4059
 movk	w0, #0x4049, lsl #16
 fmov	s31, w0
 str	s31, [sp, #28]
 ldr	x0, [sp, #8]
 ldr	s31, [x0, #8]
 mov	w0, #0xfdb                 	// #4059
 movk	w0, #0x4049, lsl #16
 fmov	s30, w0
 fmul	s30, s31, s30
 ldr	x0, [sp, #8]
 ldr	s31, [x0, #8]
 fmul	s31, s30, s31
 fmov	s0, s31
 add	sp, sp, #0x20
 ret
Circle::perimeter() const:
 sub	sp, sp, #0x20
 str	x0, [sp, #8]
 mov	w0, #0xfdb                 	// #4059
 movk	w0, #0x4049, lsl #16
 fmov	s31, w0
 str	s31, [sp, #28]
 ldr	x0, [sp, #8]
 ldr	s31, [x0, #8]
 mov	w0, #0xfdb                 	// #4059
 movk	w0, #0x40c9, lsl #16
 fmov	s30, w0
 fmul	s31, s31, s30
 fmov	s0, s31
 add	sp, sp, #0x20
 ret
Box<int>::Box(int const&):
 sub	sp, sp, #0x10
 str	x0, [sp, #8]
 str	x1, [sp]
 ldr	x0, [sp]
 ldr	w1, [x0]
 ldr	x0, [sp, #8]
 str	w1, [x0]
 nop
 add	sp, sp, #0x10
 ret
Box<int>::set(int const&):
 sub	sp, sp, #0x10
 str	x0, [sp, #8]
 str	x1, [sp]
 ldr	x0, [sp]
 ldr	w1, [x0]
 ldr	x0, [sp, #8]
 str	w1, [x0]
 nop
 add	sp, sp, #0x10
 ret
