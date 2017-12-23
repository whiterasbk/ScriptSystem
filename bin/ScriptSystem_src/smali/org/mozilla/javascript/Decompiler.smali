.class public Lorg/mozilla/javascript/Decompiler;
.super Ljava/lang/Object;


# static fields
.field public static final CASE_GAP_PROP:I = 0x3

.field private static final FUNCTION_END:I = 0xa4

.field public static final INDENT_GAP_PROP:I = 0x2

.field public static final INITIAL_INDENT_PROP:I = 0x1

.field public static final ONLY_BODY_FLAG:I = 0x1

.field public static final TO_SOURCE_FLAG:I = 0x2

.field private static final printSource:Z


# instance fields
.field private sourceBuffer:[C

.field private sourceTop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    return-void
.end method

.method private append(C)V
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    iget-object v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->increaseSourceCapacity(I)V

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    aput-char p1, v0, v1

    iget v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    return-void
.end method

.method private appendString(Ljava/lang/String;)V
    .locals 6

    const v5, 0x8000

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-lt v1, v5, :cond_0

    const/4 v0, 0x2

    :cond_0
    iget v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    array-length v2, v2

    if-le v0, v2, :cond_1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->increaseSourceCapacity(I)V

    :cond_1
    if-lt v1, v5, :cond_2

    iget-object v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    ushr-int/lit8 v4, v1, 0x10

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    iget v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    :cond_2
    iget-object v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    int-to-char v4, v1

    aput-char v4, v2, v3

    iget v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v4, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    invoke-virtual {p1, v2, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    iput v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    return-void
.end method

.method public static decompile(Ljava/lang/String;ILorg/mozilla/javascript/UintMap;)Ljava/lang/String;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v3

    if-gez v3, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v7

    if-gez v7, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_2
    const/4 v1, 0x3

    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v11

    if-gez v11, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_3
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v9, v1

    :goto_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_2
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v8, 0x88

    if-ne v2, v8, :cond_6

    const/4 v4, 0x1

    const/4 v2, -0x1

    move v8, v2

    :goto_3
    if-nez v1, :cond_7

    const/16 v2, 0xa

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_8

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    move v9, v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v8, v2

    goto :goto_3

    :cond_7
    const/4 v2, 0x2

    if-ne v8, v2, :cond_8

    const/16 v2, 0x28

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    :goto_5
    if-ge v4, v10, :cond_13

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/mozilla/javascript/Token;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v13, 0x97

    if-ne v2, v13, :cond_9

    const-string v2, "get "

    :goto_6
    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v12}, Lorg/mozilla/javascript/Decompiler;->printSourceString(Ljava/lang/String;IZLjava/lang/StringBuffer;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    :goto_7
    add-int/lit8 v2, v2, 0x1

    move v6, v4

    move v4, v2

    move v15, v3

    move v3, v5

    move v5, v15

    goto :goto_5

    :cond_9
    const-string v2, "set "

    goto :goto_6

    :pswitch_2
    add-int/lit8 v2, v4, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v12}, Lorg/mozilla/javascript/Decompiler;->printSourceString(Ljava/lang/String;IZLjava/lang/StringBuffer;)I

    move-result v4

    goto :goto_5

    :pswitch_3
    add-int/lit8 v2, v4, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v12}, Lorg/mozilla/javascript/Decompiler;->printSourceString(Ljava/lang/String;IZLjava/lang/StringBuffer;)I

    move-result v4

    goto :goto_5

    :pswitch_4
    add-int/lit8 v2, v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12}, Lorg/mozilla/javascript/Decompiler;->printSourceNumber(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result v4

    goto :goto_5

    :pswitch_5
    const-string v2, "true"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto :goto_7

    :pswitch_6
    const-string v2, "false"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto :goto_7

    :pswitch_7
    const-string v2, "null"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto :goto_7

    :pswitch_8
    const-string v2, "this"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto :goto_7

    :pswitch_9
    add-int/lit8 v2, v4, 0x1

    const-string v4, "function "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto :goto_7

    :pswitch_a
    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto :goto_7

    :pswitch_b
    const-string v2, ", "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto :goto_7

    :pswitch_c
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v10, v4}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v13

    if-ne v2, v13, :cond_19

    add-int v2, v3, v7

    :goto_8
    const/16 v3, 0x7b

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v5

    move v5, v2

    move v2, v4

    move v4, v6

    goto/16 :goto_7

    :pswitch_d
    add-int/lit8 v2, v6, -0x1

    if-eqz v9, :cond_a

    if-nez v2, :cond_a

    move v15, v4

    move v4, v2

    move v2, v15

    move/from16 v16, v5

    move v5, v3

    move/from16 v3, v16

    goto/16 :goto_7

    :cond_a
    const/16 v6, 0x7d

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    invoke-static {v0, v10, v4}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_9
    move v15, v4

    move v4, v2

    move v2, v15

    move/from16 v16, v5

    move v5, v3

    move/from16 v3, v16

    goto/16 :goto_7

    :sswitch_0
    sub-int/2addr v3, v7

    goto :goto_9

    :sswitch_1
    sub-int/2addr v3, v7

    const/16 v6, 0x20

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :pswitch_e
    const/16 v2, 0x28

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_f
    const/16 v2, 0x29

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v2, 0x55

    move-object/from16 v0, p0

    invoke-static {v0, v10, v4}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v13

    if-ne v2, v13, :cond_16

    const/16 v2, 0x20

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_10
    const/16 v2, 0x5b

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_11
    const/16 v2, 0x5d

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_12
    if-eqz v1, :cond_b

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :cond_b
    const/4 v2, 0x1

    if-nez v5, :cond_18

    const/4 v5, 0x1

    if-eqz v9, :cond_18

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    sub-int/2addr v3, v7

    const/4 v2, 0x0

    move v15, v2

    move v2, v5

    move v5, v15

    :goto_a
    if-eqz v5, :cond_c

    const/16 v5, 0xa

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c
    add-int/lit8 v5, v4, 0x1

    if-ge v5, v10, :cond_17

    const/4 v5, 0x0

    add-int/lit8 v13, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x73

    if-eq v13, v14, :cond_d

    const/16 v14, 0x74

    if-ne v13, v14, :cond_f

    :cond_d
    sub-int v5, v7, v11

    :cond_e
    :goto_b
    if-ge v5, v3, :cond_11

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_f
    const/16 v14, 0x56

    if-ne v13, v14, :cond_10

    move v5, v7

    goto :goto_b

    :cond_10
    const/16 v14, 0x27

    if-ne v13, v14, :cond_e

    add-int/lit8 v13, v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/mozilla/javascript/Decompiler;->getSourceStringEnd(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x67

    if-ne v13, v14, :cond_e

    move v5, v7

    goto :goto_b

    :cond_11
    move v5, v3

    move v3, v2

    move v2, v4

    move v4, v6

    goto/16 :goto_7

    :pswitch_13
    const/16 v2, 0x2e

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_14
    const-string v2, "new "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_15
    const-string v2, "delete "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_16
    const-string v2, "if "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_17
    const-string v2, "else "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_18
    const-string v2, "for "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_19
    const-string v2, " in "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_1a
    const-string v2, "with "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_1b
    const-string v2, "while "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_1c
    const-string v2, "do "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_1d
    const-string v2, "try "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_1e
    const-string v2, "catch "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_1f
    const-string v2, "finally "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_20
    const-string v2, "throw "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_21
    const-string v2, "switch "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_22
    const-string v2, "break"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x27

    move-object/from16 v0, p0

    invoke-static {v0, v10, v4}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v13

    if-ne v2, v13, :cond_16

    const/16 v2, 0x20

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_23
    const-string v2, "continue"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x27

    move-object/from16 v0, p0

    invoke-static {v0, v10, v4}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v13

    if-ne v2, v13, :cond_16

    const/16 v2, 0x20

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_24
    const-string v2, "case "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_25
    const-string v2, "default"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_26
    const-string v2, "return"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x52

    move-object/from16 v0, p0

    invoke-static {v0, v10, v4}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v13

    if-eq v2, v13, :cond_16

    const/16 v2, 0x20

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_27
    const-string v2, "var "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_28
    const-string v2, "let "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_29
    const/16 v2, 0x3b

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v10, v4}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v13

    if-eq v2, v13, :cond_16

    const/16 v2, 0x20

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_2a
    const-string v2, " = "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_2b
    const-string v2, " += "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_2c
    const-string v2, " -= "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_2d
    const-string v2, " *= "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_2e
    const-string v2, " /= "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_2f
    const-string v2, " %= "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_30
    const-string v2, " |= "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_31
    const-string v2, " ^= "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_32
    const-string v2, " &= "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_33
    const-string v2, " <<= "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_34
    const-string v2, " >>= "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_35
    const-string v2, " >>>= "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_36
    const-string v2, " ? "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_37
    const/16 v2, 0x3a

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_38
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v10, v4}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v13

    if-ne v2, v13, :cond_12

    const/16 v2, 0x3a

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :cond_12
    const-string v2, " : "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_39
    const-string v2, " || "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_3a
    const-string v2, " && "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_3b
    const-string v2, " | "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_3c
    const-string v2, " ^ "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_3d
    const-string v2, " & "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_3e
    const-string v2, " === "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_3f
    const-string v2, " !== "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_40
    const-string v2, " == "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_41
    const-string v2, " != "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_42
    const-string v2, " <= "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_43
    const-string v2, " < "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_44
    const-string v2, " >= "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_45
    const-string v2, " > "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_46
    const-string v2, " instanceof "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_47
    const-string v2, " << "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_48
    const-string v2, " >> "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_49
    const-string v2, " >>> "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_4a
    const-string v2, "typeof "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_4b
    const-string v2, "void "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_4c
    const-string v2, "const "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_4d
    const-string v2, "yield "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_4e
    const/16 v2, 0x21

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_4f
    const/16 v2, 0x7e

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_50
    const/16 v2, 0x2b

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_51
    const/16 v2, 0x2d

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_52
    const-string v2, "++"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_53
    const-string v2, "--"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_54
    const-string v2, " + "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_55
    const-string v2, " - "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_56
    const-string v2, " * "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_57
    const-string v2, " / "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_58
    const-string v2, " % "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_59
    const-string v2, "::"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_5a
    const-string v2, ".."

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_5b
    const-string v2, ".("

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_5c
    const/16 v2, 0x40

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :pswitch_5d
    const-string v2, "debugger;\n"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :cond_13
    if-nez v1, :cond_15

    if-nez v9, :cond_14

    const/16 v1, 0xa

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_14
    :goto_c
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_15
    const/4 v1, 0x2

    if-ne v8, v1, :cond_14

    const/16 v1, 0x29

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_16
    move v2, v4

    move v4, v6

    move v15, v5

    move v5, v3

    move v3, v15

    goto/16 :goto_7

    :cond_17
    move v5, v3

    move v3, v2

    move v2, v4

    move v4, v6

    goto/16 :goto_7

    :cond_18
    move v15, v2

    move v2, v5

    move v5, v15

    goto/16 :goto_a

    :cond_19
    move v2, v3

    goto/16 :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_40
        :pswitch_41
        :pswitch_43
        :pswitch_42
        :pswitch_45
        :pswitch_44
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_14
        :pswitch_15
        :pswitch_4a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_3e
        :pswitch_3f
        :pswitch_2
        :pswitch_0
        :pswitch_20
        :pswitch_0
        :pswitch_19
        :pswitch_46
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_37
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_29
        :pswitch_10
        :pswitch_11
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_b
        :pswitch_2a
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_36
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_52
        :pswitch_53
        :pswitch_13
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_21
        :pswitch_24
        :pswitch_25
        :pswitch_1b
        :pswitch_1c
        :pswitch_18
        :pswitch_22
        :pswitch_23
        :pswitch_27
        :pswitch_1a
        :pswitch_1e
        :pswitch_1f
        :pswitch_4b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5a
        :pswitch_59
        :pswitch_0
        :pswitch_5b
        :pswitch_5c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_28
        :pswitch_4c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x71 -> :sswitch_1
        0x75 -> :sswitch_1
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getNext(Ljava/lang/String;II)I
    .locals 1

    add-int/lit8 v0, p2, 0x1

    if-ge v0, p1, :cond_0

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSourceStringEnd(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/Decompiler;->printSourceString(Ljava/lang/String;IZLjava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method private increaseSourceCapacity(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    array-length v0, v0

    if-gt p1, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-ge v0, p1, :cond_1

    :goto_0
    new-array v0, p1, [C

    iget-object v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    return-void

    :cond_1
    move p1, v0

    goto :goto_0
.end method

.method private static printSourceNumber(Ljava/lang/String;ILjava/lang/StringBuffer;)I
    .locals 8

    const/16 v7, 0x4a

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, p1, 0x1

    const/16 v4, 0x53

    if-ne v2, v4, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-double v0, v0

    :cond_0
    add-int/lit8 v2, v3, 0x1

    :goto_0
    if-eqz p2, :cond_1

    const/16 v3, 0xa

    invoke-static {v0, v1, v3}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    return v2

    :cond_2
    if-eq v2, v7, :cond_3

    const/16 v4, 0x44

    if-ne v2, v4, :cond_6

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-long v0, v0

    const/16 v4, 0x30

    shl-long/2addr v0, v4

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, v3, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v4, v4

    or-long/2addr v0, v4

    if-ne v2, v7, :cond_5

    long-to-double v0, v0

    :cond_4
    :goto_1
    add-int/lit8 v2, v3, 0x4

    goto :goto_0

    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private static printSourceString(Ljava/lang/String;IZLjava/lang/StringBuffer;)I
    .locals 4

    const/16 v3, 0x22

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, p1, 0x1

    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    and-int/lit16 v0, v0, 0x7fff

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    :cond_0
    if-eqz p3, :cond_1

    add-int v2, v1, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_2
    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private sourceToString(I)Ljava/lang/String;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    if-ge v0, p1, :cond_1

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method addEOL(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xa3

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    int-to-char v0, p1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    return-void
.end method

.method addName(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->appendString(Ljava/lang/String;)V

    return-void
.end method

.method addNumber(D)V
    .locals 7

    const/16 v6, 0x30

    const/16 v5, 0x20

    const/16 v4, 0x10

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    double-to-long v0, p1

    long-to-double v2, v0

    cmpl-double v2, v2, p1

    if-eqz v2, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x44

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long v2, v0, v6

    long-to-int v2, v2

    int-to-char v2, v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long v2, v0, v5

    long-to-int v2, v2

    int-to-char v2, v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long v2, v0, v4

    long-to-int v2, v2

    int-to-char v2, v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    long-to-int v0, v0

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1
    const-wide/32 v2, 0xffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    const/16 v2, 0x53

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    long-to-int v0, v0

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x4a

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long v2, v0, v6

    long-to-int v2, v2

    int-to-char v2, v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long v2, v0, v5

    long-to-int v2, v2

    int-to-char v2, v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    shr-long v2, v0, v4

    long-to-int v2, v2

    int-to-char v2, v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    long-to-int v0, v0

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    goto :goto_0
.end method

.method addRegexp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x2f

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->appendString(Ljava/lang/String;)V

    return-void
.end method

.method addString(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->appendString(Ljava/lang/String;)V

    return-void
.end method

.method addToken(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xa3

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    int-to-char v0, p1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    return-void
.end method

.method getCurrentOffset()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    return v0
.end method

.method getEncodedSource()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->sourceToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method markFunctionEnd(I)I
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Decompiler;->getCurrentOffset()I

    move-result v0

    const/16 v1, 0xa4

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    return v0
.end method

.method markFunctionStart(I)I
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Decompiler;->getCurrentOffset()I

    move-result v0

    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    int-to-char v1, p1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    return v0
.end method
