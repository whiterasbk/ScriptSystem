.class public Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;
.super Ljava/lang/Object;


# static fields
.field static final digits:[C


# instance fields
.field final chars:[C

.field end:I

.field formatted:Z

.field point:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->digits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iput v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    iput-boolean v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->formatted:Z

    return-void
.end method

.method private toExponentialFormat(II)V
    .locals 6

    iget v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    sub-int/2addr v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget-object v2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    const/16 v2, 0x2e

    aput-char v2, v1, v0

    iget v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x2b

    add-int/lit8 v0, p2, -0x1

    if-gez v0, :cond_1

    const/16 v1, 0x2d

    neg-int v0, v0

    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget v3, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    aput-char v1, v2, v3

    const/16 v1, 0x63

    if-le v0, v1, :cond_2

    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    add-int/lit8 v1, v1, 0x2

    :goto_0
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    move v2, v0

    :goto_1
    rem-int/lit8 v3, v2, 0xa

    iget-object v4, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    add-int/lit8 v0, v1, -0x1

    sget-object v5, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->digits:[C

    aget-char v3, v5, v3

    aput-char v3, v4, v1

    div-int/lit8 v1, v2, 0xa

    if-nez v1, :cond_4

    return-void

    :cond_2
    const/16 v1, 0x9

    if-le v0, v1, :cond_3

    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    goto :goto_0

    :cond_4
    move v2, v1

    move v1, v0

    goto :goto_1
.end method

.method private toFixedFormat(II)V
    .locals 7

    const/16 v6, 0x2e

    const/16 v4, 0x30

    iget v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    if-ge v0, v1, :cond_3

    if-lez p2, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    iget-object v2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget v3, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    iget v5, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    aput-char v6, v0, v1

    iget v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v0, p1, 0x2

    sub-int/2addr v0, p2

    iget-object v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget-object v2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget v3, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    aput-char v4, v1, p1

    iget-object v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    add-int/lit8 v2, p1, 0x1

    aput-char v6, v1, v2

    if-gez p2, :cond_2

    iget-object v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    add-int/lit8 v2, p1, 0x2

    invoke-static {v1, v2, v0, v4}, Ljava/util/Arrays;->fill([CIIC)V

    :cond_2
    iget v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    rsub-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    iget v2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([CIIC)V

    iget v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    iget v2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    goto :goto_0
.end method


# virtual methods
.method append(C)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    aput-char p1, v0, v1

    return-void
.end method

.method decreaseLast()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    add-int/lit8 v1, v1, -0x1

    aget-char v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    int-to-char v2, v2

    aput-char v2, v0, v1

    return-void
.end method

.method public format()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->formatted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    aget-char v0, v0, v2

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    sub-int/2addr v3, v0

    const/4 v4, -0x5

    if-lt v3, v4, :cond_0

    const/16 v4, 0x15

    if-le v3, v4, :cond_3

    :cond_0
    invoke-direct {p0, v0, v3}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->toExponentialFormat(II)V

    :goto_1
    iput-boolean v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->formatted:Z

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget v3, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, v3}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->toFixedFormat(II)V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    iput-boolean v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->formatted:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[chars:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", point:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
