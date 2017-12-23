.class Lorg/mozilla/javascript/DToA;
.super Ljava/lang/Object;


# static fields
.field private static final Bias:I = 0x3ff

.field private static final Bletch:I = 0x10

.field private static final Bndry_mask:I = 0xfffff

.field static final DTOSTR_EXPONENTIAL:I = 0x3

.field static final DTOSTR_FIXED:I = 0x2

.field static final DTOSTR_PRECISION:I = 0x4

.field static final DTOSTR_STANDARD:I = 0x0

.field static final DTOSTR_STANDARD_EXPONENTIAL:I = 0x1

.field private static final Exp_11:I = 0x3ff00000

.field private static final Exp_mask:I = 0x7ff00000

.field private static final Exp_mask_shifted:I = 0x7ff

.field private static final Exp_msk1:I = 0x100000

.field private static final Exp_msk1L:J = 0x10000000000000L

.field private static final Exp_shift:I = 0x14

.field private static final Exp_shift1:I = 0x14

.field private static final Exp_shiftL:I = 0x34

.field private static final Frac_mask:I = 0xfffff

.field private static final Frac_mask1:I = 0xfffff

.field private static final Frac_maskL:J = 0xfffffffffffffL

.field private static final Int_max:I = 0xe

.field private static final Log2P:I = 0x1

.field private static final P:I = 0x35

.field private static final Quick_max:I = 0xe

.field private static final Sign_bit:I = -0x80000000

.field private static final Ten_pmax:I = 0x16

