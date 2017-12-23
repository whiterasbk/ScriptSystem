.class public Lorg/mozilla/javascript/v8dtoa/FastDtoa;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final kFastDtoaMaximalLength:I = 0x11

.field static final kTen4:I = 0x2710

.field static final kTen5:I = 0x186a0

.field static final kTen6:I = 0xf4240

.field static final kTen7:I = 0x989680

.field static final kTen8:I = 0x5f5e100

.field static final kTen9:I = 0x3b9aca00

.field static final maximal_target_exponent:I = -0x20

.field static final minimal_target_exponent:I = -0x3c


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/mozilla/javascript/v8dtoa/FastDtoa;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static biggestPowerTen(II)J
    .locals 8

    const/16 v4, 0x3e8

    const/16 v3, 0x64

    const/16 v2, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :goto_0
    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    const-wide v3, 0xffffffffL

    int-to-long v5, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0

    :pswitch_0
    const v5, 0x3b9aca00

    if-gt v5, p0, :cond_0

    const v1, 0x3b9aca00

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    :pswitch_1
    const v5, 0x5f5e100

    if-gt v5, p0, :cond_1

    const v1, 0x5f5e100

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    :pswitch_2
    const v5, 0x989680

    if-gt v5, p0, :cond_2

    const v1, 0x989680

    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    :pswitch_3
    const v5, 0xf4240

    if-gt v5, p0, :cond_3

    const v1, 0xf4240

    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    :pswitch_4
    const v5, 0x186a0

    if-gt v5, p0, :cond_4

    const v1, 0x186a0

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    :pswitch_5
    const/16 v5, 0x2710

    if-gt v5, p0, :cond_5

    const/16 v1, 0x2710

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    :pswitch_6
    if-gt v4, p0, :cond_6

    const/4 v0, 0x3

    move v1, v4

    goto :goto_0

    :cond_6
    :pswitch_7
    if-gt v3, p0, :cond_7

    const/4 v0, 0x2

    move v1, v3

    goto :goto_0

    :cond_7
    :pswitch_8
    if-gt v2, p0, :cond_8

    move v1, v2

    goto :goto_0

    :cond_8
    :pswitch_9
    if-gt v0, p0, :cond_9

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0

    :cond_9
    :pswitch_a
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static digitGen(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;I)Z
    .locals 18

    sget-boolean v1, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    sget-boolean v1, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->uint64_lte(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    sget-boolean v1, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    const/16 v1, -0x3c

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v2

    if-gt v1, v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v1

    const/16 v2, -0x20

    if-le v1, v2, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4
    const-wide/16 v10, 0x1

    new-instance v1, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>(JI)V

    new-instance v9, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v2

    add-long/2addr v2, v10

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v4

    invoke-direct {v9, v2, v3, v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>(JI)V

    invoke-static {v9, v1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->minus(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v12

    new-instance v13, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    const-wide/16 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v3

    neg-int v3, v3

    shl-long/2addr v1, v3

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v3

    invoke-direct {v13, v1, v2, v3}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>(JI)V

    invoke-virtual {v9}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v1

    invoke-virtual {v13}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v3

    neg-int v3, v3

    ushr-long/2addr v1, v3

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int v5, v1

    invoke-virtual {v9}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v1

    invoke-virtual {v13}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v3

    const-wide/16 v6, 0x1

    sub-long/2addr v3, v6

    and-long v2, v1, v3

    invoke-virtual {v13}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v1

    neg-int v1, v1

    rsub-int/lit8 v1, v1, 0x40

    invoke-static {v5, v1}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->biggestPowerTen(II)J

    move-result-wide v6

    const/16 v1, 0x20

    ushr-long v14, v6, v1

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    long-to-int v4, v14

    const-wide v14, 0xffffffffL

    and-long/2addr v6, v14

    long-to-int v1, v6

    add-int/lit8 v1, v1, 0x1

    move v8, v4

    move v4, v5

    :goto_0
    if-lez v1, :cond_6

    div-int v5, v4, v8

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->append(C)V

    rem-int v5, v4, v8

    add-int/lit8 v1, v1, -0x1

    int-to-long v6, v5

    invoke-virtual {v13}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v4

    neg-int v4, v4

    shl-long/2addr v6, v4

    add-long/2addr v6, v2

    invoke-virtual {v12}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v14

    cmp-long v4, v6, v14

    if-gez v4, :cond_5

    move-object/from16 v0, p3

    iget v2, v0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    sub-int v2, v2, p4

    add-int/2addr v1, v2

    move-object/from16 v0, p3

    iput v1, v0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->minus(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v2

    invoke-virtual {v12}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v4

    int-to-long v8, v8

    invoke-virtual {v13}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v1

    neg-int v1, v1

    shl-long/2addr v8, v1

    move-object/from16 v1, p3

    invoke-static/range {v1 .. v11}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->roundWeed(Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;JJJJJ)Z

    move-result v1

    :goto_1
    return v1

    :cond_5
    div-int/lit8 v4, v8, 0xa

    move v8, v4

    move v4, v5

    goto :goto_0

    :cond_6
    move-wide v6, v2

    :cond_7
    const-wide/16 v2, 0x5

    mul-long/2addr v2, v6

    const-wide/16 v4, 0x5

    mul-long/2addr v10, v4

    invoke-virtual {v12}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v4

    const-wide/16 v6, 0x5

    mul-long/2addr v4, v6

    invoke-virtual {v12, v4, v5}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setF(J)V

    invoke-virtual {v12}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v12, v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setE(I)V

    invoke-virtual {v13}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v4

    const/4 v6, 0x1

    ushr-long/2addr v4, v6

    invoke-virtual {v13, v4, v5}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setF(J)V

    invoke-virtual {v13}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v13, v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setE(I)V

    invoke-virtual {v13}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v4

    neg-int v4, v4

    ushr-long v4, v2, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    long-to-int v4, v4

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->append(C)V

    invoke-virtual {v13}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    and-long v6, v2, v4

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v12}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_7

    move-object/from16 v0, p3

    iget v2, v0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    sub-int v2, v2, p4

    add-int/2addr v1, v2

    move-object/from16 v0, p3

    iput v1, v0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->minus(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v1

    mul-long v2, v1, v10

    invoke-virtual {v12}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v4

    invoke-virtual {v13}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v8

    move-object/from16 v1, p3

    invoke-static/range {v1 .. v11}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->roundWeed(Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;JJJJJ)Z

    move-result v1

    goto :goto_1
.end method

.method public static dtoa(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z
    .locals 2

    sget-boolean v0, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-boolean v0, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->grisu3(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z

    move-result v0

    return v0
.end method

.method static grisu3(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z
    .locals 9

    const/16 v8, -0x20

    const/16 v7, -0x3c

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/v8dtoa/DoubleHelper;->asNormalizedDiyFp(J)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v2

    new-instance v3, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-direct {v3}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>()V

    new-instance v4, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-direct {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>()V

    invoke-static {v0, v1, v3, v4}, Lorg/mozilla/javascript/v8dtoa/DoubleHelper;->normalizedBoundaries(JLorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)V

    sget-boolean v0, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v0

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-direct {v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>()V

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v1

    add-int/lit8 v1, v1, 0x40

    invoke-static {v1, v7, v8, v0}, Lorg/mozilla/javascript/v8dtoa/CachedPowers;->getCachedPower(IIILorg/mozilla/javascript/v8dtoa/DiyFp;)I

    move-result v1

    sget-boolean v5, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v5

    invoke-virtual {v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x40

    if-gt v7, v5, :cond_1

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v5

    invoke-virtual {v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x40

    if-ge v8, v5, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-static {v2, v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->times(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v2

    sget-boolean v5, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v5

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v6

    invoke-virtual {v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x40

    if-eq v5, v6, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    invoke-static {v3, v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->times(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v3

    invoke-static {v4, v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->times(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v0

    invoke-static {v3, v2, v0, p2, v1}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->digitGen(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;I)Z

    move-result v0

    return v0
.end method

.method public static numberToString(D)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;

    invoke-direct {v0}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->numberToString(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->format()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static numberToString(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z
    .locals 2

    invoke-virtual {p2}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->reset()V

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const/16 v0, 0x2d

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->append(C)V

    neg-double p0, p0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->dtoa(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z

    move-result v0

    return v0
.end method

.method static roundWeed(Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;JJJJJ)Z
    .locals 8

    sub-long v0, p1, p9

    add-long v2, p1, p9

    :goto_0
    cmp-long v4, p5, v0

    if-gez v4, :cond_1

    sub-long v4, p3, p5

    cmp-long v4, v4, p7

    if-ltz v4, :cond_1

    add-long v4, p5, p7

    cmp-long v4, v4, v0

    if-ltz v4, :cond_0

    sub-long v4, v0, p5

    add-long v6, p5, p7

    sub-long/2addr v6, v0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->decreaseLast()V

    add-long/2addr p5, p7

    goto :goto_0

    :cond_1
    cmp-long v0, p5, v2

    if-gez v0, :cond_3

    sub-long v0, p3, p5

    cmp-long v0, v0, p7

    if-ltz v0, :cond_3

    add-long v0, p5, p7

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    sub-long v0, v2, p5

    add-long v4, p5, p7

    sub-long v2, v4, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    const-wide/16 v0, 0x2

    mul-long v0, v0, p9

    cmp-long v0, v0, p5

    if-gtz v0, :cond_4

    const-wide/16 v0, 0x4

    mul-long v0, v0, p9

    sub-long v0, p3, v0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static uint64_lte(JJ)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    cmp-long v2, p0, p2

    if-eqz v2, :cond_0

    cmp-long v2, p0, p2

    if-gez v2, :cond_2

    move v3, v1

    :goto_0
    cmp-long v2, p0, v4

    if-gez v2, :cond_3

    move v2, v1

    :goto_1
    xor-int/2addr v3, v2

    cmp-long v2, p2, v4

    if-gez v2, :cond_4

    move v2, v1

    :goto_2
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v3, v0

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_2
.end method
