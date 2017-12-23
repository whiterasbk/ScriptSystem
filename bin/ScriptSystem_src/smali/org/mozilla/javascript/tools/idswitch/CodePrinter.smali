.class Lorg/mozilla/javascript/tools/idswitch/CodePrinter;
.super Ljava/lang/Object;


# static fields
.field private static final LITERAL_CHAR_MAX_SIZE:I = 0x6


# instance fields
.field private buffer:[C

.field private indentStep:I

.field private indentTabSize:I

.field private lineTerminator:Ljava/lang/String;

.field private offset:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\n"

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->lineTerminator:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentStep:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentTabSize:I

    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    return-void
.end method

.method private add_area(I)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->ensure_area(I)I

    move-result v0

    add-int v1, v0, p1

    iput v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    return v0
.end method

.method private static digit_to_hex_letter(I)C
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    :goto_0
    int-to-char v0, v0

    return v0

    :cond_0
    add-int/lit8 v0, p0, 0x37

    goto :goto_0
.end method

.method private ensure_area(I)I
    .locals 4

    const/4 v3, 0x0

    iget v2, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    add-int v0, v2, p1

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    :goto_0
    new-array v0, v0, [C

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    :cond_0
    return v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private put_string_literal_char(IIZ)I
    .locals 3

    const/16 v2, 0x5c

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p2, :sswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    aput-char v2, v0, p1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    int-to-char v2, p2

    aput-char v2, v0, v1

    add-int/lit8 v0, p1, 0x2

    :goto_1
    return v0

    :sswitch_0
    const/16 p2, 0x62

    goto :goto_0

    :sswitch_1
    const/16 p2, 0x74

    goto :goto_0

    :sswitch_2
    const/16 p2, 0x6e

    goto :goto_0

    :sswitch_3
    const/16 p2, 0x66

    goto :goto_0

    :sswitch_4
    const/16 p2, 0x72

    goto :goto_0

    :sswitch_5
    if-eqz p3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_6
    move v0, p3

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    if-gt v0, p2, :cond_2

    const/16 v0, 0x7e

    if-gt p2, v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    int-to-char v1, p2

    aput-char v1, v0, p1

    add-int/lit8 v0, p1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    aput-char v2, v0, p1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v2, p2, 0xc

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->digit_to_hex_letter(I)C

    move-result v2

    aput-char v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    add-int/lit8 v1, p1, 0x3

    shr-int/lit8 v2, p2, 0x8

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->digit_to_hex_letter(I)C

    move-result v2

    aput-char v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    add-int/lit8 v1, p1, 0x4

    shr-int/lit8 v2, p2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->digit_to_hex_letter(I)C

    move-result v2

    aput-char v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    add-int/lit8 v1, p1, 0x5

    and-int/lit8 v2, p2, 0xf

    invoke-static {v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->digit_to_hex_letter(I)C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v0, p1, 0x6

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0x22 -> :sswitch_6
        0x27 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    return-void
.end method

.method public erase(II)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    iget v2, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    return-void
.end method

.method public getIndentStep()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentStep:I

    return v0
.end method

.method public getIndentTabSize()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentTabSize:I

    return v0
.end method

.method public getLastChar()I
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    iget v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public getLineTerminator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->lineTerminator:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    return v0
.end method

.method public indent(I)V
    .locals 5

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentStep:I

    mul-int v1, v0, p1

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentTabSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->add_area(I)I

    move-result v2

    add-int v3, v2, v0

    add-int/2addr v1, v2

    move v0, v2

    :goto_1
    if-eq v0, v3, :cond_1

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    const/16 v4, 0x9

    aput-char v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentTabSize:I

    div-int v0, v1, v0

    iget v2, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentTabSize:I

    rem-int/2addr v1, v2

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    :goto_2
    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    const/16 v3, 0x20

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public line(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->nl()V

    return-void
.end method

.method public nl()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(C)V

    return-void
.end method

.method public p(C)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->add_area(I)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    aput-char p1, v1, v0

    return-void
.end method

.method public p(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->add_area(I)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public final p([C)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p([CII)V

    return-void
.end method

.method public p([CII)V
    .locals 3

    sub-int v0, p3, p2

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->add_area(I)I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public qchar(I)V
    .locals 3

    const/16 v2, 0x27

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->ensure_area(I)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->put_string_literal_char(IIZ)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    return-void
.end method

.method public qstring(Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x6

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->ensure_area(I)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    aput-char v5, v1, v0

    add-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->put_string_literal_char(IIZ)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    aput-char v5, v0, v1

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    return-void
.end method

.method public setIndentStep(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentStep:I

    return-void
.end method

.method public setIndentTabSize(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentTabSize:I

    return-void
.end method

.method public setLineTerminator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->lineTerminator:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
