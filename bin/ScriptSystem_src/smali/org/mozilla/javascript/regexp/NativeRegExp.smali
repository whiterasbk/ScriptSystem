.class public Lorg/mozilla/javascript/regexp/NativeRegExp;
.super Lorg/mozilla/javascript/IdScriptableObject;

# interfaces
.implements Lorg/mozilla/javascript/Function;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ANCHOR_BOL:I = -0x2

.field private static final INDEX_LEN:I = 0x2

.field private static final Id_compile:I = 0x1

.field private static final Id_exec:I = 0x4

.field private static final Id_global:I = 0x3

.field private static final Id_ignoreCase:I = 0x4

.field private static final Id_lastIndex:I = 0x1

.field private static final Id_multiline:I = 0x5

.field private static final Id_prefix:I = 0x6

.field private static final Id_source:I = 0x2

.field private static final Id_test:I = 0x5

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field public static final JSREG_FOLD:I = 0x2

.field public static final JSREG_GLOB:I = 0x1

.field public static final JSREG_MULTILINE:I = 0x4

.field public static final MATCH:I = 0x1

.field private static final MAX_INSTANCE_ID:I = 0x5

.field private static final MAX_PROTOTYPE_ID:I = 0x6

.field public static final PREFIX:I = 0x2

.field private static final REGEXP_TAG:Ljava/lang/Object;

.field private static final REOP_ALNUM:B = 0x9t

.field private static final REOP_ALT:B = 0x1ft

.field private static final REOP_ALTPREREQ:B = 0x35t

.field private static final REOP_ALTPREREQ2:B = 0x37t

.field private static final REOP_ALTPREREQi:B = 0x36t

.field private static final REOP_ASSERT:B = 0x29t

.field private static final REOP_ASSERTNOTTEST:B = 0x2ct

.field private static final REOP_ASSERTTEST:B = 0x2bt

.field private static final REOP_ASSERT_NOT:B = 0x2at

.field private static final REOP_BACKREF:B = 0xdt

.field private static final REOP_BOL:B = 0x2t

.field private static final REOP_CLASS:B = 0x16t

.field private static final REOP_DIGIT:B = 0x7t

.field private static final REOP_DOT:B = 0x6t

.field private static final REOP_EMPTY:B = 0x1t

.field private static final REOP_END:B = 0x39t

.field private static final REOP_ENDCHILD:B = 0x31t

.field private static final REOP_EOL:B = 0x3t

.field private static final REOP_FLAT:B = 0xet

.field private static final REOP_FLAT1:B = 0xft

.field private static final REOP_FLAT1i:B = 0x11t

.field private static final REOP_FLATi:B = 0x10t

.field private static final REOP_JUMP:B = 0x20t

.field private static final REOP_LPAREN:B = 0x1dt

.field private static final REOP_MINIMALOPT:B = 0x2ft

.field private static final REOP_MINIMALPLUS:B = 0x2et

.field private static final REOP_MINIMALQUANT:B = 0x30t

.field private static final REOP_MINIMALREPEAT:B = 0x34t

.field private static final REOP_MINIMALSTAR:B = 0x2dt

.field private static final REOP_NCLASS:B = 0x17t

.field private static final REOP_NONALNUM:B = 0xat

.field private static final REOP_NONDIGIT:B = 0x8t

.field private static final REOP_NONSPACE:B = 0xct

.field private static final REOP_OPT:B = 0x1ct

.field private static final REOP_PLUS:B = 0x1bt

.field private static final REOP_QUANT:B = 0x19t

.field private static final REOP_REPEAT:B = 0x33t

.field private static final REOP_RPAREN:B = 0x1et

.field private static final REOP_SIMPLE_END:B = 0x17t

.field private static final REOP_SIMPLE_START:B = 0x1t

.field private static final REOP_SPACE:B = 0xbt

.field private static final REOP_STAR:B = 0x1at

.field private static final REOP_UCFLAT1:B = 0x12t

.field private static final REOP_UCFLAT1i:B = 0x13t

.field private static final REOP_WBDRY:B = 0x4t

.field private static final REOP_WNONBDRY:B = 0x5t

.field public static final TEST:I = 0x0

.field private static final debug:Z = false

.field static final serialVersionUID:J = 0x44e828d6a0fb3a60L


# instance fields
.field lastIndex:D

.field private re:Lorg/mozilla/javascript/regexp/RECompiled;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->$assertionsDisabled:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    iput-object p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    sget-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->RegExp:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    return-void
.end method

.method private static addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V
    .locals 7

    const/16 v6, 0xff

    div-int/lit8 v0, p1, 0x8

    div-int/lit8 v1, p2, 0x8

    iget v2, p0, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    if-ge p2, v2, :cond_0

    if-le p1, p2, :cond_1

    :cond_0
    const-string v0, "SyntaxError"

    const-string v1, "invalid range in character class"

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_1
    and-int/lit8 v2, p1, 0x7

    int-to-char v2, v2

    and-int/lit8 v3, p2, 0x7

    int-to-char v3, v3

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v4, v1, v0

    sub-int/2addr v3, v2

    rsub-int/lit8 v3, v3, 0x7

    shr-int v3, v6, v3

    shl-int v2, v3, v2

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v5, v4, v0

    shl-int v2, v6, v2

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    const/4 v4, -0x1

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v2, v0, v1

    rsub-int/lit8 v3, v3, 0x7

    shr-int v3, v6, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method private static addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V
    .locals 5

    div-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    if-lt p1, v1, :cond_0

    const-string v0, "SyntaxError"

    const-string v1, "invalid range in character class"

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    return-void
.end method

