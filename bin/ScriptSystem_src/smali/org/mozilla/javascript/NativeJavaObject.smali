.class public Lorg/mozilla/javascript/NativeJavaObject;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/mozilla/javascript/Scriptable;
.implements Lorg/mozilla/javascript/Wrapper;
.implements Ljava/io/Serializable;


# static fields
.field private static final COERCED_INTERFACE_KEY:Ljava/lang/Object;

.field static final CONVERSION_NONE:B = 0x63t

.field static final CONVERSION_NONTRIVIAL:B = 0x0t

.field static final CONVERSION_TRIVIAL:B = 0x1t

.field private static final JSTYPE_BOOLEAN:I = 0x2

.field private static final JSTYPE_JAVA_ARRAY:I = 0x7

.field private static final JSTYPE_JAVA_CLASS:I = 0x5

.field private static final JSTYPE_JAVA_OBJECT:I = 0x6

.field private static final JSTYPE_NULL:I = 0x1

.field private static final JSTYPE_NUMBER:I = 0x3

.field private static final JSTYPE_OBJECT:I = 0x8

.field private static final JSTYPE_STRING:I = 0x4

.field private static final JSTYPE_UNDEFINED:I = 0x0

.field private static adapter_readAdapterObject:Ljava/lang/reflect/Method; = null

.field private static adapter_writeAdapterObject:Ljava/lang/reflect/Method; = null

.field static final serialVersionUID:J = -0x606e5a61ca3bce1fL


# instance fields
.field private transient fieldAndMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/FieldAndMethods;",
            ">;"
        }
    .end annotation
.end field

.field protected transient isAdapter:Z

.field protected transient javaObject:Ljava/lang/Object;

.field protected transient members:Lorg/mozilla/javascript/JavaMembers;

.field protected parent:Lorg/mozilla/javascript/Scriptable;

.field protected prototype:Lorg/mozilla/javascript/Scriptable;

.field protected transient staticType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "Coerced Interface"

    sput-object v0, Lorg/mozilla/javascript/NativeJavaObject;->COERCED_INTERFACE_KEY:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, "org.mozilla.javascript.JavaAdapter"

    invoke-static {v1}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "java.io.ObjectOutputStream"

    invoke-static {v3}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "writeAdapterObject"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/mozilla/javascript/NativeJavaObject;->adapter_writeAdapterObject:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "java.io.ObjectInputStream"

    invoke-static {v3}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "readAdapterObject"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeJavaObject;->adapter_readAdapterObject:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v4, Lorg/mozilla/javascript/NativeJavaObject;->adapter_writeAdapterObject:Ljava/lang/reflect/Method;

    sput-object v4, Lorg/mozilla/javascript/NativeJavaObject;->adapter_readAdapterObject:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/NativeJavaObject;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaObject;->parent:Lorg/mozilla/javascript/Scriptable;

    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    iput-boolean p4, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaObject;->initMembers()V

    return-void
.end method

