.class public Lorg/mozilla/javascript/v8dtoa/CachedPowers;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final CACHED_POWERS:[Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

.field static final CACHED_POWERS_SPACING:I = 0x8

.field static final GRISU_CACHE_MAX_DISTANCE:I = 0x1b

.field static final GRISU_CACHE_OFFSET:I = 0x134

.field static final kD_1_LOG2_10:D = 0.30102999566398114


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v8, -0xec

    const-class v0, Lorg/mozilla/javascript/v8dtoa/CachedPowers;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/mozilla/javascript/v8dtoa/CachedPowers;->$assertionsDisabled:Z

    const/16 v0, 0x52

    new-array v0, v0, [Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    new-instance v3, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v4, -0x19e530fcc2e5ba21L    # -7.119544461293868E183

    const/16 v6, -0x43f

    const/16 v7, -0x134

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v3, v0, v2

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x548f01e838653936L    # -1.9422270795218533E-99

    const/16 v5, -0x424

    const/16 v6, -0x12c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x884e03414323b1L

    const/16 v5, -0x40a

    const/16 v6, -0x124

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    new-instance v1, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v2, -0x41a96e10be9429f4L    # -2.102000359445382E-8

    const/16 v4, -0x3ef

    const/16 v5, -0x11c

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v1, v0, v9

    new-instance v1, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v2, -0x722fe0526f8003c4L

    const/16 v4, -0x3d4

    const/16 v5, -0x114

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v1, v0, v10

    const/4 v1, 0x5

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x2caea3d7ceaa657dL    # -2.26322692478697E93

    const/16 v5, -0x3ba

    const/16 v6, -0x10c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x628e53705259364bL    # -7.493054934953073E-167

    const/16 v5, -0x39f

    const/16 v6, -0x104

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x1563dd88dc117435L    # -3.528403750458361E205

    const/16 v5, -0x385

    const/16 v6, -0xfc

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x5133b66ebf87ac93L    # -2.9122175920280315E-83

    const/16 v5, -0x36a

    const/16 v6, -0xf4

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x7dc3ed86a24931a9L    # -6.706874809979197E-298

    const/16 v5, -0x34f

    invoke-direct {v2, v3, v4, v5, v8}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x3def6bc9b204a9c9L    # -1.7801515902834194E10

    const/16 v5, -0x335

    const/16 v6, -0xe4

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x6f691590c7b767b1L    # -9.446644264022058E-229

    const/16 v5, -0x31a

    const/16 v6, -0xdc

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x288b7a34da7dc539L    # -1.9742012563753734E113

    const/16 v5, -0x300

    const/16 v6, -0xd4

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x5f7930326840680cL    # -5.44440516233217E-152

    const/16 v5, -0x2e5

    const/16 v6, -0xcc

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x10cbf567e8d5531bL    # -4.747712713437416E227

    const/16 v5, -0x2cb

    const/16 v6, -0xc4

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x4dc79804d5ca4d72L    # -9.052753895722614E-67

    const/16 v5, -0x2b0

    const/16 v6, -0xbc

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x7b372b202d39c0c5L

    const/16 v5, -0x295

    const/16 v6, -0xb4

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x3a22bbd8e52c3246L    # -3.6229827630892155E28

    const/16 v5, -0x27b

    const/16 v6, -0xac

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x6c94603144da366aL

    const/16 v5, -0x260

    const/16 v6, -0xa4

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x245393db829d5a7cL    # -4.0348679811698514E133

    const/16 v5, -0x246

    const/16 v6, -0x9c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x5c5499a7f2a0250aL

    const/16 v5, -0x22b

    const/16 v6, -0x94

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0xc1d076c213c0edaL    # -1.697840085096286E250

    const/16 v5, -0x211

    const/16 v6, -0x8c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x4a4a525755007f48L    # -5.794114199993178E-50

    const/16 v5, -0x1f6

    const/16 v6, -0x84

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x789da0fa9383b575L    # -4.244933697818544E-273

    const/16 v5, -0x1db

    const/16 v6, -0x7c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x3643009fcb3ecfadL    # -1.6554681233961726E47

    const/16 v5, -0x1c1

    const/16 v6, -0x74

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x69b17a736e45d9abL    # -3.11516668503665E-201

    const/16 v5, -0x1a6

    const/16 v6, -0x6c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x200688db8fd68143L    # -2.133969929569866E154

    const/16 v5, -0x18c

    const/16 v6, -0x64

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x59204260471a4771L    # -1.920607023716196E-121

    const/16 v5, -0x171

    const/16 v6, -0x5c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x756a030778b826cL    # -1.715850627682332E273

    const/16 v5, -0x157

    const/16 v6, -0x54

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x46bb8f6c70576431L    # -7.873105934271013E-33

    const/16 v5, -0x13c

    const/16 v6, -0x4c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x75f70f0740f0ea95L

    const/16 v5, -0x121

    const/16 v6, -0x44

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x324fdaaa9acece4aL    # -1.7003548087794113E66

    const/16 v5, -0x107

    const/16 v6, -0x3c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x66c01d392f848054L    # -4.580160027317821E-187

    const/16 v5, -0x34

    invoke-direct {v2, v3, v4, v8, v5}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x1ba3ef3bd5d4c4faL    # -2.7765798838517802E175

    const/16 v5, -0xd2

    const/16 v6, -0x2c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x55dbdb66968c6d2dL

    const/16 v5, -0xb7

    const/16 v6, -0x24

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x2784a0d7cff35f2L    # -4.845858208376255E296

    const/16 v5, -0x9d

    const/16 v6, -0x1c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x431af79b6deee515L    # -2.3351081718433464E-15

    const/16 v5, -0x82

    const/16 v6, -0x14

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x734333f690af7734L

    const/16 v5, -0x67

    const/16 v6, -0xc

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x2e48e8a71de69ad4L    # -4.4858555924162756E85

    const/16 v5, -0x4d

    const/4 v6, -0x4

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide/high16 v3, -0x63c0000000000000L

    const/16 v5, -0x32

    invoke-direct {v2, v3, v4, v5, v10}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x172b5af000000000L    # -9.645113526668761E196

    const/16 v5, -0x18

    const/16 v6, 0xc

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x5287143a539e0000L    # -1.2233944464302153E-89

    const/16 v5, 0x14

    invoke-direct {v2, v3, v4, v9, v5}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x7ec0c687076bf67cL

    const/16 v5, 0x1e

    const/16 v6, 0x1c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x3f68318436f8ea4dL    # -1523.6208840472216

    const/16 v5, 0x38

    const/16 v6, 0x24

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x7081cd318415a390L

    const/16 v5, 0x53

    const/16 v6, 0x2c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x2a2dc75b54167f98L    # -2.611902547306385E105

    const/16 v5, 0x6d

    const/16 v6, 0x34

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x60b0d8d9e865ddbbL    # -7.090732707359209E-158

    const/16 v5, 0x88

    const/16 v6, 0x3c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x129c5dce2b3b04d9L    # -8.663356847439609E218

    const/16 v5, 0xa2

    const/16 v6, 0x44

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x4f219ac773375258L

    const/16 v5, 0xbd

    const/16 v6, 0x4c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x7c38f771e5549a25L

    const/16 v5, 0xd8

    const/16 v6, 0x54

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x3ba2e206bd8ee266L    # -2.148461634749893E21

    const/16 v5, 0xf2

    const/16 v6, 0x5c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x6db296d359e418a8L

    const/16 v5, 0x10d

    const/16 v6, 0x64

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x25fe119be58f7216L    # -3.793131735537088E125

    const/16 v5, 0x127

    const/16 v6, 0x6c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x5d925c66651088b6L    # -7.595502866903672E-143

    const/16 v5, 0x142

    const/16 v6, 0x74

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0xdf687844b82947bL    # -2.1229822382340004E241

    const/16 v5, 0x15c

    const/16 v6, 0x7c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x4bab1b5e8622e789L    # -1.3313844388339742E-56

    const/16 v5, 0x177

    const/16 v6, 0x84

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x79a4796da4643a3eL

    const/16 v5, 0x192

    const/16 v6, 0x8c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x37caac3a3769a2c3L    # -7.257282579865988E39

    const/16 v5, 0x1ac

    const/16 v6, 0x94

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x6ad54ba305685f4dL

    const/16 v5, 0x1c7

    const/16 v6, 0x9c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x21b96042665fa01dL    # -1.4125279610281668E146

    const/16 v5, 0x1e1

    const/16 v6, 0xa4

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x5a643dcb24c673dbL

    const/16 v5, 0x1fc

    const/16 v6, 0xac

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x939658d5c6760a4L

    const/16 v5, 0x216

    const/16 v6, 0xb4

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x482340acab164132L    # -1.320014277353474E-39

    const/16 v5, 0x231

    const/16 v6, 0xbc

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x77030ce80dddbe1eL

    const/16 v5, 0x24c

    const/16 v6, 0xc4

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x33df31642ca3875bL    # -5.274982909952618E58

    const/16 v5, 0x266

    const/16 v6, 0xcc

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x67e9a50c84deac21L

    const/16 v5, 0x281

    const/16 v6, 0xd4

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x1d5f4a2368e0cfc6L    # -1.2317267793607207E167

    const/16 v5, 0x29b

    const/16 v6, 0xdc

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x57262eaca31c4c6aL    # -6.709633619351549E-112

    const/16 v5, 0x2b6

    const/16 v6, 0xe4

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x46483265b58bbc4L

    const/16 v5, 0x2d0

    const/16 v6, 0xec

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x4489b3b3585bbbf0L    # -2.9511216385201906E-22

    const/16 v5, 0x2eb

    const/16 v6, 0xf4

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x7454711049bf63e6L    # -1.879432716722633E-252

    const/16 v5, 0x306

    const/16 v6, 0xfc

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x2fe010ef59a87bd4L    # -9.244217386926419E77

    const/16 v5, 0x320

    const/16 v6, 0x104

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x64ef5b1a166eced7L

    const/16 v5, 0x33b

    const/16 v6, 0x10c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x18ef64045e63f363L    # -2.890738792238544E188

    const/16 v5, 0x355

    const/16 v6, 0x114

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x53d7df269dc40bd7L    # -5.648048561783085E-96

    const/16 v5, 0x370

    const/16 v6, 0x11c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x7fbbb4a18558307bL

    const/16 v5, 0x38b

    const/16 v6, 0x124

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x40de1bbffc5322d3L    # -1.365020887875516E-4

    const/16 v5, 0x3a5

    const/16 v6, 0x12c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x719863d0a1bb0071L

    const/16 v5, 0x3c0

    const/16 v6, 0x134

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x2bcce862637347bfL    # -4.078079573321233E97

    const/16 v5, 0x3da

    const/16 v6, 0x13c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x61e6246d4b1ce457L    # -1.122567288590934E-163

    const/16 v5, 0x3f5

    const/16 v6, 0x144

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x1469409145208827L    # -1.8696317485595454E210

    const/16 v5, 0x40f

    const/16 v6, 0x14c

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    const-wide v3, -0x5078fdc4640f1195L    # -9.702500096513226E-80

    const/16 v5, 0x42a

    const/16 v6, 0x154

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;-><init>(JSS)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/mozilla/javascript/v8dtoa/CachedPowers;->CACHED_POWERS:[Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCachedPower(IIILorg/mozilla/javascript/v8dtoa/DiyFp;)I
    .locals 4

    const/16 v0, 0x40

    sub-int v1, p1, p0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide v2, 0x3fd34413509f79feL    # 0.30102999566398114

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0x134

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lorg/mozilla/javascript/v8dtoa/CachedPowers;->CACHED_POWERS:[Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;

    aget-object v0, v1, v0

    iget-wide v1, v0, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;->significand:J

    invoke-virtual {p3, v1, v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setF(J)V

    iget-short v1, v0, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;->binaryExponent:S

    invoke-virtual {p3, v1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setE(I)V

    sget-boolean v1, Lorg/mozilla/javascript/v8dtoa/CachedPowers;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p3}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v1

    add-int/2addr v1, p0

    if-gt p1, v1, :cond_0

    invoke-virtual {p3}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v1

    add-int/2addr v1, p0

    if-le v1, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-short v0, v0, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;->decimalExponent:S

    return v0
.end method