.method private static addIndex([BII)I
    .locals 2

    if-gez p2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    const v0, 0xffff

    if-le p2, v0, :cond_1

    const-string v0, "Too complex regexp"

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_1
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    return v0
.end method

.method private static backrefMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;ILjava/lang/String;I)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    array-length v2, v2

    if-lt p1, v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensIndex(I)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensLength(I)I

    move-result v4

    iget v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v2, v4

    if-le v2, p3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v2, v2, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_6

    add-int v5, v3, v2

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget v6, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v6, v2

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_4

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v5

    invoke-static {v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v6

    if-eq v5, v6, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {p2, v3, p2, v2, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto :goto_0
.end method

.method private static calculateBitmapSize(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RENode;[CII)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iput v1, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    if-ne p3, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    aget-char v1, p2, p3

    const/16 v2, 0x5e

    if-ne v1, v2, :cond_10

    add-int/lit8 v5, p3, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p1, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    move v7, v0

    :goto_1
    if-eq v5, p4, :cond_a

    const/4 v0, 0x2

    aget-char v1, p2, v5

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v1, v5, 0x1

    aget-char v0, p2, v5

    move v2, v0

    move v5, v1

    :goto_2
    if-eqz v3, :cond_8

    if-le v7, v2, :cond_7

    const-string v0, "msg.bad.range"

    const-string v1, ""

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v1, v2, 0x1

    aget-char v2, p2, v2

    sparse-switch v2, :sswitch_data_0

    move v5, v1

    goto :goto_2

    :sswitch_0
    const/16 v0, 0x8

    move v2, v0

    move v5, v1

    goto :goto_2

    :sswitch_1
    const/16 v0, 0xc

    move v2, v0

    move v5, v1

    goto :goto_2

    :sswitch_2
    const/16 v0, 0xa

    move v2, v0

    move v5, v1

    goto :goto_2

    :sswitch_3
    const/16 v0, 0xd

    move v2, v0

    move v5, v1

    goto :goto_2

    :sswitch_4
    const/16 v0, 0x9

    move v2, v0

    move v5, v1

    goto :goto_2

    :sswitch_5
    const/16 v0, 0xb

    move v2, v0

    move v5, v1

    goto :goto_2

    :sswitch_6
    if-ge v1, p4, :cond_1

    aget-char v0, p2, v1

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isControlLetter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    aget-char v1, p2, v1

    and-int/lit8 v1, v1, 0x1f

    int-to-char v1, v1

    :goto_3
    const/16 v2, 0x5c

    move v5, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v1, -0x1

    goto :goto_3

    :sswitch_7
    const/4 v0, 0x4

    :sswitch_8
    const/4 v5, 0x0

    const/4 v2, 0x0

    move v8, v2

    move v2, v1

    move v1, v5

    move v5, v8

    :goto_4
    if-ge v5, v0, :cond_f

    if-ge v2, p4, :cond_f

    add-int/lit8 v6, v2, 0x1

    aget-char v2, p2, v2

    invoke-static {v2, v1}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v2

    if-gez v2, :cond_2

    add-int/lit8 v0, v5, 0x1

    sub-int v1, v6, v0

    const/16 v0, 0x5c

    :goto_5
    move v2, v0

    move v5, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v2

    move v2, v6

    goto :goto_4

    :sswitch_9
    if-eqz v3, :cond_3

    const-string v0, "msg.bad.range"

    const-string v1, ""

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x39

    move v2, v0

    move v5, v1

    goto/16 :goto_2

    :sswitch_a
    if-eqz v3, :cond_4

    const-string v0, "msg.bad.range"

    const-string v1, ""

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    const/high16 v0, 0x10000

    iput v0, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_b
    add-int/lit8 v0, v2, -0x30

    aget-char v5, p2, v1

    const/16 v2, 0x30

    if-gt v2, v5, :cond_5

    const/16 v2, 0x37

    if-gt v5, v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v5, -0x30

    add-int/2addr v1, v0

    aget-char v0, p2, v2

    const/16 v5, 0x30

    if-gt v5, v0, :cond_e

    const/16 v5, 0x37

    if-gt v0, v5, :cond_e

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v5

    const/16 v5, 0xff

    if-gt v0, v5, :cond_6

    move v1, v2

    :cond_5
    :goto_6
    move v2, v0

    move v5, v1

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v0, v2, -0x1

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_7
    iget v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    int-to-char v1, v2

    invoke-static {v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v1

    int-to-char v2, v2

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    move-result v2

    if-lt v1, v2, :cond_9

    :goto_8
    if-le v1, v4, :cond_b

    :goto_9
    move v3, v0

    move v4, v1

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v0, p4, -0x1

    if-ge v5, v0, :cond_d

    aget-char v0, p2, v5

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_d

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x1

    int-to-char v0, v2

    move v7, v0

    goto/16 :goto_1

    :cond_9
    move v1, v2

    goto :goto_8

    :cond_a
    add-int/lit8 v0, v4, 0x1

    iput v0, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_b
    move v1, v4

    goto :goto_9

    :cond_c
    move v1, v2

    goto :goto_8

    :cond_d
    move v0, v3

    goto :goto_7

    :cond_e
    move v0, v1

    move v1, v2

    goto :goto_6

    :cond_f
    move v0, v1

    move v1, v2

    goto/16 :goto_5

    :cond_10
    move v7, v0

    move v5, p3

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_b
        0x31 -> :sswitch_b
        0x32 -> :sswitch_b
        0x33 -> :sswitch_b
        0x34 -> :sswitch_b
        0x35 -> :sswitch_b
        0x36 -> :sswitch_b
        0x37 -> :sswitch_b
        0x44 -> :sswitch_a
        0x53 -> :sswitch_a
        0x57 -> :sswitch_a
        0x62 -> :sswitch_0
        0x63 -> :sswitch_6
        0x64 -> :sswitch_9
        0x66 -> :sswitch_1
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x73 -> :sswitch_a
        0x74 -> :sswitch_4
        0x75 -> :sswitch_7
        0x76 -> :sswitch_5
        0x77 -> :sswitch_a
        0x78 -> :sswitch_8
    .end sparse-switch
.end method

.method private static classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->processCharSet(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V

    :cond_0
    shr-int/lit8 v1, p2, 0x3

    iget v2, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    if-eqz v2, :cond_1

    iget v2, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    if-ge p2, v2, :cond_1

    iget-object v2, p1, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v1, v2, v1

    and-int/lit8 v2, p2, 0x7

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    iget-boolean v1, p1, Lorg/mozilla/javascript/regexp/RECharSet;->sense:Z

    xor-int/2addr v0, v1

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v3, Lorg/mozilla/javascript/regexp/RECompiled;

    invoke-direct {v3, p1}, Lorg/mozilla/javascript/regexp/RECompiled;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz p2, :cond_3

    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x67

    if-ne v5, v6, :cond_0

    or-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v6, 0x69

    if-ne v5, v6, :cond_1

    or-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    const/16 v6, 0x6d

    if-ne v5, v6, :cond_2

    or-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_2
    const-string v6, "msg.invalid.re.flag"

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v2, v1

    :cond_4
    iput v2, v3, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    new-instance v0, Lorg/mozilla/javascript/regexp/CompilerState;

    iget-object v5, v3, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    invoke-direct {v0, p0, v5, v4, v2}, Lorg/mozilla/javascript/regexp/CompilerState;-><init>(Lorg/mozilla/javascript/Context;[CII)V

    if-eqz p3, :cond_8

    if-lez v4, :cond_8

    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v5, 0xe

    invoke-direct {v2, v5}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    aget-char v5, v5, v1

    iput-char v5, v2, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v4, v2, Lorg/mozilla/javascript/regexp/RENode;->length:I

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v1, v2, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    :cond_5
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    iput-object v2, v3, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    if-eqz v2, :cond_6

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    new-array v2, v2, [Lorg/mozilla/javascript/regexp/RECharSet;

    iput-object v2, v3, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    iput v2, v3, Lorg/mozilla/javascript/regexp/RECompiled;->classCount:I

    :cond_6
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {v0, v3, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result v2

    iget-object v4, v3, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    add-int/lit8 v5, v2, 0x1

    const/16 v5, 0x39

    aput-byte v5, v4, v2

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    iput v2, v3, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    iget-object v2, v3, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    aget-byte v1, v2, v1

    sparse-switch v1, :sswitch_data_0

    :cond_7
    :goto_2
    move-object v0, v3

    :goto_3
    return-object v0

    :cond_8
    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :sswitch_0
    iget-object v0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    invoke-static {v0, v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    int-to-char v0, v0

    iput v0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    goto :goto_2

    :sswitch_1
    iget-object v0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput v0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    goto :goto_2

    :sswitch_2
    iget-object v0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    invoke-static {v0, v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    iget-object v1, v3, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v0, v1, v0

    iput v0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    goto :goto_2

    :sswitch_3
    iput v8, v3, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    goto :goto_2

    :sswitch_4
    iget-object v0, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v1, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v1, v9, :cond_7

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v0, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v0, v9, :cond_7

    iput v8, v3, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0xe -> :sswitch_2
        0xf -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x1f -> :sswitch_4
    .end sparse-switch
.end method

.method private static doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-char p1, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v1, 0x1

    iput v1, v0, Lorg/mozilla/javascript/regexp/RENode;->length:I

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v1, -0x1

    iput v1, v0, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return-void
.end method

.method private static downcase(C)C
    .locals 2

    const/16 v1, 0x80

    if-ge p0, v1, :cond_1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    if-lt v0, v1, :cond_0

    move p0, v0

    goto :goto_0
.end method

.method private static emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I
    .locals 9

    iget-object v3, p1, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    :goto_0
    if-eqz p3, :cond_11

    add-int/lit8 v1, p2, 0x1

    iget-byte v0, p3, Lorg/mozilla/javascript/regexp/RENode;->op:B

    aput-byte v0, v3, p2

    iget-byte v0, p3, Lorg/mozilla/javascript/regexp/RENode;->op:B

    sparse-switch v0, :sswitch_data_0

    :goto_1
    iget-object p3, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    move p2, v1

    goto :goto_0

    :sswitch_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :sswitch_1
    iget-byte v0, p3, Lorg/mozilla/javascript/regexp/RENode;->op:B

    const/16 v2, 0x36

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    move v2, v0

    :goto_2
    if-eqz v2, :cond_1

    iget-char v0, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v0

    :goto_3
    invoke-static {v3, v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    add-int/lit8 v1, v1, 0x2

    if-eqz v2, :cond_2

    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    int-to-char v0, v0

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v0

    :goto_4
    invoke-static {v3, v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    add-int/lit8 v0, v1, 0x2

    :goto_5
    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    add-int/lit8 v2, v0, 0x2

    iget-object v4, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, v2, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x20

    aput-byte v5, v3, v2

    add-int/lit8 v2, v4, 0x2

    invoke-static {v3, v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    invoke-static {p0, p1, v2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    const/16 v1, 0x20

    aput-byte v1, v3, v0

    add-int/lit8 v1, v2, 0x2

    invoke-static {v3, v4, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    invoke-static {v3, v2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    goto :goto_2

    :cond_1
    iget-char v0, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    goto :goto_3

    :cond_2
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    goto :goto_4

    :sswitch_2
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    :goto_6
    iget-object v0, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    if-eqz v0, :cond_3

    iget-object v0, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v0, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    const/16 v2, 0xe

    if-ne v0, v2, :cond_3

    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    add-int/2addr v0, v2

    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, v2, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    if-ne v0, v2, :cond_3

    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, v2, Lorg/mozilla/javascript/regexp/RENode;->length:I

    add-int/2addr v0, v2

    iput v0, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    iget-object v0, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v0, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    goto :goto_6

    :cond_3
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_5

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    add-int/lit8 v0, v1, -0x1

    const/16 v2, 0x10

    aput-byte v2, v3, v0

    :goto_7
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    invoke-static {v3, v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result v0

    iget v1, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    invoke-static {v3, v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result v1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v0, v1, -0x1

    const/16 v2, 0xe

    aput-byte v2, v3, v0

    goto :goto_7

    :cond_5
    iget-char v0, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    const/16 v2, 0x100

    if-ge v0, v2, :cond_7

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    add-int/lit8 v0, v1, -0x1

    const/16 v2, 0x11

    aput-byte v2, v3, v0

    :goto_8
    add-int/lit8 v0, v1, 0x1

    iget-char v2, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    move v1, v0

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v0, v1, -0x1

    const/16 v2, 0xf

    aput-byte v2, v3, v0

    goto :goto_8

    :cond_7
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    add-int/lit8 v0, v1, -0x1

    const/16 v2, 0x13

    aput-byte v2, v3, v0

    :goto_9
    iget-char v0, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    invoke-static {v3, v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result v1

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v0, v1, -0x1

    const/16 v2, 0x12

    aput-byte v2, v3, v0

    goto :goto_9

    :sswitch_3
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v3, v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result v0

    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x1e

    aput-byte v2, v3, v0

    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v3, v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result v1

    goto/16 :goto_1

    :sswitch_4
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v3, v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result v1

    goto/16 :goto_1

    :sswitch_5
    add-int/lit8 v0, v1, 0x2

    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x2b

    aput-byte v4, v3, v2

    invoke-static {v3, v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    move v1, v0

    goto/16 :goto_1

    :sswitch_6
    add-int/lit8 v0, v1, 0x2

    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x2c

    aput-byte v4, v3, v2

    invoke-static {v3, v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    move v1, v0

    goto/16 :goto_1

    :sswitch_7
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    if-nez v0, :cond_a

    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    add-int/lit8 v2, v1, -0x1

    iget-boolean v0, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x1a

    :goto_a
    aput-byte v0, v3, v2

    :goto_b
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->parenCount:I

    invoke-static {v3, v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result v0

    iget v1, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v3, v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0x31

    aput-byte v4, v3, v2

    invoke-static {v3, v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    goto/16 :goto_1

    :cond_9
    const/16 v0, 0x2d

    goto :goto_a

    :cond_a
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    if-nez v0, :cond_c

    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    add-int/lit8 v2, v1, -0x1

    iget-boolean v0, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x1c

    :goto_c
    aput-byte v0, v3, v2

    goto :goto_b

    :cond_b
    const/16 v0, 0x2f

    goto :goto_c

    :cond_c
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    add-int/lit8 v2, v1, -0x1

    iget-boolean v0, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-eqz v0, :cond_d

    const/16 v0, 0x1b

    :goto_d
    aput-byte v0, v3, v2

    goto :goto_b

    :cond_d
    const/16 v0, 0x2e

    goto :goto_d

    :cond_e
    iget-boolean v0, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-nez v0, :cond_f

    add-int/lit8 v0, v1, -0x1

    const/16 v2, 0x30

    aput-byte v2, v3, v0

    :cond_f
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    invoke-static {v3, v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result v0

    iget v1, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result v1

    goto :goto_b

    :sswitch_8
    iget-boolean v0, p3, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    if-nez v0, :cond_10

    add-int/lit8 v0, v1, -0x1

    const/16 v2, 0x17

    aput-byte v2, v3, v0

    :cond_10
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    invoke-static {v3, v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result v1

    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    new-instance v4, Lorg/mozilla/javascript/regexp/RECharSet;

    iget v5, p3, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    iget v6, p3, Lorg/mozilla/javascript/regexp/RENode;->startIndex:I

    iget v7, p3, Lorg/mozilla/javascript/regexp/RENode;->kidlen:I

    iget-boolean v8, p3, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/mozilla/javascript/regexp/RECharSet;-><init>(IIIZ)V

    aput-object v4, v0, v2

    goto/16 :goto_1

    :cond_11
    return p2

    :sswitch_9
    move v0, v1

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd -> :sswitch_4
        0xe -> :sswitch_2
        0x16 -> :sswitch_8
        0x19 -> :sswitch_7
        0x1d -> :sswitch_3
        0x1f -> :sswitch_9
        0x29 -> :sswitch_5
        0x2a -> :sswitch_6
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
    .end sparse-switch
.end method

.method private static escapeRegExp(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    const/16 v6, 0x2f

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v7, v0

    move-object v0, v3

    move v3, v7

    :goto_0
    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    if-eq v3, v1, :cond_0

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_4

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_1
    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v1, "\\/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v3, 0x1

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_1
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    move v7, v0

    move-object v0, v1

    move v1, v7

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_2

    :cond_4
    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_1
.end method

.method private execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getImpl(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/regexp/RegExpImpl;

    move-result-object v3

    array-length v0, p3

    if-nez v0, :cond_2

    iget-object v4, v3, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v0, "msg.no.re.input.for"

    invoke-virtual {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    :goto_1
    cmpg-double v2, v0, v7

    if-ltz v2, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v5, v2

    cmpg-double v2, v5, v0

    if-gez v2, :cond_4

    :cond_1
    iput-wide v7, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_2
    aget-object v0, p3, v9

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-wide v0, v7

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    new-array v5, v2, [I

    double-to-int v0, v0

    aput v0, v5, v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    if-eqz v2, :cond_5

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v2, v0, :cond_7

    :cond_5
    move-wide v0, v7

    :goto_3
    iput-wide v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    :cond_6
    move-object v0, v2

    goto :goto_2

    :cond_7
    aget v0, v5, v9

    int-to-double v0, v0

    goto :goto_3
.end method

.method private static executeREBytecode(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I)Z
    .locals 20

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v4, v2, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    const/16 v9, 0x39

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    aget-byte v3, v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    if-gez v1, :cond_26

    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v11, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move/from16 v0, p2

    if-gt v1, v0, :cond_27

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    add-int/lit8 v5, v2, 0x1

    aget-byte v3, v4, v2

    :goto_1
    if-nez v1, :cond_26

    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    move-object/from16 v0, p0

    iget v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    :goto_3
    add-int/lit8 v7, v11, 0x1

    aget-byte v6, v4, v11

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BIIII)V

    move/from16 v18, v1

    move v5, v2

    :goto_4
    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v1

    if-ltz v1, :cond_3

    const/16 v18, 0x1

    :goto_5
    if-eqz v18, :cond_2

    move v5, v1

    :cond_2
    move/from16 v1, v18

    move v2, v5

    :goto_6
    if-nez v1, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    if-eqz v2, :cond_1f

    iget-object v3, v2, Lorg/mozilla/javascript/regexp/REBackTrackData;->previous:Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iget-object v3, v2, Lorg/mozilla/javascript/regexp/REBackTrackData;->parens:[J

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    iget v3, v2, Lorg/mozilla/javascript/regexp/REBackTrackData;->cp:I

    move-object/from16 v0, p0

    iput v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget-object v3, v2, Lorg/mozilla/javascript/regexp/REBackTrackData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    iget v9, v2, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuationOp:I

    iget v10, v2, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuationPc:I

    iget v5, v2, Lorg/mozilla/javascript/regexp/REBackTrackData;->pc:I

    iget v3, v2, Lorg/mozilla/javascript/regexp/REBackTrackData;->op:I

    move/from16 v18, v1

    goto :goto_4

    :cond_3
    const/16 v18, 0x0

    goto :goto_5

    :cond_4
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string v1, "invalid bytecode"

    invoke-static {v1}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_1
    invoke-static {v4, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v1

    int-to-char v2, v1

    add-int/lit8 v1, v5, 0x2

    invoke-static {v4, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v5

    int-to-char v6, v5

    add-int/lit8 v5, v1, 0x2

    move-object/from16 v0, p0

    iget v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move/from16 v0, p2

    if-ne v1, v0, :cond_5

    const/4 v1, 0x0

    move v2, v5

    goto :goto_6

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0x37

    if-ne v3, v7, :cond_6

    if-eq v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    aget-object v2, v2, v6

    move-object/from16 v0, p0

    invoke-static {v0, v2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    move v2, v5

    goto :goto_6

    :cond_6
    const/16 v7, 0x36

    if-ne v3, v7, :cond_7

    invoke-static {v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v1

    :cond_7
    if-eq v1, v2, :cond_8

    if-eq v1, v6, :cond_8

    const/4 v1, 0x0

    move v2, v5

    goto/16 :goto_6

    :cond_8
    :pswitch_2
    invoke-static {v4, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v1

    add-int v11, v5, v1

    add-int/lit8 v1, v5, 0x2

    add-int/lit8 v5, v1, 0x1

    aget-byte v3, v4, v1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v3

    if-gez v3, :cond_1

    add-int/lit8 v5, v11, 0x1

    aget-byte v3, v4, v11

    goto/16 :goto_4

    :pswitch_3
    invoke-static {v4, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v1

    add-int/2addr v1, v5

    add-int/lit8 v5, v1, 0x1

    aget-byte v3, v4, v1

    goto/16 :goto_4

    :pswitch_4
    invoke-static {v4, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v1

    add-int/lit8 v2, v5, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3, v5}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v5, v2, 0x1

    aget-byte v3, v4, v2

    goto/16 :goto_4

    :pswitch_5
    invoke-static {v4, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v1

    add-int/lit8 v2, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensIndex(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    sub-int/2addr v5, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3, v5}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v5, v2, 0x1

    aget-byte v3, v4, v2

    goto/16 :goto_4

    :pswitch_6
    invoke-static {v4, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v1

    add-int v8, v5, v1

    add-int/lit8 v1, v5, 0x2

    add-int/lit8 v5, v1, 0x1

    aget-byte v3, v4, v1

    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v1

    if-gez v1, :cond_9

    const/4 v1, 0x0

    move v2, v5

    goto/16 :goto_6

    :cond_9
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object/from16 v11, p0

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    const/16 v1, 0x2b

    move-object/from16 v0, p0

    invoke-static {v0, v1, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    goto/16 :goto_4

    :pswitch_7
    invoke-static {v4, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v1

    add-int v8, v5, v1

    add-int/lit8 v1, v5, 0x2

    add-int/lit8 v5, v1, 0x1

    aget-byte v3, v4, v1

    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v1

    if-ltz v1, :cond_a

    aget-byte v1, v4, v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_a

    const/4 v1, 0x0

    move v2, v5

    goto/16 :goto_6

    :cond_a
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object/from16 v11, p0

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    const/16 v1, 0x2c

    move-object/from16 v0, p0

    invoke-static {v0, v1, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    goto/16 :goto_4

    :pswitch_8
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    move-result-object v1

    iget v2, v1, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget-object v2, v1, Lorg/mozilla/javascript/regexp/REProgState;->backTrack:Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iget v10, v1, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v9, v1, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    const/16 v1, 0x2c

    if-ne v3, v1, :cond_24

    if-nez v18, :cond_b

    const/4 v1, 0x1

    :goto_7
    move v2, v5

    goto/16 :goto_6

    :cond_b
    const/4 v1, 0x0

    goto :goto_7

    :pswitch_9
    const/4 v1, 0x0

    sparse-switch v3, :sswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :sswitch_0
    const/4 v1, 0x1

    :sswitch_1
    const/4 v12, 0x0

    const/4 v13, -0x1

    :goto_8
    move-object/from16 v0, p0

    iget v14, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v15, 0x0

    move-object/from16 v11, p0

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    if-eqz v1, :cond_c

    const/16 v1, 0x33

    move-object/from16 v0, p0

    invoke-static {v0, v1, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    const/16 v9, 0x33

    add-int/lit8 v2, v5, 0x6

    add-int/lit8 v1, v2, 0x1

    aget-byte v3, v4, v2

    move v10, v5

    move v5, v1

    goto/16 :goto_4

    :sswitch_2
    const/4 v1, 0x1

    :sswitch_3
    const/4 v12, 0x1

    const/4 v13, -0x1

    goto :goto_8

    :sswitch_4
    const/4 v1, 0x1

    :sswitch_5
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_8

    :sswitch_6
    const/4 v1, 0x1

    :sswitch_7
    invoke-static {v4, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v12

    add-int/lit8 v2, v5, 0x2

    invoke-static {v4, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    add-int/lit8 v5, v2, 0x2

    goto :goto_8

    :cond_c
    if-eqz v12, :cond_d

    const/16 v9, 0x34

    add-int/lit8 v2, v5, 0x6

    add-int/lit8 v1, v2, 0x1

    aget-byte v3, v4, v2

    move v10, v5

    move v5, v1

    goto/16 :goto_4

    :cond_d
    const/16 v1, 0x34

    move-object/from16 v0, p0

    invoke-static {v0, v1, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    add-int/lit8 v1, v5, 0x4

    invoke-static {v4, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v5, v1, 0x1

    aget-byte v3, v4, v1

    goto/16 :goto_4

    :pswitch_a
    const/4 v1, 0x1

    move v3, v9

    move/from16 v18, v1

    move v5, v10

    goto/16 :goto_4

    :cond_e
    move/from16 v18, v1

    :pswitch_b
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    move-result-object v15

    if-nez v18, :cond_10

    iget v1, v15, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    if-nez v1, :cond_f

    const/16 v18, 0x1

    :cond_f
    iget v10, v15, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v9, v15, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    add-int/lit8 v1, v5, 0x4

    invoke-static {v4, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int v5, v1, v2

    move/from16 v1, v18

    move v2, v5

    goto/16 :goto_6

    :cond_10
    iget v1, v15, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    if-nez v1, :cond_11

    move-object/from16 v0, p0

    iget v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget v2, v15, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    if-ne v1, v2, :cond_11

    const/4 v1, 0x0

    iget v10, v15, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v9, v15, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    add-int/lit8 v2, v5, 0x4

    invoke-static {v4, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v3

    add-int v5, v2, v3

    move v2, v5

    goto/16 :goto_6

    :cond_11
    iget v2, v15, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    iget v1, v15, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    if-eqz v2, :cond_23

    add-int/lit8 v2, v2, -0x1

    move v14, v2

    :goto_9
    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    add-int/lit8 v1, v1, -0x1

    move v13, v1

    :goto_a
    if-nez v13, :cond_12

    const/4 v1, 0x1

    iget v10, v15, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v9, v15, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    add-int/lit8 v2, v5, 0x4

    invoke-static {v4, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v3

    add-int v5, v2, v3

    move v2, v5

    goto/16 :goto_6

    :cond_12
    add-int/lit8 v1, v5, 0x6

    aget-byte v8, v4, v1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move/from16 v16, v0

    invoke-static {v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 v10, v1, 0x1

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v9, v4

    move/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v1

    if-gez v1, :cond_14

    if-nez v14, :cond_13

    const/4 v1, 0x1

    :goto_b
    iget v10, v15, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v9, v15, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    add-int/lit8 v2, v5, 0x4

    invoke-static {v4, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v3

    add-int v5, v2, v3

    move v2, v5

    goto/16 :goto_6

    :cond_13
    const/4 v1, 0x0

    goto :goto_b

    :cond_14
    const/16 v18, 0x1

    move v3, v1

    move/from16 v1, v18

    :goto_c
    const/16 v2, 0x33

    const/4 v10, 0x0

    iget v11, v15, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v12, v15, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move-object/from16 v6, p0

    move v7, v14

    move v8, v13

    move/from16 v9, v16

    invoke-static/range {v6 .. v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    if-nez v14, :cond_15

    const/16 v7, 0x33

    iget v10, v15, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v11, v15, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move-object/from16 v6, p0

    move v8, v5

    move/from16 v9, v16

    invoke-static/range {v6 .. v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BIIII)V

    invoke-static {v4, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v7

    add-int/lit8 v6, v5, 0x2

    invoke-static {v4, v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v8

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v7, :cond_15

    add-int v9, v8, v6

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v11}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_15
    aget-byte v6, v4, v3

    const/16 v7, 0x31

    if-eq v6, v7, :cond_e

    add-int/lit8 v10, v3, 0x1

    aget-byte v3, v4, v3

    move/from16 v18, v1

    move v9, v2

    move/from16 v19, v5

    move v5, v10

    move/from16 v10, v19

    goto/16 :goto_4

    :pswitch_c
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    move-result-object v2

    if-nez v18, :cond_19

    iget v1, v2, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_16

    iget v1, v2, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    if-lez v1, :cond_18

    :cond_16
    iget v7, v2, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    iget v8, v2, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v10, 0x0

    iget v11, v2, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v12, v2, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    const/16 v9, 0x34

    invoke-static {v4, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v2

    add-int/lit8 v1, v5, 0x2

    invoke-static {v4, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v3

    add-int/lit8 v6, v1, 0x4

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_17

    add-int v7, v3, v1

    const/4 v8, -0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v10}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_17
    add-int/lit8 v10, v6, 0x1

    aget-byte v3, v4, v6

    move/from16 v19, v5

    move v5, v10

    move/from16 v10, v19

    goto/16 :goto_4

    :cond_18
    iget v10, v2, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v9, v2, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    move/from16 v1, v18

    move v2, v5

    goto/16 :goto_6

    :cond_19
    iget v1, v2, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    if-nez v1, :cond_1a

    move-object/from16 v0, p0

    iget v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget v3, v2, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    if-ne v1, v3, :cond_1a

    const/4 v1, 0x0

    iget v10, v2, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v9, v2, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    move v2, v5

    goto/16 :goto_6

    :cond_1a
    iget v7, v2, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    iget v8, v2, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    if-eqz v7, :cond_1b

    add-int/lit8 v7, v7, -0x1

    :cond_1b
    const/4 v1, -0x1

    if-eq v8, v1, :cond_1c

    add-int/lit8 v8, v8, -0x1

    :cond_1c
    move-object/from16 v0, p0

    iget v9, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v10, 0x0

    iget v11, v2, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v12, v2, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    if-eqz v7, :cond_1e

    const/16 v9, 0x34

    invoke-static {v4, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v2

    add-int/lit8 v1, v5, 0x2

    invoke-static {v4, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v3

    add-int/lit8 v6, v1, 0x4

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v2, :cond_1d

    add-int v7, v3, v1

    const/4 v8, -0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v10}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    add-int/lit8 v10, v6, 0x1

    aget-byte v3, v4, v6

    move/from16 v19, v5

    move v5, v10

    move/from16 v10, v19

    goto/16 :goto_4

    :cond_1e
    iget v10, v2, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v9, v2, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    const/16 v1, 0x34

    move-object/from16 v0, p0

    invoke-static {v0, v1, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    add-int/lit8 v1, v5, 0x4

    invoke-static {v4, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v5, v1, 0x1

    aget-byte v3, v4, v1

    goto/16 :goto_4

    :pswitch_d
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_1f
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_20
    add-int/lit8 v5, v2, 0x1

    aget-byte v3, v4, v2

    move/from16 v18, v1

    goto/16 :goto_4

    :cond_21
    move v3, v1

    move/from16 v1, v18

    goto/16 :goto_c

    :cond_22
    move v13, v1

    goto/16 :goto_a

    :cond_23
    move v14, v2

    goto/16 :goto_9

    :cond_24
    move/from16 v1, v18

    goto/16 :goto_7

    :cond_25
    move/from16 v1, v18

    move v2, v5

    goto/16 :goto_3

    :cond_26
    move/from16 v18, v8

    goto/16 :goto_4

    :cond_27
    move v1, v11

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_d
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x19 -> :sswitch_6
        0x1a -> :sswitch_0
        0x1b -> :sswitch_2
        0x1c -> :sswitch_4
        0x2d -> :sswitch_1
        0x2e -> :sswitch_3
        0x2f -> :sswitch_5
        0x30 -> :sswitch_7
    .end sparse-switch
.end method

.method private static flatNIMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v1, p2

    if-le v1, p4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v2, v1, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_3

    add-int v3, p1, v1

    aget-char v3, v2, v3

    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v4, v1

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_2

    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v3

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v4

    if-ne v3, v4, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static flatNMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v1, p2

    if-le v1, p4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_2

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int v3, p1, v1

    aget-char v2, v2, v3

    iget v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v3, v1

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;ILjava/lang/String;)I
    .locals 6

    const/4 v1, 0x0

    iget v2, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget-object v3, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    add-int/lit8 v0, p0, -0x30

    :goto_0
    iget v4, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-eq v4, v5, :cond_0

    iget v4, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v4, v3, v4

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    iget v1, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v1, v2

    invoke-static {v3, v2, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0

    :cond_2
    if-nez v1, :cond_3

    add-int/lit8 v4, v4, -0x30

    sub-int v5, p2, v4

    div-int/lit8 v5, v5, 0xa

    if-ge v0, v5, :cond_4

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v4

    :cond_3
    :goto_1
    iget v4, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    move v0, p2

    goto :goto_1
.end method

.method private static getImpl(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/regexp/RegExpImpl;
    .locals 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/regexp/RegExpImpl;

    return-object v0
.end method

.method private static getIndex([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static getOffset([BI)I
    .locals 1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    return v0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 5

    const/4 v4, 0x2

    new-instance v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->activatePrototypeMap(I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    new-instance v1, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;

    invoke-direct {v1}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;-><init>()V

    const-string v2, "constructor"

    invoke-virtual {v0, v2, v1, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-static {v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->setImmunePrototypeProperty(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->sealObject()V

    invoke-virtual {v1}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->sealObject()V

    :cond_0
    const-string v0, "RegExp"

    invoke-static {p1, v0, v1, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private static isControlLetter(C)Z
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLineTerm(C)Z
    .locals 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v0

    return v0
.end method

.method private static isREWhiteSpace(I)Z
    .locals 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result v0

    return v0
.end method

.method private static isWord(C)Z
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchRegExp(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECompiled;Ljava/lang/String;IIZ)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget v0, p1, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    if-eqz v0, :cond_2

    iget v0, p1, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    :goto_0
    iput-object v7, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iput-object v7, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    if-nez p5, :cond_0

    iget v0, p1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v3, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    move v0, p3

    :goto_2
    if-gt v0, p4, :cond_1

    if-ltz v3, :cond_5

    :goto_3
    if-ne v0, p4, :cond_4

    :cond_1
    :goto_4
    return v1

    :cond_2
    iput-object v7, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_5

    iget-object v5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v5, v5, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v4

    int-to-char v5, v3

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v5

    if-ne v4, v5, :cond_6

    :cond_5
    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    sub-int/2addr v0, p3

    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    move v0, v1

    :goto_5
    iget v4, p1, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    if-ge v0, v4, :cond_7

    iget-object v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    const-wide/16 v5, -0x1

    aput-wide v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-static {p0, p2, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeREBytecode(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I)Z

    move-result v0

    iput-object v7, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iput-object v7, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    if-eqz v0, :cond_8

    move v1, v2

    goto :goto_4

    :cond_8
    const/4 v0, -0x2

    if-ne v3, v0, :cond_9

    iget-boolean v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    if-nez v0, :cond_9

    iput p4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    goto :goto_4

    :cond_9
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static parseAlternative(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    move-object v1, v0

    :cond_0
    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-eq v4, v5, :cond_1

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v4, v3, v4

    const/16 v5, 0x7c

    if-eq v4, v5, :cond_1

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    if-eqz v4, :cond_3

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v4, v3, v4

    const/16 v5, 0x29

    if-ne v4, v5, :cond_3

    :cond_1
    if-nez v1, :cond_2

    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_2
    iput-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseTerm(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    move-object v1, v0

    :goto_2
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    if-eqz v4, :cond_0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v4, v0, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    goto :goto_2
.end method

.method private static parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .locals 8

    const/16 v7, 0x100

    const/16 v6, 0x37

    const/16 v5, 0x16

    const/4 v0, 0x0

    const/16 v4, 0xe

    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseAlternative(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    array-length v3, v1

    if-eq v2, v3, :cond_2

    aget-char v1, v1, v2

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_2

    iget v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v2, v1, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v0, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v0, v4, :cond_4

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v0, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v0, v4, :cond_4

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/16 v0, 0x35

    :goto_1
    iput-byte v0, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget-char v0, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput-char v0, v1, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iget-char v0, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput v0, v1, Lorg/mozilla/javascript/regexp/RENode;->index:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0xd

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    :cond_2
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x36

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v0, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v0, v5, :cond_5

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RENode;->index:I

    if-ge v0, v7, :cond_5

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v0, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v0, v4, :cond_5

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    iput-byte v6, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iget-char v0, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput-char v0, v1, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RENode;->index:I

    iput v0, v1, Lorg/mozilla/javascript/regexp/RENode;->index:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0xd

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_2

    :cond_5
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v0, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v0, v4, :cond_6

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v0, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v0, v5, :cond_6

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RENode;->index:I

    if-ge v0, v7, :cond_6

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    iput-byte v6, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget-char v0, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput-char v0, v1, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RENode;->index:I

    iput v0, v1, Lorg/mozilla/javascript/regexp/RENode;->index:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0xd

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_2

    :cond_6
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x9

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_2
.end method

.method private static parseTerm(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .locals 13

    const/16 v11, 0x9

    const/4 v4, -0x1

    const/16 v10, 0x19

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v7, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v2, v7, v0

    const/4 v0, 0x2

    iget v8, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    sparse-switch v2, :sswitch_data_0

    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v5, 0xe

    invoke-direct {v0, v5}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-char v2, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v3, v0, Lorg/mozilla/javascript/regexp/RENode;->length:I

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ne v0, v2, :cond_14

    move v1, v3

    :cond_1
    :goto_1
    return v1

    :sswitch_0
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v1, v3

    goto :goto_1

    :sswitch_1
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v1, v3

    goto :goto_1

    :sswitch_2
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v2, v5, :cond_a

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v2, v7, v2

    sparse-switch v2, :sswitch_data_1

    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v5, 0xe

    invoke-direct {v0, v5}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-char v2, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v3, v0, Lorg/mozilla/javascript/regexp/RENode;->length:I

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v1, v3

    goto :goto_1

    :sswitch_4
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v1, v3

    goto :goto_1

    :sswitch_5
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cx:Lorg/mozilla/javascript/Context;

    const-string v2, "msg.bad.backref"

    const-string v5, ""

    invoke-static {v0, v2, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_2
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v2, v5, :cond_2

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v2, v7, v2

    const/16 v5, 0x30

    if-lt v2, v5, :cond_2

    const/16 v5, 0x37

    if-gt v2, v5, :cond_2

    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    mul-int/lit8 v5, v0, 0x8

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v2, v5

    const/16 v5, 0xff

    if-le v2, v5, :cond_3

    :cond_2
    int-to-char v0, v0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :sswitch_6
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v0, v0, -0x1

    const v5, 0xffff

    const-string v6, "msg.overlarge.backref"

    invoke-static {v2, p0, v5, v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;ILjava/lang/String;)I

    move-result v2

    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    if-le v2, v5, :cond_4

    iget-object v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cx:Lorg/mozilla/javascript/Context;

    const-string v6, "msg.bad.backref"

    const-string v9, ""

    invoke-static {v5, v6, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-le v2, v11, :cond_7

    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    if-le v2, v5, :cond_7

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    move v0, v1

    :goto_3
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v2, v5, :cond_5

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v2, v7, v2

    const/16 v5, 0x30

    if-lt v2, v5, :cond_5

    const/16 v5, 0x37

    if-gt v2, v5, :cond_5

    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    mul-int/lit8 v5, v0, 0x8

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v2, v5

    const/16 v5, 0xff

    if-le v2, v5, :cond_6

    :cond_5
    int-to-char v0, v0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v5, 0xd

    invoke-direct {v0, v5}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0xd

    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_0

    :sswitch_a
    invoke-static {p0, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0xb

    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_0

    :sswitch_c
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v0, v2, :cond_8

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v0, v7, v0

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isControlLetter(C)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v0, v7, v0

    and-int/lit8 v0, v0, 0x1f

    int-to-char v0, v0

    :goto_4
    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const/16 v0, 0x5c

    goto :goto_4

    :sswitch_d
    const/4 v0, 0x4

    :sswitch_e
    move v5, v1

    move v2, v1

    :goto_5
    if-ge v5, v0, :cond_1c

    iget v6, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v9, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v6, v9, :cond_1c

    iget v6, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v6, v7, v6

    invoke-static {v6, v2}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-gez v6, :cond_9

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v2, v5, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v0, v7, v0

    :goto_6
    int-to-char v0, v0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v6

    goto :goto_5

    :sswitch_f
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_0

    :sswitch_10
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_0

    :sswitch_11
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_0

    :sswitch_12
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v2, 0xc

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_0

    :sswitch_13
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v0, v11}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_0

    :sswitch_14
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_0

    :cond_a
    const-string v0, "msg.trail.backslash"

    const-string v2, ""

    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_15
    const/4 v0, 0x0

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v2, v2, 0x1

    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v2, v5, :cond_f

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v2, v7, v2

    const/16 v5, 0x3f

    if-ne v2, v5, :cond_f

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v2, v2, 0x1

    aget-char v2, v7, v2

    const/16 v5, 0x3d

    if-eq v2, v5, :cond_b

    const/16 v5, 0x21

    if-eq v2, v5, :cond_b

    const/16 v5, 0x3a

    if-ne v2, v5, :cond_f

    :cond_b
    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const/16 v5, 0x3d

    if-ne v2, v5, :cond_e

    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v2, 0x29

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    :cond_c
    :goto_7
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-eq v2, v5, :cond_d

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v2, v7, v2

    const/16 v5, 0x29

    if-eq v2, v5, :cond_10

    :cond_d
    const-string v0, "msg.unterm.paren"

    const-string v2, ""

    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const/16 v5, 0x21

    if-ne v2, v5, :cond_c

    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v2, 0x2a

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_7

    :cond_f
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v2, 0x1d

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x6

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    iput v2, v0, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    goto :goto_7

    :cond_10
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "msg.re.unmatched.right.paren"

    const-string v2, ""

    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_17
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v2, 0x16

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v0, v2, Lorg/mozilla/javascript/regexp/RENode;->startIndex:I

    :goto_8
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ne v2, v5, :cond_11

    const-string v0, "msg.unterm.class"

    const-string v2, ""

    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v2, v7, v2

    const/16 v5, 0x5c

    if-ne v2, v5, :cond_13

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    :cond_12
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto :goto_8

    :cond_13
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v2, v7, v2

    const/16 v5, 0x5d

    if-ne v2, v5, :cond_12

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v5, v0

    iput v5, v2, Lorg/mozilla/javascript/regexp/RENode;->kidlen:I

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    iput v5, v2, Lorg/mozilla/javascript/regexp/RENode;->index:I

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    invoke-static {p0, v2, v7, v0, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->calculateBitmapSize(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RENode;[CII)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_0

    :sswitch_18
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "msg.bad.quant"

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v2, v2, -0x1

    aget-char v2, v7, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v0, v7, v0

    sparse-switch v0, :sswitch_data_2

    move v0, v1

    :cond_15
    :goto_9
    if-nez v0, :cond_18

    move v1, v3

    goto/16 :goto_1

    :sswitch_1a
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v0, v10}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v3, v0, Lorg/mozilla/javascript/regexp/RENode;->min:I

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v4, v0, Lorg/mozilla/javascript/regexp/RENode;->max:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v0, v3

    goto :goto_9

    :sswitch_1b
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v0, v10}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v1, v0, Lorg/mozilla/javascript/regexp/RENode;->min:I

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v4, v0, Lorg/mozilla/javascript/regexp/RENode;->max:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v0, v3

    goto :goto_9

    :sswitch_1c
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v0, v10}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v1, v0, Lorg/mozilla/javascript/regexp/RENode;->min:I

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v3, v0, Lorg/mozilla/javascript/regexp/RENode;->max:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v0, v3

    goto :goto_9

    :sswitch_1d
    iget v6, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    array-length v2, v7

    if-ge v0, v2, :cond_1a

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v0, v7, v0

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const v2, 0xffff

    const-string v9, "msg.overlarge.min"

    invoke-static {v0, p0, v2, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;ILjava/lang/String;)I

    move-result v2

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v0, v7, v0

    const/16 v9, 0x2c

    if-ne v0, v9, :cond_16

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v0, v7, v0

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_1b

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const v4, 0xffff

    const-string v9, "msg.overlarge.max"

    invoke-static {v0, p0, v4, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;ILjava/lang/String;)I

    move-result v0

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v4, v7, v4

    if-le v2, v0, :cond_17

    const-string v0, "msg.max.lt.min"

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v2, v7, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_16
    move v4, v0

    move v0, v2

    :cond_17
    :goto_a
    const/16 v9, 0x7d

    if-ne v4, v9, :cond_1a

    new-instance v4, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v4, v10}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v2, v4, Lorg/mozilla/javascript/regexp/RENode;->min:I

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v0, v2, Lorg/mozilla/javascript/regexp/RENode;->max:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v0, v3

    :goto_b
    if-nez v0, :cond_15

    iput v6, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto/16 :goto_9

    :cond_18
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v5, v0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v8, v0, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    sub-int/2addr v2, v8

    iput v2, v0, Lorg/mozilla/javascript/regexp/RENode;->parenCount:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v0, v2, :cond_19

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v0, v7, v0

    const/16 v2, 0x3f

    if-ne v0, v2, :cond_19

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-boolean v1, v0, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    :goto_c
    move v1, v3

    goto/16 :goto_1

    :cond_19
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-boolean v3, v0, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    goto :goto_c

    :cond_1a
    move v0, v1

    goto :goto_b

    :cond_1b
    move v12, v4

    move v4, v0

    move v0, v12

    goto :goto_a

    :cond_1c
    move v0, v2

    goto/16 :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_1
        0x28 -> :sswitch_15
        0x29 -> :sswitch_16
        0x2a -> :sswitch_19
        0x2b -> :sswitch_19
        0x2e -> :sswitch_18
        0x3f -> :sswitch_19
        0x5b -> :sswitch_17
        0x5c -> :sswitch_2
        0x5e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_5
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x42 -> :sswitch_4
        0x44 -> :sswitch_10
        0x53 -> :sswitch_12
        0x57 -> :sswitch_14
        0x62 -> :sswitch_3
        0x63 -> :sswitch_c
        0x64 -> :sswitch_f
        0x66 -> :sswitch_7
        0x6e -> :sswitch_8
        0x72 -> :sswitch_9
        0x73 -> :sswitch_11
        0x74 -> :sswitch_a
        0x75 -> :sswitch_d
        0x76 -> :sswitch_b
        0x77 -> :sswitch_13
        0x78 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2a -> :sswitch_1b
        0x2b -> :sswitch_1a
        0x3f -> :sswitch_1c
        0x7b -> :sswitch_1d
    .end sparse-switch
.end method

.method private static popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REProgState;->previous:Lorg/mozilla/javascript/regexp/REProgState;

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    return-object v0
.end method

.method private static processCharSet(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->processCharSetImpl(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static processCharSetImpl(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V
    .locals 14

    const/16 v1, 0x5c

    const/16 v12, 0x37

    const/16 v11, 0x30

    const/4 v6, 0x0

    iget v2, p1, Lorg/mozilla/javascript/regexp/RECharSet;->startIndex:I

    iget v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->strlength:I

    add-int v9, v2, v0

    iget v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    if-ne v2, v9, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v0, v0, v2

    const/16 v3, 0x5e

    if-ne v0, v3, :cond_4

    sget-boolean v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->sense:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v8, v6

    move v4, v6

    move v3, v2

    :cond_3
    :goto_0
    if-eq v3, v9, :cond_0

    const/4 v0, 0x2

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v2, v2, v3

    packed-switch v2, :pswitch_data_0

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int/lit8 v2, v3, 0x1

    aget-char v0, v0, v3

    move v3, v2

    move v2, v0

    :goto_1
    if-eqz v8, :cond_12

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    sget-boolean v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->$assertionsDisabled:Z

    if-nez v0, :cond_d

    if-le v4, v2, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    sget-boolean v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->$assertionsDisabled:Z

    if-nez v0, :cond_17

    iget-boolean v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->sense:Z

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v5, v2, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int/lit8 v2, v3, 0x1

    aget-char v3, v5, v3

    sparse-switch v3, :sswitch_data_0

    move v13, v3

    move v3, v2

    move v2, v13

    goto :goto_1

    :sswitch_0
    const/16 v0, 0x8

    move v3, v2

    move v2, v0

    goto :goto_1

    :sswitch_1
    const/16 v0, 0xc

    move v3, v2

    move v2, v0

    goto :goto_1

    :sswitch_2
    const/16 v0, 0xa

    move v3, v2

    move v2, v0

    goto :goto_1

    :sswitch_3
    const/16 v0, 0xd

    move v3, v2

    move v2, v0

    goto :goto_1

    :sswitch_4
    const/16 v0, 0x9

    move v3, v2

    move v2, v0

    goto :goto_1

    :sswitch_5
    const/16 v0, 0xb

    move v3, v2

    move v2, v0

    goto :goto_1

    :sswitch_6
    if-ge v2, v9, :cond_5

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v0, v0, v2

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isControlLetter(C)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v0, v0, v2

    and-int/lit8 v0, v0, 0x1f

    int-to-char v0, v0

    move v2, v0

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    move v2, v1

    goto :goto_1

    :sswitch_7
    const/4 v0, 0x4

    :sswitch_8
    move v5, v6

    move v3, v2

    move v2, v6

    :goto_2
    if-ge v5, v0, :cond_16

    if-ge v3, v9, :cond_16

    iget-object v7, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v10, v7, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int/lit8 v7, v3, 0x1

    aget-char v3, v10, v3

    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->toASCIIHexDigit(I)I

    move-result v3

    if-gez v3, :cond_6

    add-int/lit8 v0, v5, 0x1

    sub-int v0, v7, v0

    move v2, v0

    move v0, v1

    :goto_3
    int-to-char v0, v0

    move v3, v2

    move v2, v0

    goto/16 :goto_1

    :cond_6
    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v3, v2

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v3

    move v3, v7

    goto :goto_2

    :sswitch_9
    add-int/lit8 v0, v3, -0x30

    iget-object v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v3, v3, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v5, v3, v2

    if-gt v11, v5, :cond_7

    if-gt v5, v12, :cond_7

    add-int/lit8 v3, v2, 0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v5, -0x30

    add-int/2addr v2, v0

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v0, v0, v3

    if-gt v11, v0, :cond_15

    if-gt v0, v12, :cond_15

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v5, v2, 0x8

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v5

    const/16 v5, 0xff

    if-gt v0, v5, :cond_8

    move v2, v3

    :cond_7
    :goto_4
    int-to-char v0, v0

    move v3, v2

    move v2, v0

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v0, v3, -0x1

    move v13, v2

    move v2, v0

    move v0, v13

    goto :goto_4

    :sswitch_a
    const/16 v0, 0x39

    invoke-static {p1, v11, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    move v3, v2

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x2f

    invoke-static {p1, v6, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    const/16 v0, 0x3a

    iget v3, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    add-int/lit8 v3, v3, -0x1

    int-to-char v3, v3

    invoke-static {p1, v0, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    move v3, v2

    goto/16 :goto_0

    :sswitch_c
    iget v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_14

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result v3

    if-eqz v3, :cond_9

    int-to-char v3, v0

    invoke-static {p1, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :sswitch_d
    iget v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result v3

    if-nez v3, :cond_a

    int-to-char v3, v0

    invoke-static {p1, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :sswitch_e
    iget v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_14

    int-to-char v3, v0

    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v3

    if-eqz v3, :cond_b

    int-to-char v3, v0

    invoke-static {p1, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :sswitch_f
    iget v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_14

    int-to-char v3, v0

    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v3

    if-nez v3, :cond_c

    int-to-char v3, v0

    invoke-static {p1, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_d
    move v0, v4

    :goto_9
    if-gt v0, v2, :cond_11

    invoke-static {p1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v5

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    move-result v7

    if-eq v0, v5, :cond_e

    invoke-static {p1, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_e
    if-eq v0, v7, :cond_f

    invoke-static {p1, v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_9

    :cond_10
    invoke-static {p1, v4, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    :cond_11
    move v8, v6

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_13

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    move-result v0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :goto_a
    add-int/lit8 v0, v9, -0x1

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v0, v0, v3

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x1

    move v8, v0

    move v4, v2

    goto/16 :goto_0

    :cond_13
    invoke-static {p1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    goto :goto_a

    :cond_14
    move v3, v2

    goto/16 :goto_0

    :cond_15
    move v0, v2

    move v2, v3

    goto/16 :goto_4

    :cond_16
    move v0, v2

    move v2, v3

    goto/16 :goto_3

    :cond_17
    move v8, v6

    move v4, v6

    move v3, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_9
        0x31 -> :sswitch_9
        0x32 -> :sswitch_9
        0x33 -> :sswitch_9
        0x34 -> :sswitch_9
        0x35 -> :sswitch_9
        0x36 -> :sswitch_9
        0x37 -> :sswitch_9
        0x44 -> :sswitch_b
        0x53 -> :sswitch_d
        0x57 -> :sswitch_f
        0x62 -> :sswitch_0
        0x63 -> :sswitch_6
        0x64 -> :sswitch_a
        0x66 -> :sswitch_1
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x73 -> :sswitch_c
        0x74 -> :sswitch_4
        0x75 -> :sswitch_7
        0x76 -> :sswitch_5
        0x77 -> :sswitch_e
        0x78 -> :sswitch_8
    .end sparse-switch
.end method

.method private static pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V
    .locals 7

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    new-instance v0, Lorg/mozilla/javascript/regexp/REBackTrackData;

    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget v5, v1, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v6, v1, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/REBackTrackData;-><init>(Lorg/mozilla/javascript/regexp/REGlobalData;IIIII)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    return-void
.end method

.method private static pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BIIII)V
    .locals 7

    new-instance v0, Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/REBackTrackData;-><init>(Lorg/mozilla/javascript/regexp/REGlobalData;IIIII)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    return-void
.end method

.method private static pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V
    .locals 8

    new-instance v0, Lorg/mozilla/javascript/regexp/REProgState;

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/mozilla/javascript/regexp/REProgState;-><init>(Lorg/mozilla/javascript/regexp/REProgState;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    return-void
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;
    .locals 1

    instance-of v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_0
    check-cast p0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    return-object p0
.end method

.method private static reopIsSimple(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x17

    if-gt p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyntaxError"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method

.method private static reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static resolveForwardJump([BII)V
    .locals 1

    if-le p1, p2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    sub-int v0, p2, p1

    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    return-void
.end method

.method private static simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_1
    move v1, v2

    move v0, p4

    :cond_0
    :goto_0
    if-eqz v1, :cond_e

    if-nez p6, :cond_1

    iput v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    :cond_1
    :goto_1
    return v0

    :pswitch_2
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, p4

    goto :goto_0

    :cond_2
    move v1, v2

    move v0, p4

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq v0, p5, :cond_3

    iget-boolean v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, p4

    goto :goto_0

    :cond_3
    move v1, v2

    move v0, p4

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    move v0, v2

    :goto_2
    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-ge v4, p5, :cond_5

    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    xor-int/2addr v1, v0

    move v0, p4

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    :pswitch_5
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    move v0, v2

    :goto_3
    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-ge v4, p5, :cond_a

    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_4
    xor-int v1, v0, v2

    move v0, p4

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_3

    :cond_a
    move v2, v1

    goto :goto_4

    :pswitch_6
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq v0, p5, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v1, v2

    move v0, p4

    goto/16 :goto_0

    :pswitch_7
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq v0, p5, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v1, v2

    move v0, p4

    goto/16 :goto_0

    :pswitch_8
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq v0, p5, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v1, v2

    move v0, p4

    goto/16 :goto_0

    :pswitch_9
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq v0, p5, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v1, v2

    move v0, p4

    goto/16 :goto_0

    :pswitch_a
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq v0, p5, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v1, v2

    move v0, p4

    goto/16 :goto_0

    :pswitch_b
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq v0, p5, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v1, v2

    move v0, p4

    goto/16 :goto_0

    :pswitch_c
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq v0, p5, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v1, v2

    move v0, p4

    goto/16 :goto_0

    :pswitch_d
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int/lit8 p4, p4, 0x2

    invoke-static {p0, v0, p1, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->backrefMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;ILjava/lang/String;I)Z

    move-result v1

    move v0, p4

    goto/16 :goto_0

    :pswitch_e
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int/lit8 v1, p4, 0x2

    invoke-static {p3, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v2

    add-int/lit8 p4, v1, 0x2

    invoke-static {p0, v0, v2, p1, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->flatNMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z

    move-result v1

    move v0, p4

    goto/16 :goto_0

    :pswitch_f
    add-int/lit8 v0, p4, 0x1

    aget-byte v4, p3, p4

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    iget v5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq v5, p5, :cond_0

    iget v5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_0

    iget v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v1, v2

    goto/16 :goto_0

    :pswitch_10
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int/lit8 v1, p4, 0x2

    invoke-static {p3, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v2

    add-int/lit8 p4, v1, 0x2

    invoke-static {p0, v0, v2, p1, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->flatNIMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z

    move-result v1

    move v0, p4

    goto/16 :goto_0

    :pswitch_11
    add-int/lit8 v0, p4, 0x1

    aget-byte v4, p3, p4

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    iget v5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq v5, p5, :cond_0

    iget v5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_b

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v4

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v5

    if-ne v4, v5, :cond_0

    :cond_b
    iget v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v1, v2

    goto/16 :goto_0

    :pswitch_12
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    int-to-char v0, v0

    add-int/lit8 p4, p4, 0x2

    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq v4, p5, :cond_f

    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v1, v2

    move v0, p4

    goto/16 :goto_0

    :pswitch_13
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    int-to-char v0, v0

    add-int/lit8 p4, p4, 0x2

    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq v4, p5, :cond_f

    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_c

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v0

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v4

    if-ne v0, v4, :cond_d

    :cond_c
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v1, v2

    :cond_d
    move v0, p4

    goto/16 :goto_0

    :pswitch_14
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int/lit8 p4, p4, 0x2

    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq v4, p5, :cond_f

    iget-object v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v4, v4, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    aget-object v0, v4, v0

    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {p0, v0, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v1, v2

    move v0, p4

    goto/16 :goto_0

    :cond_e
    iput v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v0, -0x1

    goto/16 :goto_1

    :cond_f
    move v0, p4

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method private static toASCIIHexDigit(I)I
    .locals 3

    const/4 v0, -0x1

    const/16 v1, 0x30

    if-ge p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x39

    if-gt p0, v1, :cond_2

    add-int/lit8 v0, p0, -0x30

    goto :goto_0

    :cond_2
    or-int/lit8 v1, p0, 0x20

    const/16 v2, 0x61

    if-gt v2, v1, :cond_0

    const/16 v2, 0x66

    if-gt v1, v2, :cond_0

    add-int/lit8 v0, v1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method private static upcase(C)C
    .locals 2

    const/16 v1, 0x80

    if-ge p0, v1, :cond_1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x20

    int-to-char p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    if-lt v0, v1, :cond_0

    move p0, v0

    goto :goto_0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p4, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method compile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    array-length v0, p3

    if-lez v0, :cond_1

    aget-object v0, p3, v4

    instance-of v0, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz v0, :cond_1

    array-length v0, p3

    if-le v0, v3, :cond_0

    aget-object v0, p3, v3

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const-string v0, "msg.bad.regexp.compile"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_0
    aget-object v0, p3, v4

    check-cast v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-wide v0, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    iput-wide v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    :goto_0
    return-object p0

    :cond_1
    array-length v0, p3

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    array-length v1, p3

    if-le v1, v3, :cond_3

    aget-object v1, p3, v3

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    aget-object v1, p3, v3

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {p1, v0, v1, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    goto :goto_0

    :cond_2
    aget-object v0, p3, v4

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->escapeRegExp(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v0, p2, p3, p5, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, p5, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_4
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {v0, p2, p3, p5, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;
    .locals 14

    new-instance v1, Lorg/mozilla/javascript/regexp/REGlobalData;

    invoke-direct {v1}, Lorg/mozilla/javascript/regexp/REGlobalData;-><init>()V

    const/4 v2, 0x0

    aget v4, p5, v2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_0

    move v4, v5

    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    move-object/from16 v0, p3

    iget-boolean v6, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    move-object/from16 v3, p4

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->matchRegExp(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECompiled;Ljava/lang/String;IIZ)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x2

    move/from16 v0, p6

    if-eq v0, v1, :cond_1

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget v8, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v2, 0x0

    aput v8, p5, v2

    iget v2, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v2, v4

    sub-int v9, v8, v2

    sub-int v10, v8, v9

    if-nez p6, :cond_5

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v6, v6, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    if-nez v6, :cond_6

    const/4 v6, 0x0

    move-object/from16 v0, p3

    iput-object v6, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    sget-object v6, Lorg/mozilla/javascript/regexp/SubString;->emptySubString:Lorg/mozilla/javascript/regexp/SubString;

    move-object/from16 v0, p3

    iput-object v6, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    :goto_2
    if-eqz p6, :cond_3

    const-string v6, "index"

    iget v7, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v2, v7}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    const-string v6, "input"

    move-object/from16 v0, p4

    invoke-interface {v2, v6, v2, v0}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    if-nez v2, :cond_4

    new-instance v2, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v2}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    move-object/from16 v0, p3

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    new-instance v2, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v2}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    move-object/from16 v0, p3

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    new-instance v2, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v2}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    move-object/from16 v0, p3

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    :cond_4
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    move-object/from16 v0, p4

    iput-object v0, v2, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    iput v10, v2, Lorg/mozilla/javascript/regexp/SubString;->index:I

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    iput v9, v2, Lorg/mozilla/javascript/regexp/SubString;->length:I

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    move-object/from16 v0, p4

    iput-object v0, v2, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v2

    const/16 v6, 0x78

    if-ne v2, v6, :cond_a

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iput v4, v2, Lorg/mozilla/javascript/regexp/SubString;->index:I

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iget v1, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    iput v1, v2, Lorg/mozilla/javascript/regexp/SubString;->length:I

    :goto_3
    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    move-object/from16 v0, p4

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    iput v8, v1, Lorg/mozilla/javascript/regexp/SubString;->index:I

    move-object/from16 v0, p3

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    sub-int v2, v5, v8

    iput v2, v1, Lorg/mozilla/javascript/regexp/SubString;->length:I

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/mozilla/javascript/Scriptable;

    add-int v6, v10, v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v2, v7, v2, v6}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    const/4 v7, 0x0

    iget-object v6, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v6, v6, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    new-array v6, v6, [Lorg/mozilla/javascript/regexp/SubString;

    move-object/from16 v0, p3

    iput-object v6, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    const/4 v6, 0x0

    move v13, v6

    move-object v6, v7

    move v7, v13

    :goto_4
    iget-object v11, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v11, v11, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    if-ge v7, v11, :cond_9

    invoke-virtual {v1, v7}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensIndex(I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_8

    invoke-virtual {v1, v7}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensLength(I)I

    move-result v12

    new-instance v6, Lorg/mozilla/javascript/regexp/SubString;

    move-object/from16 v0, p4

    invoke-direct {v6, v0, v11, v12}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    move-object/from16 v0, p3

    iget-object v11, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    aput-object v6, v11, v7

    if-eqz p6, :cond_7

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v6}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v2, v12}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_7
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    if-eqz p6, :cond_7

    add-int/lit8 v11, v7, 0x1

    sget-object v12, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-interface {v2, v11, v2, v12}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    move-object/from16 v0, p3

    iput-object v6, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    const/4 v6, 0x0

    iput v6, v2, Lorg/mozilla/javascript/regexp/SubString;->index:I

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iget v1, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v1, v4

    iput v1, v2, Lorg/mozilla/javascript/regexp/SubString;->length:I

    goto/16 :goto_3
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_0

    const-string v2, "global"

    const/4 v3, 0x3

    move-object v5, v2

    move v2, v3

    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_5

    if-eq v3, p1, :cond_5

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :goto_1
    if-nez v1, :cond_4

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v0

    :goto_2
    return v0

    :cond_0
    const/16 v4, 0x73

    if-ne v3, v4, :cond_6

    const-string v2, "source"

    const/4 v3, 0x2

    move-object v5, v2

    move v2, v3

    move-object v3, v5

    goto :goto_0

    :cond_1
    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_2

    const-string v2, "lastIndex"

    const/4 v3, 0x1

    move-object v5, v2

    move v2, v3

    move-object v3, v5

    goto :goto_0

    :cond_2
    const/16 v4, 0x6d

    if-ne v3, v4, :cond_6

    const-string v2, "multiline"

    const/4 v3, 0x5

    move-object v5, v2

    move v2, v3

    move-object v3, v5

    goto :goto_0

    :cond_3
    const/16 v4, 0xa

    if-ne v3, v4, :cond_6

    const-string v2, "ignoreCase"

    const/4 v3, 0x4

    move-object v5, v2

    move v2, v3

    move-object v3, v5

    goto :goto_0

    :cond_4
    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x7

    :pswitch_1
    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->instanceIdInfo(II)I

    move-result v0

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    move-object v3, v2

    move v2, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 7

    const/16 v5, 0x74

    const/4 v2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v2, v1

    move v1, v0

    :goto_0
    if-eqz v2, :cond_3

    if-eq v2, p1, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    const-string v1, "exec"

    const/4 v2, 0x4

    move-object v6, v1

    move v1, v2

    move-object v2, v6

    goto :goto_0

    :cond_1
    if-ne v2, v5, :cond_0

    const-string v1, "test"

    const/4 v2, 0x5

    move-object v6, v1

    move v1, v2

    move-object v2, v6

    goto :goto_0

    :pswitch_2
    const-string v1, "prefix"

    const/4 v2, 0x6

    move-object v6, v1

    move v1, v2

    move-object v2, v6

    goto :goto_0

    :pswitch_3
    const-string v1, "compile"

    const/4 v2, 0x1

    move-object v6, v1

    move v1, v2

    move-object v2, v6

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_2

    const-string v1, "toSource"

    move-object v6, v1

    move v1, v2

    move-object v2, v6

    goto :goto_0

    :cond_2
    if-ne v3, v5, :cond_0

    const-string v1, "toString"

    const/4 v2, 0x2

    move-object v6, v1

    move v1, v2

    move-object v2, v6

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "RegExp"

    return-object v0
.end method

.method getFlags()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    return v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "lastIndex"

    goto :goto_0

    :pswitch_1
    const-string v0, "source"

    goto :goto_0

    :pswitch_2
    const-string v0, "global"

    goto :goto_0

    :pswitch_3
    const-string v0, "ignoreCase"

    goto :goto_0

    :pswitch_4
    const-string v0, "multiline"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-wide v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v2, v2, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    :goto_1
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v2, v2, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    :goto_2
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_4
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v2, v2, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    :goto_3
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getMaxInstanceId()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getTypeOf()Ljava/lang/String;
    .locals 1

    const-string v0, "object"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "compile"

    :goto_0
    sget-object v2, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    return-void

    :pswitch_1
    const-string v0, "toString"

    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_0

    :pswitch_2
    const-string v0, "toSource"

    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_0

    :pswitch_3
    const-string v1, "exec"

    goto :goto_0

    :pswitch_4
    const-string v1, "test"

    goto :goto_0

    :pswitch_5
    const-string v1, "prefix"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected setInstanceIdValue(ILjava/lang/Object;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    array-length v1, v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v1, "(?:)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