.method public static canConvert(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->getConversionWeight(Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    const/16 v1, 0x63

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_0

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->CharacterClass:Ljava/lang/Class;

    if-ne p0, v1, :cond_3

    :cond_0
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->CharacterClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->CharacterClass:Ljava/lang/Class;

    const-wide v4, 0x40efffe000000000L    # 65535.0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeJavaObject;->toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_0

    :cond_3
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-eq p0, v1, :cond_4

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->DoubleClass:Ljava/lang/Class;

    if-eq p0, v1, :cond_4

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_5

    :cond_4
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->DoubleClass:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/Double;

    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    move-object p1, v0

    goto :goto_0

    :cond_5
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->FloatClass:Ljava/lang/Class;

    if-eq p0, v1, :cond_6

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_d

    :cond_6
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->FloatClass:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_7

    cmpl-double v4, v0, v2

    if-nez v4, :cond_8

    :cond_7
    new-instance p1, Ljava/lang/Float;

    double-to-float v0, v0

    invoke-direct {p1, v0}, Ljava/lang/Float;-><init>(F)V

    goto :goto_0

    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x36a0000000000000L    # 1.401298464324817E-45

    cmpg-double v6, v4, v6

    if-gez v6, :cond_a

    new-instance p1, Ljava/lang/Float;

    cmpl-double v0, v0, v2

    if-lez v0, :cond_9

    :goto_1
    invoke-direct {p1, v2, v3}, Ljava/lang/Float;-><init>(D)V

    goto :goto_0

    :cond_9
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_1

    :cond_a
    const-wide v6, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v4, v4, v6

    if-lez v4, :cond_c

    new-instance p1, Ljava/lang/Float;

    cmpl-double v0, v0, v2

    if-lez v0, :cond_b

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_2
    invoke-direct {p1, v0}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_0

    :cond_b
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_2

    :cond_c
    new-instance p1, Ljava/lang/Float;

    double-to-float v0, v0

    invoke-direct {p1, v0}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_0

    :cond_d
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->IntegerClass:Ljava/lang/Class;

    if-eq p0, v1, :cond_e

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_f

    :cond_e
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->IntegerClass:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->IntegerClass:Ljava/lang/Class;

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeJavaObject;->toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_0

    :cond_f
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->LongClass:Ljava/lang/Class;

    if-eq p0, v1, :cond_10

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_11

    :cond_10
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->LongClass:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    const-wide v0, 0x43dfffffffffffffL    # 9.2233720368547748E18

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->LongClass:Ljava/lang/Class;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeJavaObject;->toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_0

    :cond_11
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ShortClass:Ljava/lang/Class;

    if-eq p0, v1, :cond_12

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_13

    :cond_12
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ShortClass:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ShortClass:Ljava/lang/Class;

    const-wide/high16 v2, -0x3f20000000000000L    # -32768.0

    const-wide v4, 0x40dfffc000000000L    # 32767.0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeJavaObject;->toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto/16 :goto_0

    :cond_13
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ByteClass:Ljava/lang/Class;

    if-eq p0, v1, :cond_14

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_15

    :cond_14
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ByteClass:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ByteClass:Ljava/lang/Class;

    const-wide/high16 v2, -0x3fa0000000000000L    # -128.0

    const-wide v4, 0x405fc00000000000L    # 127.0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeJavaObject;->toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto/16 :goto_0

    :cond_15
    new-instance v0, Ljava/lang/Double;

    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    move-object p1, v0

    goto/16 :goto_0
.end method

.method public static coerceType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceTypeImpl(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static coerceTypeImpl(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->getJSTypeCode(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_2

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    :cond_2
    const-string p1, "undefined"

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    const-string v0, "undefined"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    :cond_8
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_a
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_c
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_d

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->CharacterClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_f

    :cond_d
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto/16 :goto_0

    :cond_e
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_11

    :cond_10
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    :cond_12
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    :pswitch_5
    instance-of v0, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_13

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    :cond_13
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ClassClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_14

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_14
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    :pswitch_6
    instance-of v0, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_15

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_16

    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_16
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    :cond_17
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_18

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_19

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1a

    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_1a
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->coerceToNumber(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->DateClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_1c

    instance-of v0, p1, Lorg/mozilla/javascript/NativeDate;

    if-eqz v0, :cond_1c

    check-cast p1, Lorg/mozilla/javascript/NativeDate;

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeDate;->getJSTimeValue()D

    move-result-wide v0

    new-instance p1, Ljava/util/Date;

    double-to-long v0, v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1e

    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_1e

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v3

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    long-to-int v1, v3

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    int-to-long v6, v2

    cmp-long v6, v6, v3

    if-gez v6, :cond_1d

    :try_start_0
    invoke-virtual {v0, v2, v0}, Lorg/mozilla/javascript/NativeArray;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/mozilla/javascript/NativeJavaObject;->coerceTypeImpl(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v2, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_2

    :cond_1d
    move-object p1, v1

    goto/16 :goto_0

    :cond_1e
    instance-of v0, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_1f

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_21

    instance-of v0, p1, Lorg/mozilla/javascript/NativeObject;

    if-nez v0, :cond_20

    instance-of v0, p1, Lorg/mozilla/javascript/NativeFunction;

    if-eqz v0, :cond_21

    :cond_20
    check-cast p1, Lorg/mozilla/javascript/ScriptableObject;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeJavaObject;->createInterfaceAdapter(Ljava/lang/Class;Lorg/mozilla/javascript/ScriptableObject;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    :cond_21
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected static createInterfaceAdapter(Ljava/lang/Class;Lorg/mozilla/javascript/ScriptableObject;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/mozilla/javascript/ScriptableObject;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lorg/mozilla/javascript/NativeJavaObject;->COERCED_INTERFACE_KEY:Ljava/lang/Object;

    invoke-static {v0, p0}, Lorg/mozilla/javascript/Kit;->makeHashKeyFromPair(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/InterfaceAdapter;->create(Lorg/mozilla/javascript/Context;Ljava/lang/Class;Lorg/mozilla/javascript/ScriptableObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static getConversionWeight(Ljava/lang/Object;Ljava/lang/Class;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    const/16 v0, 0x63

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {p0}, Lorg/mozilla/javascript/NativeJavaObject;->getJSTypeCode(Ljava/lang/Object;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-eq p1, v2, :cond_1

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v5, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-ne p1, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p1, v1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    move v0, v4

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_0

    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->getSizeRank(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v1, :cond_7

    const/16 v0, 0x9

    goto :goto_0

    :cond_7
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p1, v1, :cond_8

    const/16 v0, 0xa

    goto :goto_0

    :cond_8
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :pswitch_4
    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v5, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_b

    move v0, v3

    goto :goto_0

    :cond_b
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_0

    move v0, v4

    goto :goto_0

    :pswitch_5
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ClassClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p1, v1, :cond_d

    move v0, v3

    goto/16 :goto_0

    :cond_d
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    move v0, v4

    goto/16 :goto_0

    :pswitch_6
    instance-of v1, p0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v1, :cond_e

    check-cast p0, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p0

    :cond_e
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_f
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v1, :cond_10

    move v0, v2

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq v5, v1, :cond_0

    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->getSizeRank(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :pswitch_7
    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-eq p1, v5, :cond_11

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_12

    instance-of v1, p0, Lorg/mozilla/javascript/NativeArray;

    if-eqz v1, :cond_0

    move v0, v2

    goto/16 :goto_0

    :cond_12
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_13

    move v0, v3

    goto/16 :goto_0

    :cond_13
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_14

    move v0, v4

    goto/16 :goto_0

    :cond_14
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->DateClass:Ljava/lang/Class;

    if-ne p1, v2, :cond_15

    instance-of v2, p0, Lorg/mozilla/javascript/NativeDate;

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_18

    instance-of v0, p0, Lorg/mozilla/javascript/NativeObject;

    if-nez v0, :cond_16

    instance-of v0, p0, Lorg/mozilla/javascript/NativeFunction;

    if-eqz v0, :cond_17

    :cond_16
    move v0, v1

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_0

    invoke-static {p1}, Lorg/mozilla/javascript/NativeJavaObject;->getSizeRank(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static getJSTypeCode(Ljava/lang/Object;)I
    .locals 4

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v0, 0x5

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    instance-of v3, p0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    instance-of v3, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_8

    instance-of v3, p0, Lorg/mozilla/javascript/NativeJavaClass;

    if-nez v3, :cond_0

    instance-of v0, p0, Lorg/mozilla/javascript/NativeJavaArray;

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    goto :goto_0

    :cond_8
    instance-of v3, p0, Ljava/lang/Class;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_0
.end method

.method static getSizeRank(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const/16 v0, 0x63

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/mozilla/javascript/NativeJavaObject;->adapter_readAdapterObject:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    :try_start_0
    sget-object v1, Lorg/mozilla/javascript/NativeJavaObject;->adapter_readAdapterObject:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaObject;->initMembers()V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object v3, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    goto :goto_1
.end method

.method static reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const-string v0, "msg.conversion.not.allowed"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/JavaMembers;->javaSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0
.end method

.method private static toDouble(Ljava/lang/Object;)D
    .locals 4

    const/4 v1, 0x0

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_3

    instance-of v0, p0, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "doubleValue"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :try_start_1
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private static toInteger(Ljava/lang/Object;Ljava/lang/Class;DD)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;DD)J"
        }
    .end annotation

    invoke-static {p0}, Lorg/mozilla/javascript/NativeJavaObject;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_1
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_0
    cmpg-double v2, v0, p2

    if-ltz v2, :cond_2

    cmpl-double v2, v0, p4

    if-lez v2, :cond_3

    :cond_2
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/mozilla/javascript/NativeJavaObject;->reportConversionError(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_3
    double-to-long v0, v0

    return-wide v0

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static wrap(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1, p2}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/mozilla/javascript/NativeJavaObject;->adapter_writeAdapterObject:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    :try_start_0
    sget-object v1, Lorg/mozilla/javascript/NativeJavaObject;->adapter_writeAdapterObject:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public delete(I)V
    .locals 0

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/JavaMembers;->reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->fieldAndMethods:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->fieldAndMethods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lorg/mozilla/javascript/JavaMembers;->get(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "JavaObject"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    const-string v0, "booleanValue"

    :goto_1
    invoke-virtual {p0, v0, p0}, Lorg/mozilla/javascript/NativeJavaObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/Function;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/mozilla/javascript/Function;

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-interface {v0}, Lorg/mozilla/javascript/Function;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p0, v3}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    const-string v0, "doubleValue"

    goto :goto_1

    :cond_4
    const-string v0, "msg.default.value"

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_5
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_2
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/JavaMembers;->getIds(Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParentScope()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->parent:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->parent:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/TopLevel$Builtins;->String:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/TopLevel;->getBuiltinPrototype(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    goto :goto_0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/JavaMembers;->has(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initMembers()V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->parent:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    iget-boolean v3, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    invoke-static {v1, v0, v2, v3}, Lorg/mozilla/javascript/JavaMembers;->lookupClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Ljava/lang/Class;Z)Lorg/mozilla/javascript/JavaMembers;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lorg/mozilla/javascript/JavaMembers;->getFieldAndMethodsObjects(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->fieldAndMethods:Ljava/util/Map;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->staticType:Ljava/lang/Class;

    goto :goto_0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/JavaMembers;->reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    invoke-virtual {v0, p1, v5}, Lorg/mozilla/javascript/JavaMembers;->has(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/JavaMembers;->put(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1, v1, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setParentScope(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaObject;->parent:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method public setPrototype(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaObject;->prototype:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    return-object v0
.end method