.field private static final bigtens:[D

.field private static final dtoaModes:[I

.field private static final n_bigtens:I = 0x5

.field private static final tens:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x5

    const/16 v0, 0x17

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/javascript/DToA;->tens:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1

    sput-object v0, Lorg/mozilla/javascript/DToA;->bigtens:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/mozilla/javascript/DToA;->dtoaModes:[I

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data

    :array_1
    .array-data 8
        0x4341c37937e08000L    # 1.0E16
        0x4693b8b5b5056e17L    # 1.0E32
        0x4d384f03e93ff9f5L    # 1.0E64
        0x5a827748f9301d32L    # 1.0E128
        0x75154fdd7f73bf3cL    # 1.0E256
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3
        0x2
        0x2
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BASEDIGIT(I)C
    .locals 1

    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x57

    :goto_0
    int-to-char v0, v0

    return v0

    :cond_0
    add-int/lit8 v0, p0, 0x30

    goto :goto_0
.end method

.method static JS_dtoa(DIZI[ZLjava/lang/StringBuilder;)I
    .locals 32

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v24, v0

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v25, v0

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v4

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, p5, v4

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    move-wide/from16 v0, p0

    invoke-static {v0, v1, v4}, Lorg/mozilla/javascript/DToA;->setWord0(DI)D

    move-result-wide p0

    :goto_0
    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v4

    const/high16 v5, 0x7ff00000

    and-int/2addr v4, v5

    const/high16 v5, 0x7ff00000

    if-ne v4, v5, :cond_2

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v4

    if-nez v4, :cond_1

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v4

    const v5, 0xfffff

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    const-string v4, "Infinity"

    :goto_1
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x270f

    :goto_2
    return v4

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-boolean v5, p5, v4

    goto :goto_0

    :cond_1
    const-string v4, "NaN"

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    cmpl-double v4, p0, v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v4, 0x30

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    move-wide/from16 v0, p0

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/DToA;->d2b(D[I[I)Ljava/math/BigInteger;

    move-result-object v19

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x14

    and-int/lit16 v4, v4, 0x7ff

    if-eqz v4, :cond_8

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v5

    const v6, 0xfffff

    and-int/2addr v5, v6

    const/high16 v6, 0x3ff00000    # 1.875f

    or-int/2addr v5, v6

    move-wide/from16 v0, p0

    invoke-static {v0, v1, v5}, Lorg/mozilla/javascript/DToA;->setWord0(DI)D

    move-result-wide v5

    add-int/lit16 v7, v4, -0x3ff

    const/4 v4, 0x0

    move/from16 v23, v4

    move-wide/from16 v30, v5

    move-wide/from16 v4, v30

    move v6, v7

    :goto_3
    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v4, v7

    const-wide v7, 0x3fd287a7636f4361L    # 0.289529654602168

    mul-double/2addr v4, v7

    const-wide v7, 0x3fc68a288b60c8b3L    # 0.1760912590558

    add-double/2addr v4, v7

    int-to-double v7, v6

    const-wide v9, 0x3fd34413509f79fbL    # 0.301029995663981

    mul-double/2addr v7, v9

    add-double/2addr v7, v4

    double-to-int v4, v7

    const-wide/16 v9, 0x0

    cmpg-double v5, v7, v9

    if-gez v5, :cond_4

    int-to-double v9, v4

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, -0x1

    :cond_4
    const/4 v5, 0x1

    if-ltz v4, :cond_62

    const/16 v7, 0x16

    if-gt v4, v7, :cond_62

    sget-object v5, Lorg/mozilla/javascript/DToA;->tens:[D

    aget-wide v7, v5, v4

    cmpg-double v5, p0, v7

    if-gez v5, :cond_5

    add-int/lit8 v4, v4, -0x1

    :cond_5
    const/4 v5, 0x0

    move/from16 v30, v5

    move v5, v4

    move/from16 v4, v30

    :goto_4
    const/4 v7, 0x0

    aget v7, v25, v7

    sub-int v6, v7, v6

    add-int/lit8 v20, v6, -0x1

    if-ltz v20, :cond_a

    const/16 v18, 0x0

    :goto_5
    if-ltz v5, :cond_b

    const/16 v17, 0x0

    add-int v20, v20, v5

    move/from16 v16, v5

    :goto_6
    if-ltz p2, :cond_6

    const/16 v6, 0x9

    move/from16 v0, p2

    if-le v0, v6, :cond_61

    :cond_6
    const/4 v7, 0x0

    :goto_7
    const/4 v6, 0x1

    const/4 v8, 0x5

    if-le v7, v8, :cond_60

    add-int/lit8 v7, v7, -0x4

    const/4 v6, 0x0

    move/from16 v22, v7

    move v7, v6

    :goto_8
    const/4 v6, 0x1

    const/4 v11, 0x0

    packed-switch v22, :pswitch_data_0

    move/from16 v21, v6

    move v10, v11

    :goto_9
    const/4 v9, 0x0

    if-ltz v10, :cond_17

    const/16 v6, 0xe

    if-gt v10, v6, :cond_17

    if-eqz v7, :cond_17

    const/4 v8, 0x0

    const/4 v7, 0x2

    if-lez v5, :cond_e

    sget-object v6, Lorg/mozilla/javascript/DToA;->tens:[D

    and-int/lit8 v12, v5, 0xf

    aget-wide v12, v6, v12

    shr-int/lit8 v6, v5, 0x4

    and-int/lit8 v14, v6, 0x10

    if-eqz v14, :cond_5e

    and-int/lit8 v6, v6, 0xf

    sget-object v7, Lorg/mozilla/javascript/DToA;->bigtens:[D

    const/4 v14, 0x4

    aget-wide v14, v7, v14

    div-double v14, p0, v14

    const/4 v7, 0x3

    move-wide/from16 v30, v12

    move v12, v6

    move v13, v8

    move v8, v7

    move-wide/from16 v6, v30

    :goto_a
    if-eqz v12, :cond_d

    and-int/lit8 v26, v12, 0x1

    if-eqz v26, :cond_7

    add-int/lit8 v8, v8, 0x1

    sget-object v26, Lorg/mozilla/javascript/DToA;->bigtens:[D

    aget-wide v26, v26, v13

    mul-double v6, v6, v26

    :cond_7
    shr-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_8
    const/4 v4, 0x0

    aget v4, v25, v4

    const/4 v5, 0x0

    aget v5, v24, v5

    add-int/2addr v4, v5

    add-int/lit16 v7, v4, 0x432

    const/16 v4, 0x20

    if-le v7, v4, :cond_9

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v4

    int-to-long v4, v4

    rsub-int/lit8 v6, v7, 0x40

    shl-long/2addr v4, v6

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v6

    add-int/lit8 v8, v7, -0x20

    ushr-int/2addr v6, v8

    int-to-long v8, v6

    or-long/2addr v4, v8

    :goto_b
    long-to-double v8, v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v4

    const/high16 v5, 0x1f00000

    sub-int/2addr v4, v5

    invoke-static {v8, v9, v4}, Lorg/mozilla/javascript/DToA;->setWord0(DI)D

    move-result-wide v5

    add-int/lit16 v7, v7, -0x433

    const/4 v4, 0x1

    move/from16 v23, v4

    move-wide/from16 v30, v5

    move-wide/from16 v4, v30

    move v6, v7

    goto/16 :goto_3

    :cond_9
    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v4

    int-to-long v4, v4

    rsub-int/lit8 v6, v7, 0x20

    shl-long/2addr v4, v6

    goto :goto_b

    :cond_a
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v18, v0

    const/16 v20, 0x0

    goto/16 :goto_5

    :cond_b
    sub-int v18, v18, v5

    neg-int v0, v5

    move/from16 v17, v0

    const/16 v16, 0x0

    goto/16 :goto_6

    :pswitch_0
    const/4 v11, -0x1

    const/16 p4, 0x0

    move/from16 v21, v6

    move v10, v11

    goto/16 :goto_9

    :pswitch_1
    const/4 v6, 0x0

    :pswitch_2
    if-gtz p4, :cond_c

    const/16 p4, 0x1

    :cond_c
    move/from16 v21, v6

    move/from16 v11, p4

    move/from16 v10, p4

    goto/16 :goto_9

    :pswitch_3
    const/4 v6, 0x0

    :pswitch_4
    add-int v8, p4, v5

    add-int/lit8 v10, v8, 0x1

    add-int/lit8 v11, v10, -0x1

    if-gtz v10, :cond_5f

    move/from16 v21, v6

    goto/16 :goto_9

    :cond_d
    div-double v12, v14, v6

    move v7, v8

    :goto_c
    if-eqz v4, :cond_5b

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v12, v14

    if-gez v6, :cond_5b

    if-lez v10, :cond_5b

    if-gtz v11, :cond_10

    const/4 v6, 0x1

    move v8, v10

    move v9, v7

    move v7, v5

    :goto_d
    int-to-double v14, v9

    mul-double/2addr v14, v12

    const-wide/high16 v26, 0x401c000000000000L    # 7.0

    add-double v14, v14, v26

    invoke-static {v14, v15}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v9

    const/high16 v26, 0x3400000

    sub-int v9, v9, v26

    invoke-static {v14, v15, v9}, Lorg/mozilla/javascript/DToA;->setWord0(DI)D

    move-result-wide v26

    if-nez v8, :cond_5a

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    sub-double v14, v12, v14

    cmpl-double v6, v14, v26

    if-lez v6, :cond_11

    const/16 v4, 0x31

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_e
    neg-int v6, v5

    if-eqz v6, :cond_5d

    sget-object v12, Lorg/mozilla/javascript/DToA;->tens:[D

    and-int/lit8 v13, v6, 0xf

    aget-wide v12, v12, v13

    mul-double v12, v12, p0

    shr-int/lit8 v6, v6, 0x4

    move/from16 v30, v6

    move v6, v7

    move/from16 v31, v8

    move-wide v7, v12

    move/from16 v12, v30

    move/from16 v13, v31

    :goto_e
    if-eqz v12, :cond_5c

    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_f

    add-int/lit8 v6, v6, 0x1

    sget-object v14, Lorg/mozilla/javascript/DToA;->bigtens:[D

    aget-wide v14, v14, v13

    mul-double/2addr v7, v14

    :cond_f
    shr-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_10
    add-int/lit8 v6, v5, -0x1

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double/2addr v12, v14

    add-int/lit8 v7, v7, 0x1

    move v8, v11

    move/from16 v30, v6

    move v6, v9

    move v9, v7

    move/from16 v7, v30

    goto :goto_d

    :cond_11
    move-wide/from16 v0, v26

    neg-double v12, v0

    cmpg-double v6, v14, v12

    if-gez v6, :cond_12

    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v4, 0x30

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_12
    const/4 v6, 0x1

    :goto_f
    if-nez v6, :cond_59

    const/4 v9, 0x1

    if-eqz v21, :cond_1a

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sget-object v6, Lorg/mozilla/javascript/DToA;->tens:[D

    add-int/lit8 v28, v8, -0x1

    aget-wide v28, v6, v28

    div-double v12, v12, v28

    sub-double v12, v12, v26

    const/4 v6, 0x0

    :goto_10
    double-to-long v0, v14

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v28, v0

    sub-double v14, v14, v28

    const-wide/16 v28, 0x30

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-char v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p6

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmpg-double v26, v14, v12

    if-gez v26, :cond_13

    add-int/lit8 v4, v7, 0x1

    goto/16 :goto_2

    :cond_13
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v26, v26, v14

    cmpg-double v26, v26, v12

    if-gez v26, :cond_16

    :cond_14
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v5, 0x39

    if-eq v4, v5, :cond_15

    :goto_11
    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v7, 0x1

    goto/16 :goto_2

    :cond_15
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_14

    add-int/lit8 v7, v7, 0x1

    const/16 v4, 0x30

    goto :goto_11

    :cond_16
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v8, :cond_19

    move v6, v9

    move-wide v12, v14

    :goto_12
    if-eqz v6, :cond_57

    const/4 v6, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_17
    :goto_13
    const/4 v6, 0x0

    aget v6, v24, v6

    if-ltz v6, :cond_25

    const/16 v6, 0xe

    if-gt v5, v6, :cond_25

    sget-object v4, Lorg/mozilla/javascript/DToA;->tens:[D

    aget-wide v6, v4, v5

    if-gez p4, :cond_20

    if-gtz v10, :cond_20

    if-ltz v10, :cond_18

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    mul-double/2addr v8, v6

    cmpg-double v4, p0, v8

    if-ltz v4, :cond_18

    if-nez p3, :cond_1f

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    mul-double/2addr v6, v8

    cmpl-double v4, p0, v6

    if-nez v4, :cond_1f

    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v4, 0x30

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_19
    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    mul-double v12, v12, v26

    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    mul-double v14, v14, v26

    goto/16 :goto_10

    :cond_1a
    sget-object v6, Lorg/mozilla/javascript/DToA;->tens:[D

    add-int/lit8 v12, v8, -0x1

    aget-wide v12, v6, v12

    mul-double v26, v26, v12

    const/4 v6, 0x1

    :goto_14
    double-to-long v0, v14

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    long-to-double v12, v0

    sub-double v12, v14, v12

    const-wide/16 v14, 0x30

    add-long v14, v14, v28

    long-to-int v14, v14

    int-to-char v14, v14

    move-object/from16 v0, p6

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v6, v8, :cond_1e

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v26

    cmpl-double v6, v12, v14

    if-lez v6, :cond_1d

    :cond_1b
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v5, 0x39

    if-eq v4, v5, :cond_1c

    :goto_15
    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v7, 0x1

    goto/16 :goto_2

    :cond_1c
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1b

    add-int/lit8 v7, v7, 0x1

    const/16 v4, 0x30

    goto :goto_15

    :cond_1d
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    sub-double v14, v14, v26

    cmpg-double v6, v12, v14

    if-gez v6, :cond_58

    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->stripTrailingZeroes(Ljava/lang/StringBuilder;)V

    add-int/lit8 v4, v7, 0x1

    goto/16 :goto_2

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double/2addr v14, v12

    goto :goto_14

    :cond_1f
    const/16 v4, 0x31

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_20
    const/4 v4, 0x1

    :goto_16
    div-double v8, p0, v6

    double-to-long v8, v8

    long-to-double v11, v8

    mul-double/2addr v11, v6

    sub-double v11, p0, v11

    const-wide/16 v13, 0x30

    add-long/2addr v13, v8

    long-to-int v13, v13

    int-to-char v13, v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v4, v10, :cond_24

    add-double v10, v11, v11

    cmpl-double v4, v10, v6

    if-gtz v4, :cond_21

    cmpl-double v4, v10, v6

    if-nez v4, :cond_22

    const-wide/16 v6, 0x1

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_21

    if-eqz p3, :cond_22

    :cond_21
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v6, 0x39

    if-eq v4, v6, :cond_23

    :goto_17
    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_22
    add-int/lit8 v4, v5, 0x1

    goto/16 :goto_2

    :cond_23
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_21

    add-int/lit8 v5, v5, 0x1

    const/16 v4, 0x30

    goto :goto_17

    :cond_24
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double p0, v11, v8

    const-wide/16 v8, 0x0

    cmpl-double v8, p0, v8

    if-eqz v8, :cond_22

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_25
    const/4 v9, 0x0

    if-eqz v21, :cond_56

    const/4 v6, 0x2

    move/from16 v0, v22

    if-ge v0, v6, :cond_2a

    if-eqz v23, :cond_29

    const/4 v6, 0x0

    aget v6, v24, v6

    add-int/lit16 v6, v6, 0x433

    :goto_18
    move/from16 v7, v17

    move/from16 v8, v18

    move v9, v6

    move/from16 v6, v16

    :goto_19
    add-int v13, v18, v9

    add-int v12, v20, v9

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    move v14, v7

    move/from16 v16, v17

    move/from16 v17, v6

    move v7, v8

    move v8, v12

    :goto_1a
    if-lez v7, :cond_54

    if-lez v8, :cond_54

    if-ge v7, v8, :cond_2c

    move v6, v7

    :goto_1b
    sub-int/2addr v13, v6

    sub-int/2addr v7, v6

    sub-int/2addr v8, v6

    move v12, v8

    move v15, v7

    :goto_1c
    if-lez v16, :cond_53

    if-eqz v21, :cond_2d

    if-lez v14, :cond_52

    invoke-static {v9, v14}, Lorg/mozilla/javascript/DToA;->pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    :goto_1d
    sub-int v8, v16, v14

    if-eqz v8, :cond_26

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    :cond_26
    :goto_1e
    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    if-lez v17, :cond_27

    move/from16 v0, v17

    invoke-static {v14, v0}, Lorg/mozilla/javascript/DToA;->pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v14

    :cond_27
    const/4 v8, 0x0

    const/4 v9, 0x2

    move/from16 v0, v22

    if-ge v0, v9, :cond_51

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v9

    if-nez v9, :cond_51

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v9

    const v16, 0xfffff

    and-int v9, v9, v16

    if-nez v9, :cond_51

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v9

    const/high16 v16, 0x7fe00000

    and-int v9, v9, v16

    if-eqz v9, :cond_51

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v12, 0x1

    const/4 v8, 0x1

    move v12, v13

    :goto_1f
    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v18

    const/16 v16, 0x0

    const/4 v13, 0x0

    move/from16 v30, v13

    move/from16 v13, v16

    move/from16 v16, v30

    :goto_20
    const/16 v19, 0x4

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_2e

    shl-int/lit8 v13, v13, 0x8

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_28

    aget-byte v19, v18, v16

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v13, v13, v19

    :cond_28
    add-int/lit8 v16, v16, 0x1

    goto :goto_20

    :cond_29
    const/4 v6, 0x0

    aget v6, v25, v6

    rsub-int/lit8 v6, v6, 0x36

    goto/16 :goto_18

    :cond_2a
    add-int/lit8 v6, v10, -0x1

    move/from16 v0, v17

    if-lt v0, v6, :cond_2b

    sub-int v7, v17, v6

    move/from16 v6, v16

    :goto_21
    if-gez v10, :cond_55

    sub-int v8, v18, v10

    const/4 v9, 0x0

    goto/16 :goto_19

    :cond_2b
    sub-int v7, v6, v17

    add-int v6, v16, v7

    add-int v17, v17, v7

    const/4 v7, 0x0

    goto :goto_21

    :cond_2c
    move v6, v8

    goto/16 :goto_1b

    :cond_2d
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v0, v1}, Lorg/mozilla/javascript/DToA;->pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v6

    move-object v7, v6

    move-object v6, v9

    goto/16 :goto_1e

    :cond_2e
    if-eqz v17, :cond_33

    invoke-static {v13}, Lorg/mozilla/javascript/DToA;->hi0bits(I)I

    move-result v13

    rsub-int/lit8 v13, v13, 0x20

    :goto_22
    add-int/2addr v13, v9

    and-int/lit8 v13, v13, 0x1f

    if-eqz v13, :cond_2f

    rsub-int/lit8 v13, v13, 0x20

    :cond_2f
    const/16 v16, 0x4

    move/from16 v0, v16

    if-le v13, v0, :cond_34

    add-int/lit8 v16, v13, -0x4

    add-int v13, v12, v16

    add-int v12, v15, v16

    add-int v9, v9, v16

    move/from16 v30, v12

    move v12, v13

    move/from16 v13, v30

    :goto_23
    if-lez v12, :cond_30

    invoke-virtual {v7, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    :cond_30
    if-lez v9, :cond_4f

    invoke-virtual {v14, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    move-object v12, v9

    :goto_24
    if-eqz v4, :cond_4e

    invoke-virtual {v7, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_4e

    add-int/lit8 v5, v5, -0x1

    const-wide/16 v9, 0xa

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    if-eqz v21, :cond_31

    const-wide/16 v9, 0xa

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    :cond_31
    move-object/from16 v30, v6

    move v6, v5

    move-object/from16 v5, v30

    :goto_25
    if-gtz v11, :cond_36

    const/4 v4, 0x2

    move/from16 v0, v22

    if-le v0, v4, :cond_36

    if-ltz v11, :cond_32

    const-wide/16 v4, 0x5

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_32

    if-nez v4, :cond_35

    if-nez p3, :cond_35

    :cond_32
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v4, 0x30

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_33
    const/4 v13, 0x1

    goto :goto_22

    :cond_34
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v13, v0, :cond_50

    add-int/lit8 v16, v13, 0x1c

    add-int v13, v12, v16

    add-int v12, v15, v16

    add-int v9, v9, v16

    move/from16 v30, v12

    move v12, v13

    move/from16 v13, v30

    goto :goto_23

    :cond_35
    const/16 v4, 0x31

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_36
    if-eqz v21, :cond_48

    if-lez v13, :cond_37

    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    :cond_37
    if-eqz v8, :cond_4d

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    :goto_26
    const/4 v8, 0x1

    move v9, v8

    move-object/from16 v30, v7

    move-object v7, v4

    move-object/from16 v4, v30

    :goto_27
    invoke-virtual {v4, v12}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v4

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const/4 v10, 0x0

    aget-object v4, v4, v10

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    invoke-virtual {v12, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v14

    if-gtz v14, :cond_38

    const/4 v10, 0x1

    :goto_28
    if-nez v10, :cond_3b

    if-nez v22, :cond_3b

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v14

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_3b

    const/16 v5, 0x39

    if-ne v4, v5, :cond_39

    const/16 v4, 0x39

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->roundOff(Ljava/lang/StringBuilder;)Z

    move-result v4

    if-eqz v4, :cond_4c

    add-int/lit8 v4, v6, 0x1

    const/16 v5, 0x31

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_38
    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    goto :goto_28

    :cond_39
    if-lez v13, :cond_3a

    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    :cond_3a
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v6, 0x1

    goto/16 :goto_2

    :cond_3b
    if-ltz v13, :cond_3c

    if-nez v13, :cond_41

    if-nez v22, :cond_41

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v13

    and-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_41

    :cond_3c
    if-lez v10, :cond_40

    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gtz v5, :cond_3d

    if-nez v5, :cond_40

    and-int/lit8 v5, v4, 0x1

    const/4 v7, 0x1

    if-eq v5, v7, :cond_3d

    if-eqz p3, :cond_40

    :cond_3d
    add-int/lit8 v5, v4, 0x1

    int-to-char v5, v5

    const/16 v7, 0x39

    if-ne v4, v7, :cond_3f

    const/16 v4, 0x39

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->roundOff(Ljava/lang/StringBuilder;)Z

    move-result v4

    if-eqz v4, :cond_3e

    add-int/lit8 v6, v6, 0x1

    const/16 v4, 0x31

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3e
    add-int/lit8 v4, v6, 0x1

    goto/16 :goto_2

    :cond_3f
    move v4, v5

    :cond_40
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v6, 0x1

    goto/16 :goto_2

    :cond_41
    if-lez v10, :cond_44

    const/16 v5, 0x39

    if-ne v4, v5, :cond_43

    const/16 v4, 0x39

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->roundOff(Ljava/lang/StringBuilder;)Z

    move-result v4

    if-eqz v4, :cond_42

    add-int/lit8 v6, v6, 0x1

    const/16 v4, 0x31

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_42
    add-int/lit8 v4, v6, 0x1

    goto/16 :goto_2

    :cond_43
    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v6, 0x1

    goto/16 :goto_2

    :cond_44
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v9, v11, :cond_46

    move v5, v4

    move-object v4, v8

    :goto_2a
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gtz v4, :cond_45

    if-nez v4, :cond_4a

    and-int/lit8 v4, v5, 0x1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_45

    if-eqz p3, :cond_4a

    :cond_45
    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->roundOff(Ljava/lang/StringBuilder;)Z

    move-result v4

    if-eqz v4, :cond_4b

    add-int/lit8 v4, v6, 0x1

    const/16 v5, 0x31

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_46
    const-wide/16 v13, 0xa

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    if-ne v5, v7, :cond_47

    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object v5, v4

    :goto_2b
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    move-object v7, v4

    move-object v4, v8

    goto/16 :goto_27

    :cond_47
    const-wide/16 v13, 0xa

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v13, 0xa

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_2b

    :cond_48
    const/4 v4, 0x1

    :goto_2c
    invoke-virtual {v7, v12}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v7

    const/4 v5, 0x1

    aget-object v5, v7, v5

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lt v4, v11, :cond_49

    move-object v4, v5

    move v5, v7

    goto :goto_2a

    :cond_49
    const-wide/16 v7, 0xa

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_4a
    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->stripTrailingZeroes(Ljava/lang/StringBuilder;)V

    :cond_4b
    add-int/lit8 v4, v6, 0x1

    goto/16 :goto_2

    :cond_4c
    move v4, v6

    goto/16 :goto_29

    :cond_4d
    move-object v4, v5

    goto/16 :goto_26

    :cond_4e
    move v11, v10

    move/from16 v30, v5

    move-object v5, v6

    move/from16 v6, v30

    goto/16 :goto_25

    :cond_4f
    move-object v12, v14

    goto/16 :goto_24

    :cond_50
    move v13, v15

    goto/16 :goto_23

    :cond_51
    move v9, v12

    move v12, v13

    goto/16 :goto_1f

    :cond_52
    move-object v6, v9

    move-object/from16 v7, v19

    goto/16 :goto_1d

    :cond_53
    move-object v6, v9

    move-object/from16 v7, v19

    goto/16 :goto_1e

    :cond_54
    move v12, v8

    move v15, v7

    goto/16 :goto_1c

    :cond_55
    move/from16 v8, v18

    move v9, v10

    goto/16 :goto_19

    :cond_56
    move/from16 v8, v20

    move/from16 v14, v17

    move/from16 v7, v18

    move/from16 v13, v18

    move/from16 v30, v17

    move/from16 v17, v16

    move/from16 v16, v30

    goto/16 :goto_1a

    :cond_57
    move v5, v7

    move v10, v8

    move-wide/from16 p0, v12

    goto/16 :goto_13

    :cond_58
    move v6, v9

    goto/16 :goto_12

    :cond_59
    move-wide v12, v14

    goto/16 :goto_12

    :cond_5a
    move-wide v14, v12

    goto/16 :goto_f

    :cond_5b
    move v6, v9

    move v8, v10

    move v9, v7

    move v7, v5

    goto/16 :goto_d

    :cond_5c
    move-wide v12, v7

    move v7, v6

    goto/16 :goto_c

    :cond_5d
    move-wide/from16 v12, p0

    goto/16 :goto_c

    :cond_5e
    move-wide/from16 v14, p0

    move/from16 v30, v6

    move/from16 v31, v7

    move-wide v6, v12

    move/from16 v12, v30

    move v13, v8

    move/from16 v8, v31

    goto/16 :goto_a

    :cond_5f
    move/from16 v21, v6

    goto/16 :goto_9

    :cond_60
    move/from16 v22, v7

    move v7, v6

    goto/16 :goto_8

    :cond_61
    move/from16 v7, p2

    goto/16 :goto_7

    :cond_62
    move/from16 v30, v5

    move v5, v4

    move/from16 v4, v30

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method static JS_dtobasestr(ID)Ljava/lang/String;
    .locals 13

    const/4 v0, 0x2

    if-gt v0, p0, :cond_0

    const/16 v0, 0x24

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "NaN"

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_4

    const-string v0, "Infinity"

    goto :goto_0

    :cond_4
    const-string v0, "-Infinity"

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_6

    const-string v0, "0"

    goto :goto_0

    :cond_6
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_9

    const/4 v0, 0x0

    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v1, v3

    long-to-double v5, v1

    cmpl-double v5, v5, v3

    if-nez v5, :cond_b

    if-eqz v0, :cond_a

    neg-long v0, v1

    :goto_2
    invoke-static {v0, v1, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    :goto_3
    cmpl-double v1, p1, v3

    if-eqz v1, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-double v0, p1, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    long-to-int v7, v2

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v2, 0x1

    new-array v2, v2, [I

    invoke-static {v0, v1, v3, v2}, Lorg/mozilla/javascript/DToA;->d2b(D[I[I)Ljava/math/BigInteger;

    move-result-object v5

    ushr-int/lit8 v0, v4, 0x14

    and-int/lit16 v0, v0, 0x7ff

    neg-int v0, v0

    if-nez v0, :cond_7

    const/4 v0, -0x1

    :cond_7
    add-int/lit16 v0, v0, 0x434

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    if-nez v7, :cond_18

    const v2, 0xfffff

    and-int/2addr v2, v4

    if-nez v2, :cond_18

    const/high16 v2, 0x7fe00000

    and-int/2addr v2, v4

    if-eqz v2, :cond_18

    add-int/lit8 v2, v0, 0x1

    const-wide/16 v8, 0x2

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    :goto_4
    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v3, v2

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    int-to-long v4, p0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    const/4 v2, 0x0

    move v12, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v12

    :cond_8
    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    int-to-char v3, v3

    if-ne v2, v1, :cond_f

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v2, v1

    :goto_5
    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-gtz v11, :cond_10

    const/4 v5, 0x1

    :goto_6
    if-nez v5, :cond_11

    and-int/lit8 v11, v7, 0x1

    if-nez v11, :cond_11

    if-lez v10, :cond_17

    add-int/lit8 v0, v3, 0x1

    :goto_7
    const/4 v3, 0x1

    move v12, v3

    move-object v3, v4

    move v4, v0

    move v0, v12

    :goto_8
    invoke-static {v4}, Lorg/mozilla/javascript/DToA;->BASEDIGIT(I)C

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x1

    neg-double p1, p1

    goto/16 :goto_1

    :cond_a
    move-wide v0, v1

    goto/16 :goto_2

    :cond_b
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const/16 v5, 0x34

    shr-long v5, v1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0x7ff

    if-nez v5, :cond_d

    const-wide v6, 0xfffffffffffffL

    and-long/2addr v1, v6

    const/4 v6, 0x1

    shl-long/2addr v1, v6

    :goto_9
    if-eqz v0, :cond_19

    neg-long v0, v1

    :goto_a
    add-int/lit16 v2, v5, -0x433

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    if-lez v2, :cond_e

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    :cond_c
    :goto_b
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_d
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v1, v6

    const-wide/high16 v6, 0x10000000000000L

    or-long/2addr v1, v6

    goto :goto_9

    :cond_e
    if-gez v2, :cond_c

    neg-int v1, v2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_b

    :cond_f
    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_5

    :cond_10
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    goto :goto_6

    :cond_11
    if-ltz v10, :cond_12

    if-nez v10, :cond_14

    and-int/lit8 v10, v7, 0x1

    if-nez v10, :cond_14

    :cond_12
    if-lez v5, :cond_16

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_13

    add-int/lit8 v3, v3, 0x1

    :cond_13
    :goto_c
    const/4 v4, 0x1

    move v12, v4

    move v4, v3

    move-object v3, v0

    move v0, v12

    goto :goto_8

    :cond_14
    if-lez v5, :cond_15

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x1

    move-object v12, v4

    move v4, v3

    move-object v3, v12

    goto/16 :goto_8

    :cond_15
    move-object v12, v4

    move v4, v3

    move-object v3, v12

    goto/16 :goto_8

    :cond_16
    move-object v0, v4

    goto :goto_c

    :cond_17
    move v0, v3

    goto/16 :goto_7

    :cond_18
    move v2, v0

    move-object v0, v1

    goto/16 :goto_4

    :cond_19
    move-wide v0, v1

    goto :goto_a
.end method

.method static JS_dtostr(Ljava/lang/StringBuilder;IID)V
    .locals 11

    const/4 v3, 0x2

    const/4 v10, -0x5

    const/16 v9, 0x2e

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-array v5, v8, [Z

    if-ne p1, v3, :cond_1

    const-wide v0, 0x444b1ae4d6e2ef50L    # 1.0E21

    cmpl-double v0, p3, v0

    if-gez v0, :cond_0

    const-wide v0, -0x3bb4e51b291d10b0L    # -1.0E21

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_1

    :cond_0
    move p1, v7

    :cond_1
    sget-object v0, Lorg/mozilla/javascript/DToA;->dtoaModes:[I

    aget v2, v0, p1

    if-lt p1, v3, :cond_9

    move v3, v8

    :goto_0
    move-wide v0, p3

    move v4, p2

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/DToA;->JS_dtoa(DIZI[ZLjava/lang/StringBuilder;)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v0, 0x270f

    if-eq v2, v0, :cond_5

    packed-switch p1, :pswitch_data_0

    move v0, v7

    move v3, v7

    :goto_1
    if-ge v1, v0, :cond_11

    :cond_2
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ne v1, v0, :cond_2

    :goto_2
    if-eqz v3, :cond_e

    if-eq v0, v8, :cond_3

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, -0x1

    if-ltz v0, :cond_4

    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    :goto_3
    aget-boolean v0, v5, v7

    if-eqz v0, :cond_8

    invoke-static {p3, p4}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_6

    invoke-static {p3, p4}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    invoke-static {p3, p4}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v0

    const/high16 v1, 0x7ff00000

    and-int/2addr v0, v1

    const/high16 v1, 0x7ff00000

    if-ne v0, v1, :cond_7

    invoke-static {p3, p4}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p3, p4}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    :cond_7
    const/16 v0, 0x2d

    invoke-virtual {p0, v7, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_8
    return-void

    :cond_9
    move v3, v7

    goto :goto_0

    :pswitch_0
    if-lt v2, v10, :cond_a

    const/16 v0, 0x15

    if-le v2, v0, :cond_b

    :cond_a
    move v0, v7

    move v3, v8

    goto :goto_1

    :cond_b
    move v0, v2

    move v3, v7

    goto :goto_1

    :pswitch_1
    if-ltz p2, :cond_c

    add-int/2addr p2, v2

    move v0, p2

    move v3, v7

    goto :goto_1

    :cond_c
    move v0, v2

    move v3, v7

    goto :goto_1

    :pswitch_2
    move p2, v7

    :pswitch_3
    move v0, p2

    move v3, v8

    goto :goto_1

    :pswitch_4
    if-lt v2, v10, :cond_d

    if-le v2, p2, :cond_12

    :cond_d
    move v0, p2

    move v3, v8

    goto :goto_1

    :cond_e
    if-eq v2, v0, :cond_5

    if-lez v2, :cond_f

    invoke-virtual {p0, v2, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_f
    move v0, v7

    :goto_4
    rsub-int/lit8 v1, v2, 0x1

    if-ge v0, v1, :cond_10

    const/16 v1, 0x30

    invoke-virtual {p0, v7, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_11
    move v0, v1

    goto/16 :goto_2

    :cond_12
    move v0, p2

    move v3, v7

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static d2b(D[I[I)Ljava/math/BigInteger;
    .locals 10

    const/4 v1, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    long-to-int v4, v4

    long-to-int v5, v2

    const v0, 0xfffff

    and-int/2addr v0, v4

    const v2, 0x7fffffff

    and-int/2addr v2, v4

    ushr-int/lit8 v4, v2, 0x14

    if-eqz v4, :cond_0

    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    :cond_0
    if-eqz v5, :cond_3

    const/16 v2, 0x8

    new-array v3, v2, [B

    invoke-static {v5}, Lorg/mozilla/javascript/DToA;->lo0bits(I)I

    move-result v2

    ushr-int/2addr v5, v2

    if-eqz v2, :cond_2

    rsub-int/lit8 v6, v2, 0x20

    shl-int v6, v0, v6

    or-int/2addr v5, v6

    invoke-static {v3, v8, v5}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    shr-int/2addr v0, v2

    :goto_0
    invoke-static {v3, v7, v0}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :cond_1
    move v9, v2

    move v2, v1

    move v1, v9

    :goto_1
    if-eqz v4, :cond_4

    add-int/lit16 v0, v4, -0x3ff

    add-int/lit8 v0, v0, -0x34

    add-int/2addr v0, v1

    aput v0, p2, v7

    rsub-int/lit8 v0, v1, 0x35

    aput v0, p3, v7

    :goto_2
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0

    :cond_2
    invoke-static {v3, v8, v5}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    goto :goto_0

    :cond_3
    new-array v3, v8, [B

    invoke-static {v0}, Lorg/mozilla/javascript/DToA;->lo0bits(I)I

    move-result v2

    ushr-int/2addr v0, v2

    invoke-static {v3, v7, v0}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    add-int/lit8 v2, v2, 0x20

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_1

    :cond_4
    add-int/lit16 v4, v4, -0x3ff

    add-int/lit8 v4, v4, -0x34

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    aput v1, p2, v7

    mul-int/lit8 v1, v2, 0x20

    invoke-static {v0}, Lorg/mozilla/javascript/DToA;->hi0bits(I)I

    move-result v0

    sub-int v0, v1, v0

    aput v0, p3, v7

    goto :goto_2
.end method

.method private static hi0bits(I)I
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    if-nez v1, :cond_4

    const/16 v0, 0x10

    shl-int/lit8 v1, p0, 0x10

    :goto_0
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x8

    :cond_0
    const/high16 v2, -0x10000000

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x4

    shl-int/lit8 v1, v1, 0x4

    :cond_1
    const/high16 v2, -0x40000000    # -2.0f

    and-int/2addr v2, v1

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 v1, v1, 0x2

    :cond_2
    const/high16 v2, -0x80000000

    and-int/2addr v2, v1

    if-nez v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    const/16 v0, 0x20

    :cond_3
    return v0

    :cond_4
    move v1, p0

    goto :goto_0
.end method

.method private static lo0bits(I)I
    .locals 4

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x7

    if-eqz v1, :cond_3

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const v1, 0xffff

    and-int/2addr v1, p0

    if-nez v1, :cond_7

    const/16 v1, 0x10

    ushr-int/lit8 v0, p0, 0x10

    :goto_1
    and-int/lit16 v2, v0, 0xff

    if-nez v2, :cond_4

    add-int/lit8 v1, v1, 0x8

    ushr-int/lit8 v0, v0, 0x8

    :cond_4
    and-int/lit8 v2, v0, 0xf

    if-nez v2, :cond_5

    add-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v0, v0, 0x4

    :cond_5
    and-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_6

    add-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v0, v0, 0x2

    move v3, v0

    move v0, v1

    move v1, v3

    :goto_2
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_6
    move v3, v0

    move v0, v1

    move v1, v3

    goto :goto_2

    :cond_7
    move v1, v0

    move v0, p0

    goto :goto_1
.end method

.method static pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 2

    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static roundOff(Ljava/lang/StringBuilder;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static setWord0(DI)D
    .locals 6

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    int-to-long v2, p2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private static stripTrailingZeroes(Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method private static stuffBits([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method static word0(D)I
    .locals 3

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static word1(D)I
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
