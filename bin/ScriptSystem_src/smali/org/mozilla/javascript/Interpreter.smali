.class public final Lorg/mozilla/javascript/Interpreter;
.super Lorg/mozilla/javascript/Icode;

# interfaces
.implements Lorg/mozilla/javascript/Evaluator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/Interpreter$1;,
        Lorg/mozilla/javascript/Interpreter$GeneratorState;,
        Lorg/mozilla/javascript/Interpreter$ContinuationJump;,
        Lorg/mozilla/javascript/Interpreter$CallFrame;
    }
.end annotation


# static fields
.field static final EXCEPTION_HANDLER_SLOT:I = 0x2

.field static final EXCEPTION_LOCAL_SLOT:I = 0x4

.field static final EXCEPTION_SCOPE_SLOT:I = 0x5

.field static final EXCEPTION_SLOT_SIZE:I = 0x6

.field static final EXCEPTION_TRY_END_SLOT:I = 0x1

.field static final EXCEPTION_TRY_START_SLOT:I = 0x0

.field static final EXCEPTION_TYPE_SLOT:I = 0x3


# instance fields
.field itsData:Lorg/mozilla/javascript/InterpreterData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/Icode;-><init>()V

    return-void
.end method

.method private static addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V
    .locals 3

    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iget v2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    iget v1, p0, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->observeInstructionCount(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    :cond_0
    return-void
.end method

.method private static bytecodeSpan(I)I
    .locals 3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v0, 0x3

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Lorg/mozilla/javascript/Interpreter;->validBytecode(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :sswitch_0
    move v0, v1

    :goto_0
    :sswitch_1
    return v0

    :sswitch_2
    move v0, v2

    goto :goto_0

    :sswitch_3
    move v0, v2

    goto :goto_0

    :sswitch_4
    move v0, v1

    goto :goto_0

    :sswitch_5
    move v0, v2

    goto :goto_0

    :sswitch_6
    move v0, v1

    goto :goto_0

    :sswitch_7
    move v0, v2

    goto :goto_0

    :sswitch_8
    move v0, v1

    goto :goto_0

    :sswitch_9
    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f -> :sswitch_1
        -0x3e -> :sswitch_1
        -0x3d -> :sswitch_9
        -0x36 -> :sswitch_1
        -0x31 -> :sswitch_9
        -0x30 -> :sswitch_9
        -0x2f -> :sswitch_8
        -0x2e -> :sswitch_1
        -0x2d -> :sswitch_7
        -0x28 -> :sswitch_6
        -0x27 -> :sswitch_1
        -0x26 -> :sswitch_5
        -0x1c -> :sswitch_4
        -0x1b -> :sswitch_1
        -0x1a -> :sswitch_1
        -0x17 -> :sswitch_1
        -0x15 -> :sswitch_0
        -0xb -> :sswitch_3
        -0xa -> :sswitch_3
        -0x9 -> :sswitch_3
        -0x8 -> :sswitch_3
        -0x7 -> :sswitch_3
        -0x6 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x32 -> :sswitch_1
        0x39 -> :sswitch_2
        0x48 -> :sswitch_1
    .end sparse-switch
.end method

.method public static captureContinuation(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/NativeContinuation;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    instance-of v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interpreter frames not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v0

    return-object v0
.end method

.method private static captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;
    .locals 7

    const/4 v5, 0x0

    new-instance v2, Lorg/mozilla/javascript/NativeContinuation;

    invoke-direct {v2}, Lorg/mozilla/javascript/NativeContinuation;-><init>()V

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    move-object v0, p1

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v3, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    iget v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget-object v3, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    array-length v3, v3

    if-eq v0, v3, :cond_0

    iget-object v3, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aput-object v5, v3, v0

    iget-object v3, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    const/4 v4, 0x0

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/16 v3, 0x26

    if-ne v0, v3, :cond_2

    iget-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget v3, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object v5, v0, v3

    :cond_1
    :goto_2
    iget-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    :cond_2
    iget v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/16 v3, 0x1e

    if-eq v0, v3, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_5

    :goto_3
    iget-object v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_3

    :cond_4
    iget-boolean v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->isContinuationsTopFrame:Z

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot capture continuation from JavaScript code not called directly by executeScriptWithContinuations or callFunctionWithContinuations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/NativeContinuation;->initImplementation(Ljava/lang/Object;)V

    return-object v2
.end method

.method private static captureFrameForGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    invoke-virtual {p0}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    iput-boolean v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iput v2, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    return-object v0
.end method

.method private static doAdd([Ljava/lang/Object;[DILorg/mozilla/javascript/Context;)V
    .locals 6

    add-int/lit8 v0, p2, 0x1

    aget-object v1, p0, v0

    aget-object v0, p0, p2

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, p2, 0x1

    aget-wide v2, p1, v1

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v0, p1, p2

    add-double/2addr v0, v2

    aput-wide v0, p1, p2

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    :goto_1
    instance-of v4, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v4, :cond_a

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    if-nez v1, :cond_1

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :cond_1
    invoke-static {v0, v2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p0, p2

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v2, :cond_3

    aget-wide v2, p1, p2

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    goto :goto_1

    :cond_3
    instance-of v2, v0, Lorg/mozilla/javascript/Scriptable;

    if-nez v2, :cond_4

    instance-of v2, v1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v2, :cond_5

    :cond_4
    invoke-static {v0, v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p0, p2

    goto :goto_0

    :cond_5
    instance-of v2, v0, Ljava/lang/CharSequence;

    if-nez v2, :cond_6

    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    :cond_6
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lorg/mozilla/javascript/ConsString;

    invoke-direct {v2, v0, v1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object v2, p0, p2

    goto :goto_0

    :cond_7
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_8

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    :goto_2
    instance-of v0, v1, Ljava/lang/Number;

    if-eqz v0, :cond_9

    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_3
    sget-object v4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object v4, p0, p2

    add-double/2addr v0, v2

    aput-wide v0, p1, p2

    goto :goto_0

    :cond_8
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    goto :goto_2

    :cond_9
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    goto :goto_3

    :cond_a
    instance-of v4, v0, Ljava/lang/CharSequence;

    if-eqz v4, :cond_c

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v1, :cond_b

    new-instance v1, Lorg/mozilla/javascript/ConsString;

    invoke-direct {v1, v0, v2}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object v1, p0, p2

    goto/16 :goto_0

    :cond_b
    new-instance v1, Lorg/mozilla/javascript/ConsString;

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object v1, p0, p2

    goto/16 :goto_0

    :cond_c
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_d

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_4
    sget-object v4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object v4, p0, p2

    add-double/2addr v0, v2

    aput-wide v0, p1, p2

    goto/16 :goto_0

    :cond_d
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    goto :goto_4
.end method

.method private static doArithmetic(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 6

    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v2

    add-int/lit8 v4, p4, -0x1

    invoke-static {p0, v4}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v0

    sget-object v5, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object v5, p2, v4

    packed-switch p1, :pswitch_data_0

    :goto_0
    aput-wide v0, p3, v4

    return v4

    :pswitch_0
    sub-double/2addr v0, v2

    goto :goto_0

    :pswitch_1
    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_2
    div-double/2addr v0, v2

    goto :goto_0

    :pswitch_3
    rem-double/2addr v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static doBitOp(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 4

    add-int/lit8 v0, p4, -0x1

    invoke-static {p0, v0}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result v0

    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result v1

    add-int/lit8 v2, p4, -0x1

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object v3, p2, v2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    int-to-double v0, v0

    aput-wide v0, p3, v2

    return v2

    :pswitch_1
    and-int/2addr v0, v1

    goto :goto_0

    :pswitch_2
    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_3
    xor-int/2addr v0, v1

    goto :goto_0

    :pswitch_4
    shl-int/2addr v0, v1

    goto :goto_0

    :pswitch_5
    shr-int/2addr v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static doCallSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[BI)I
    .locals 11

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v1, p5, v1

    and-int/lit16 v7, v1, 0xff

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p5, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget v2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v9

    if-eqz v1, :cond_2

    sub-int v2, p4, p6

    aget-object v1, p2, v2

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v3, :cond_0

    aget-wide v3, p3, v2

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    move/from16 v0, p6

    invoke-static {p2, p3, v3, v0}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0, v1, v3, v4, v7}, Lorg/mozilla/javascript/ScriptRuntime;->newSpecial(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v2

    move v1, v2

    :goto_1
    iget v2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p6, 0x1

    sub-int v10, p4, v1

    add-int/lit8 v1, v10, 0x1

    aget-object v3, p2, v1

    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    aget-object v2, p2, v10

    check-cast v2, Lorg/mozilla/javascript/Callable;

    add-int/lit8 v1, v10, 0x2

    move/from16 v0, p6

    invoke-static {p2, p3, v1, v0}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v6, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v8, v1, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lorg/mozilla/javascript/ScriptRuntime;->callSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v10

    move v1, v10

    goto :goto_1
.end method

.method private static doCompare(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    add-int/lit8 v6, p4, -0x1

    add-int/lit8 v2, v6, 0x1

    aget-object v2, p2, v2

    aget-object v3, p2, v6

    sget-object v4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v6, 0x1

    aget-wide v4, p3, v2

    invoke-static {p0, v6}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v2

    :goto_0
    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    sget-object v4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v3, v4, :cond_3

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    aget-wide v2, p3, v6

    goto :goto_0

    :pswitch_0
    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    :cond_1
    :goto_1
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p2, v6

    return v6

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    cmpg-double v2, v2, v4

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_1

    :pswitch_2
    cmpl-double v2, v2, v4

    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_1

    :pswitch_3
    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_3
    packed-switch p1, :pswitch_data_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_4
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :pswitch_5
    invoke-static {v3, v2}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :pswitch_6
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :pswitch_7
    invoke-static {v3, v2}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private static doDelName(Lorg/mozilla/javascript/Context;I[Ljava/lang/Object;[DI)I
    .locals 4

    aget-object v0, p2, p4

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v0, p3, p4

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 v3, p4, -0x1

    aget-object v1, p2, v3

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_2

    aget-wide v1, p3, v3

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v0, p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->delete(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Z)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, v3

    return v3

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method private static doElemIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[B[Ljava/lang/Object;[DI)I
    .locals 5

    aget-object v0, p3, p5

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v0, p4, p5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, p5, -0x1

    aget-object v1, p3, v2

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v3, :cond_1

    aget-wide v3, p4, v2

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_1
    iget v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v3, p2, v3

    invoke-static {v1, v0, p0, v3}, Lorg/mozilla/javascript/ScriptRuntime;->elemIncrDecr(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p3, v2

    iget v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    return v2
.end method

.method private static doEquals([Ljava/lang/Object;[DI)Z
    .locals 4

    add-int/lit8 v0, p2, 0x1

    aget-object v0, p0, v0

    aget-object v1, p0, p2

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v2, :cond_2

    sget-object v0, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v0, :cond_1

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p2, 0x1

    aget-wide v2, p1, v0

    invoke-static {v2, v3, v1}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_3

    aget-wide v1, p1, p2

    invoke-static {v1, v2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static doGetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .locals 4

    add-int/lit8 v1, p4, -0x1

    aget-object v0, p2, v1

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v2, :cond_0

    aget-wide v2, p3, v1

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq v2, v3, :cond_1

    iget-object v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v2, p0, v3}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    aput-object v0, p2, v1

    return v1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-wide v2, p3, v2

    invoke-static {v0, v2, v3, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectIndex(Ljava/lang/Object;DLorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static doGetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[DI)I
    .locals 4

    add-int/lit8 v0, p3, 0x1

    iget-boolean v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v1, :cond_0

    aget-object v1, p4, p6

    aput-object v1, p1, v0

    aget-wide v1, p5, p6

    aput-wide v1, p2, v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object v1, v1, p6

    iget-object v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v2, v1, v3}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    goto :goto_0
.end method

.method private static doInOrInstanceof(Lorg/mozilla/javascript/Context;I[Ljava/lang/Object;[DI)I
    .locals 5

    aget-object v0, p2, p4

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v0, p3, p4

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, p4, -0x1

    aget-object v1, p2, v2

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v3, :cond_1

    aget-wide v3, p3, v2

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_1
    const/16 v3, 0x34

    if-ne p1, v3, :cond_2

    invoke-static {v1, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->in(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result v0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p2, v2

    return v2

    :cond_2
    invoke-static {v1, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->instanceOf(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private static doRefMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I
    .locals 5

    aget-object v0, p1, p3

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v0, p2, p3

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, p3, -0x1

    aget-object v1, p1, v2

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v3, :cond_1

    aget-wide v3, p2, v2

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_1
    invoke-static {v1, v0, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->memberRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;

    move-result-object v0

    aput-object v0, p1, v2

    return v2
.end method

.method private static doRefNsMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I
    .locals 6

    aget-object v0, p1, p3

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v0, p2, p3

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, p3, -0x1

    aget-object v1, p1, v2

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v3, :cond_1

    aget-wide v3, p2, v2

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_1
    add-int/lit8 v3, v2, -0x1

    aget-object v2, p1, v3

    sget-object v4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v2, v4, :cond_2

    aget-wide v4, p2, v3

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_2
    invoke-static {v2, v1, v0, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->memberRef(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;

    move-result-object v0

    aput-object v0, p1, v3

    return v3
.end method

.method private static doRefNsName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DII)I
    .locals 5

    aget-object v0, p2, p4

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v0, p3, p4

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, p4, -0x1

    aget-object v1, p2, v2

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v3, :cond_1

    aget-wide v3, p3, v2

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_1
    iget-object v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v0, p0, v3, p5}, Lorg/mozilla/javascript/ScriptRuntime;->nameRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object v0

    aput-object v0, p2, v2

    return v2
.end method

.method private static doSetConstVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .locals 4

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v0, :cond_2

    aget v0, p6, p7

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const-string v0, "msg.var.redecl"

    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object v1, v1, p7

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_0
    aget v0, p6, p7

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    aget-object v0, p1, p3

    aput-object v0, p4, p7

    aget v0, p6, p7

    and-int/lit8 v0, v0, -0x9

    aput v0, p6, p7

    aget-wide v0, p2, p3

    aput-wide v0, p5, p7

    :cond_1
    :goto_0
    return p3

    :cond_2
    aget-object v0, p1, p3

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_4

    aget-wide v0, p2, p3

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object v2, v0, p7

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    instance-of v0, v0, Lorg/mozilla/javascript/ConstProperties;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    check-cast v0, Lorg/mozilla/javascript/ConstProperties;

    iget-object v3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, v2, v3, v1}, Lorg/mozilla/javascript/ConstProperties;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method private static doSetElem(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DI)I
    .locals 5

    add-int/lit8 v2, p3, -0x2

    add-int/lit8 v0, v2, 0x2

    aget-object v0, p1, v0

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v2, 0x2

    aget-wide v0, p2, v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_0
    aget-object v1, p1, v2

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v3, :cond_1

    aget-wide v3, p2, v2

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p1, v3

    sget-object v4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq v3, v4, :cond_2

    invoke-static {v1, v3, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectElem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    aput-object v0, p1, v2

    return v2

    :cond_2
    add-int/lit8 v3, v2, 0x1

    aget-wide v3, p2, v3

    invoke-static {v1, v3, v4, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectIndex(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static doSetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .locals 4

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v0, :cond_1

    aget v0, p6, p7

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    aget-object v0, p1, p3

    aput-object v0, p4, p7

    aget-wide v0, p2, p3

    aput-wide v0, p5, p7

    :cond_0
    :goto_0
    return p3

    :cond_1
    aget-object v0, p1, p3

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_2

    aget-wide v0, p2, p3

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object v1, v1, p7

    iget-object v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v2, v1, v3, v0}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static doShallowEquals([Ljava/lang/Object;[DI)Z
    .locals 8

    const/4 v2, 0x0

    add-int/lit8 v0, p2, 0x1

    aget-object v1, p0, v0

    aget-object v0, p0, p2

    sget-object v5, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v5, :cond_2

    add-int/lit8 v1, p2, 0x1

    aget-wide v3, p1, v1

    if-ne v0, v5, :cond_1

    aget-wide v0, p1, p2

    :goto_0
    cmpl-double v0, v0, v3

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    move v2, v0

    :cond_0
    :goto_2
    return v2

    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_2
    if-ne v0, v5, :cond_3

    aget-wide v3, p1, p2

    instance-of v0, v1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    move-wide v6, v3

    move-wide v3, v0

    move-wide v0, v6

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private static doVarIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[DI)I
    .locals 8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v4, p4, 0x1

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v5, v0, v1

    iget-boolean v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v0, :cond_3

    sget-object v0, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object v0, p2, v4

    aget-object v0, p5, p7

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    aget-wide v2, p6, p7

    :goto_0
    and-int/lit8 v0, v5, 0x1

    if-nez v0, :cond_1

    add-double v0, v2, v6

    :goto_1
    aput-wide v0, p6, p7

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    :goto_2
    aput-wide v0, p3, v4

    :goto_3
    iget v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    return v4

    :cond_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    sget-object v0, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object v0, p5, p7

    goto :goto_0

    :cond_1
    sub-double v0, v2, v6

    goto :goto_1

    :cond_2
    move-wide v0, v2

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object v0, v0, p7

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v0, p0, v5}, Lorg/mozilla/javascript/ScriptRuntime;->nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, v4

    goto :goto_3
.end method

.method static dumpICode(Lorg/mozilla/javascript/InterpreterData;)V
    .locals 0

    return-void
.end method

.method private static enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V
    .locals 4

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v2, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-nez v2, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    iget-object v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1, p0, v0, v3, p2}, Lorg/mozilla/javascript/debug/DebugFrame;->onEnter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_1

    :cond_6
    instance-of v3, v0, Lorg/mozilla/javascript/NativeWith;

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v3, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    if-ne v3, v0, :cond_6

    :cond_7
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_1
.end method

.method private static exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    :cond_0
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v0, :cond_1

    :try_start_0
    instance-of v0, p2, Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, p2}, Lorg/mozilla/javascript/debug/DebugFrame;->onExit(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    check-cast p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-nez p2, :cond_4

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    :goto_1
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_3

    if-nez p2, :cond_5

    iget-wide v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    :goto_2
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_3
    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2, v0}, Lorg/mozilla/javascript/debug/DebugFrame;->onExit(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "RHINO USAGE WARNING: onExit terminated with exception"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-wide v0, p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static freezeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;)Ljava/lang/Object;
    .locals 2

    iget v0, p3, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "msg.yield.closing"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p2

    iput-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, v0, p2

    iput-wide v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    iput p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iget v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_1
    iget-wide v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0
.end method

.method private static getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;
    .locals 5

    if-nez p3, :cond_0

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    new-array v1, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-eq v2, p3, :cond_2

    aget-object v0, p0, p2

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v3, :cond_1

    aget-wide v3, p1, p2

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_1
    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 p2, p2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static getEncodedSource(Lorg/mozilla/javascript/InterpreterData;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSource:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSource:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSourceStart:I

    iget v2, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSourceEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getExceptionHandler(Lorg/mozilla/javascript/Interpreter$CallFrame;Z)I
    .locals 10

    const/4 v1, -0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v6, v2, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    if-nez v6, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v7, v2, -0x1

    move v2, v0

    move v3, v1

    move v1, v0

    :goto_1
    array-length v4, v6

    if-eq v0, v4, :cond_6

    add-int/lit8 v4, v0, 0x0

    aget v5, v6, v4

    add-int/lit8 v4, v0, 0x1

    aget v4, v6, v4

    if-gt v5, v7, :cond_1

    if-lt v7, v4, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x6

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    add-int/lit8 v8, v0, 0x3

    aget v8, v6, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    :cond_3
    if-ltz v3, :cond_5

    if-lt v1, v4, :cond_1

    if-le v2, v5, :cond_4

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_4
    if-ne v1, v4, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    move v1, v4

    move v2, v5

    move v3, v0

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_0
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

.method private static getInt([BI)I
    .locals 2

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static getLineNumbers(Lorg/mozilla/javascript/InterpreterData;)[I
    .locals 8

    const/4 v1, 0x0

    new-instance v2, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v2}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iget-object v3, p0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    array-length v4, v3

    move v0, v1

    :goto_0
    if-eq v0, v4, :cond_2

    aget-byte v5, v3, v0

    invoke-static {v5}, Lorg/mozilla/javascript/Interpreter;->bytecodeSpan(I)I

    move-result v6

    const/16 v7, -0x1a

    if-ne v5, v7, :cond_1

    const/4 v5, 0x3

    if-eq v6, v5, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    add-int/lit8 v5, v0, 0x1

    invoke-static {v3, v5}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v5

    invoke-virtual {v2, v5, v1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    :cond_1
    add-int/2addr v0, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/mozilla/javascript/UintMap;->getKeys()[I

    move-result-object v0

    return-object v0
.end method

.method private static getShort([BI)I
    .locals 2

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V
    .locals 14

    move-object/from16 v0, p7

    iget-object v10, v0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v4, v10, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/mozilla/javascript/Context;->debugger:Lorg/mozilla/javascript/debug/Debugger;

    if-eqz v5, :cond_12

    iget-object v3, p0, Lorg/mozilla/javascript/Context;->debugger:Lorg/mozilla/javascript/debug/Debugger;

    invoke-interface {v3, p0, v10}, Lorg/mozilla/javascript/debug/Debugger;->getFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;)Lorg/mozilla/javascript/debug/DebugFrame;

    move-result-object v3

    if-eqz v3, :cond_11

    const/4 v4, 0x1

    move-object v8, v3

    move v9, v4

    :goto_0
    if-eqz v9, :cond_1

    if-eqz p4, :cond_0

    invoke-static/range {p3 .. p6}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object p3

    :cond_0
    const/16 p5, 0x0

    const/16 p4, 0x0

    :cond_1
    iget v3, v10, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-eqz v3, :cond_5

    invoke-virtual/range {p7 .. p7}, Lorg/mozilla/javascript/InterpretedFunction;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    if-eqz v9, :cond_2

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-static {v0, p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    :cond_2
    :goto_1
    iget-object v3, v10, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    if-eqz v3, :cond_6

    iget v3, v10, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-eqz v3, :cond_3

    iget-boolean v3, v10, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-nez v3, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iget-object v4, v10, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    array-length v4, v4

    if-ge v3, v4, :cond_6

    iget-object v4, v10, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    aget-object v4, v4, v3

    iget v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p7

    invoke-static {p0, p1, v0, v3}, Lorg/mozilla/javascript/Interpreter;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p7

    iget-object v3, v0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v3, v3, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    move-object/from16 v0, p7

    move-object/from16 v1, p2

    invoke-static {v0, v1, p0, p1, v3}, Lorg/mozilla/javascript/ScriptRuntime;->initScript(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    goto :goto_1

    :cond_6
    iget v3, v10, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    iget v4, v10, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    add-int/2addr v3, v4

    add-int/lit8 v11, v3, -0x1

    iget v4, v10, Lorg/mozilla/javascript/InterpreterData;->itsMaxFrameArray:I

    iget v3, v10, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    add-int/2addr v3, v11

    add-int/lit8 v3, v3, 0x1

    if-eq v4, v3, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_7
    move-object/from16 v0, p9

    iget-object v3, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    if-eqz v3, :cond_9

    move-object/from16 v0, p9

    iget-object v3, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    array-length v3, v3

    if-gt v4, v3, :cond_9

    const/4 v3, 0x1

    move-object/from16 v0, p9

    iget-object v6, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    move-object/from16 v0, p9

    iget-object v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    move-object/from16 v0, p9

    iget-object v4, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    :goto_3
    invoke-virtual {v10}, Lorg/mozilla/javascript/InterpreterData;->getParamAndVarCount()I

    move-result v12

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v12, :cond_a

    invoke-virtual {v10, v7}, Lorg/mozilla/javascript/InterpreterData;->getParamOrVarConst(I)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0xd

    aput v13, v5, v7

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    new-array v5, v4, [I

    new-array v4, v4, [D

    goto :goto_3

    :cond_a
    iget v7, v10, Lorg/mozilla/javascript/InterpreterData;->argCount:I

    move/from16 v0, p6

    if-le v7, v0, :cond_10

    :goto_5
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez p8, :cond_b

    const/4 v7, 0x0

    :goto_6
    move-object/from16 v0, p9

    iput v7, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    move-object/from16 v0, p9

    iget v7, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getMaximumInterpreterStackDepth()I

    move-result v12

    if-le v7, v12, :cond_c

    const-string v3, "Exceeded maximum stack depth"

    invoke-static {v3}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v3

    throw v3

    :cond_b
    move-object/from16 v0, p8

    iget v7, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    move-object/from16 v0, p9

    iput-boolean v7, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    move-object/from16 v0, p7

    move-object/from16 v1, p9

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    move-object/from16 v0, p9

    iput-object v10, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 v0, p9

    iput-object v6, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    move-object/from16 v0, p9

    iput-object v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    move-object/from16 v0, p9

    iput-object v4, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    move-object/from16 v0, p9

    move-object/from16 v1, p9

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget v5, v10, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    move-object/from16 v0, p9

    iput v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    move-object/from16 v0, p9

    iput v11, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    move-object/from16 v0, p9

    iput-object v8, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    move-object/from16 v0, p9

    iput-boolean v9, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    move-object/from16 v0, p2

    move-object/from16 v1, p9

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v0, p9

    iput-object v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p9

    iput v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v5, 0x0

    move-object/from16 v0, p9

    iput v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    iget v5, v10, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    move-object/from16 v0, p9

    iput v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    move-object/from16 v0, p9

    iput-object p1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, p9

    iput v11, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    const/4 v5, 0x0

    move-object/from16 v0, p9

    iput v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-static {v0, v1, v6, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p4, :cond_d

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-static {v0, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_7
    iget v4, v10, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    move/from16 v0, p6

    if-eq v0, v4, :cond_e

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aput-object v4, v6, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_7

    :cond_e
    if-eqz v3, :cond_f

    add-int/lit8 v3, v11, 0x1

    :goto_8
    array-length v4, v6

    if-eq v3, v4, :cond_f

    const/4 v4, 0x0

    aput-object v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p9

    move-object/from16 v1, p3

    invoke-static {p0, v0, v1, v3}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    return-void

    :cond_10
    move/from16 p6, v7

    goto/16 :goto_5

    :cond_11
    move-object v8, v3

    move v9, v4

    goto/16 :goto_0

    :cond_12
    move-object v8, v3

    move v9, v4

    goto/16 :goto_0
.end method

.method private static initFrameForApplyOrCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 11

    if-eqz p2, :cond_2

    add-int/lit8 v1, p5, 0x2

    aget-object v1, p3, v1

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p5, 0x2

    aget-wide v1, p4, v1

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_0
    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    :cond_1
    const/16 v1, -0x37

    move/from16 v0, p6

    if-ne v0, v1, :cond_3

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    iget-object v9, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    :goto_1
    new-instance v10, Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Interpreter$1;)V

    invoke-static/range {p8 .. p8}, Lorg/mozilla/javascript/BaseFunction;->isApply(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    if-ge p2, v1, :cond_4

    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v4

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v8, p9

    invoke-static/range {v1 .. v10}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    :goto_3
    return-object v10

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move/from16 v0, p5

    iput v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    move/from16 v0, p6

    iput v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    move-object v9, p1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, p5, 0x3

    aget-object v1, p3, v1

    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getApplyArguments(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    :goto_4
    if-ge v1, p2, :cond_6

    add-int/lit8 v2, p5, 0x1

    add-int/2addr v2, v1

    add-int/lit8 v4, p5, 0x2

    add-int/2addr v4, v1

    aget-object v4, p3, v4

    aput-object v4, p3, v2

    add-int/lit8 v2, p5, 0x1

    add-int/2addr v2, v1

    add-int/lit8 v4, p5, 0x2

    add-int/2addr v4, v1

    aget-wide v4, p4, v4

    aput-wide v4, p4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x2

    if-ge p2, v1, :cond_7

    const/4 v7, 0x0

    :goto_5
    add-int/lit8 v6, p5, 0x2

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v8, p9

    invoke-static/range {v1 .. v10}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    goto :goto_3

    :cond_7
    add-int/lit8 v7, p2, -0x1

    goto :goto_5
.end method

.method private static initFrameForNoSuchMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 11

    add-int/lit8 v2, p5, 0x2

    new-array v5, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1

    aget-object v1, p3, v3

    sget-object v4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v4, :cond_0

    aget-wide v6, p4, v3

    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_0
    aput-object v1, v5, v2

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    move-object/from16 v0, p9

    iget-object v2, v0, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->methodName:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    move-object/from16 v0, p8

    invoke-virtual {p0, v0, v5}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    aput-object v2, v4, v1

    new-instance v10, Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Interpreter$1;)V

    const/16 v1, -0x37

    move/from16 v0, p6

    if-ne v0, v1, :cond_3

    iget-object v9, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    move-object/from16 v8, p10

    invoke-static/range {v1 .. v10}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    const/16 v1, -0x37

    move/from16 v0, p6

    if-eq v0, v1, :cond_2

    move/from16 v0, p5

    iput v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    move/from16 v0, p6

    iput v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    :cond_2
    return-object v10

    :cond_3
    move-object v9, p1

    goto :goto_1
.end method

.method private static initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V
    .locals 3

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object v0

    iget-object v1, v0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    iget-object v2, p2, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v2, v2, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    invoke-static {p0, p1, v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;IZ)V

    return-void
.end method

.method static interpret(Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    iget-object v7, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    iput-object v0, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityController:Lorg/mozilla/javascript/SecurityController;

    iget-object v1, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/SecurityController;->callWithDomain(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iput-object v7, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    iput-object v7, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    throw v0

    :cond_1
    new-instance v9, Lorg/mozilla/javascript/Interpreter$CallFrame;

    invoke-direct {v9, v4}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Interpreter$1;)V

    array-length v6, p4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v7, p0

    move-object v8, v4

    invoke-static/range {v0 .. v9}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    iget-boolean v0, p1, Lorg/mozilla/javascript/Context;->isContinuationsTopCall:Z

    iput-boolean v0, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->isContinuationsTopFrame:Z

    iput-boolean v5, p1, Lorg/mozilla/javascript/Context;->isContinuationsTopCall:Z

    invoke-static {p1, v9, v4}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37

    sget-object v30, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    sget-object v31, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move/from16 v24, v3

    :goto_0
    const/16 v29, 0x0

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    if-nez v3, :cond_0

    new-instance v3, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v3}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    :cond_1
    const/4 v3, 0x0

    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    if-eqz v4, :cond_5

    check-cast p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3, v4}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    const/4 v3, 0x0

    :goto_1
    const/16 v28, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v8, v29

    move-object/from16 v25, v3

    move-object/from16 v4, p1

    :goto_2
    if-eqz v25, :cond_7

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v24

    invoke-static {v0, v1, v4, v15, v2}, Lorg/mozilla/javascript/Interpreter;->processThrowable(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Interpreter$CallFrame;IZ)Lorg/mozilla/javascript/Interpreter$CallFrame;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :try_start_1
    iget-object v0, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    move-object/from16 v25, v0

    const/4 v3, 0x0

    iput-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    :cond_2
    :goto_3
    :try_start_2
    iget-object v6, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v7, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v0, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    move-object/from16 v21, v0

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v0, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    move-object/from16 v32, v0

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v0, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    move-object/from16 v33, v0

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v5, v3, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v3, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    move-object/from16 v34, v0

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v29, v8

    move v8, v3

    :cond_3
    :goto_4
    :try_start_3
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v9, v3, 0x1

    iput v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v19, v5, v3

    packed-switch v19, :pswitch_data_0

    :pswitch_0
    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {v3}, Lorg/mozilla/javascript/Interpreter;->dumpICode(Lorg/mozilla/javascript/InterpreterData;)V

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown icode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @ pc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v3

    move-wide/from16 v5, v26

    move-object/from16 v7, v29

    move-object v8, v4

    move-object/from16 v4, v28

    :goto_5
    if-eqz v25, :cond_41

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_4
    const/4 v3, 0x0

    move/from16 v24, v3

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-nez v4, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_6
    move-object/from16 v35, v3

    move-object/from16 v3, p2

    move-object/from16 p2, v35

    goto/16 :goto_1

    :cond_7
    if-nez p2, :cond_2

    :try_start_4
    iget-boolean v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v3

    move-wide/from16 v5, v26

    move-object v7, v8

    move-object v8, v4

    move-object/from16 v4, v28

    goto :goto_5

    :pswitch_1
    :try_start_5
    iget-boolean v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v3, :cond_9

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v4}, Lorg/mozilla/javascript/Interpreter;->captureFrameForGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3

    const/4 v5, 0x1

    iput-boolean v5, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    new-instance v5, Lorg/mozilla/javascript/NativeGenerator;

    iget-object v6, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v7, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-direct {v5, v6, v7, v3}, Lorg/mozilla/javascript/NativeGenerator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;Ljava/lang/Object;)V

    iput-object v5, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    :goto_6
    :pswitch_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-wide v5, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9

    :try_start_7
    iget-object v7, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v7, :cond_40

    iget-object v7, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :try_start_8
    iget-boolean v4, v7, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz v4, :cond_8

    invoke-virtual {v7}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v7

    :cond_8
    invoke-static {v7, v3, v5, v6}, Lorg/mozilla/javascript/Interpreter;->setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    const/16 v28, 0x0

    move-wide/from16 v26, v5

    move-object/from16 v8, v29

    move-object v4, v7

    goto/16 :goto_2

    :cond_9
    :pswitch_3
    :try_start_9
    iget-boolean v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v4, v8, v1}, Lorg/mozilla/javascript/Interpreter;->freezeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;)Ljava/lang/Object;

    move-result-object v6

    :cond_a
    :goto_7
    return-object v6

    :cond_b
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v4, v8, v0, v1}, Lorg/mozilla/javascript/Interpreter;->thawGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;I)Ljava/lang/Object;

    move-result-object v3

    sget-object v9, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    if-eq v3, v9, :cond_3

    move-wide/from16 v7, v26

    move-object/from16 v9, v28

    move-object/from16 v18, v4

    move-object v4, v3

    :goto_8
    if-nez v4, :cond_c

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_c
    const/4 v5, 0x0

    if-eqz p2, :cond_42

    move-object/from16 v0, p2

    iget v3, v0, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_42

    move-object/from16 v0, p2

    iget-object v3, v0, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    if-ne v4, v3, :cond_42

    const/4 v3, 0x1

    move-object/from16 v35, v5

    move v5, v3

    move-object/from16 v3, v35

    :goto_9
    if-eqz v24, :cond_5f

    const/16 v6, 0x64

    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_3

    move v6, v5

    move-object v5, v3

    :goto_a
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v3, :cond_5e

    instance-of v3, v4, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_5e

    move-object v3, v4

    check-cast v3, Ljava/lang/RuntimeException;

    :try_start_b
    move-object/from16 v0, v18

    iget-object v10, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    move-object/from16 v0, p0

    invoke-interface {v10, v0, v3}, Lorg/mozilla/javascript/debug/DebugFrame;->onExceptionThrown(Lorg/mozilla/javascript/Context;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    move-object/from16 v35, v5

    move v5, v6

    move-object/from16 v6, v35

    :cond_d
    :goto_b
    if-eqz v5, :cond_4d

    const/4 v3, 0x2

    if-eq v5, v3, :cond_4c

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lorg/mozilla/javascript/Interpreter;->getExceptionHandler(Lorg/mozilla/javascript/Interpreter$CallFrame;Z)I

    move-result v15

    if-ltz v15, :cond_4d

    move-wide/from16 v26, v7

    move-object/from16 v28, v9

    move-object/from16 v25, v4

    move-object/from16 v8, v29

    move-object/from16 v4, v18

    goto/16 :goto_2

    :pswitch_4
    const/4 v3, 0x1

    :try_start_c
    iput-boolean v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v5, v3}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v3

    new-instance v5, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v6, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v6}, Lorg/mozilla/javascript/NativeIterator;->getStopIterationObject(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v7, v7, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v3}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    move-object/from16 v0, p2

    iput-object v5, v0, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    goto/16 :goto_6

    :pswitch_5
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_e

    aget-wide v6, v7, v8

    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_e
    add-int/lit8 v6, v8, -0x1

    iget v6, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v5, v6}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v6

    new-instance v5, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v7, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v7, v7, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v5, v3, v7, v6}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    move-wide/from16 v7, v26

    move-object/from16 v9, v28

    move-object/from16 v18, v4

    move-object v4, v5

    goto/16 :goto_8

    :pswitch_6
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v3, v15

    aget-object v3, v6, v3

    move-wide/from16 v7, v26

    move-object/from16 v9, v28

    move-object/from16 v18, v4

    move-object v4, v3

    goto/16 :goto_8

    :pswitch_7
    move/from16 v0, v19

    invoke-static {v4, v0, v6, v7, v8}, Lorg/mozilla/javascript/Interpreter;->doCompare(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v8

    goto/16 :goto_4

    :pswitch_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1, v6, v7, v8}, Lorg/mozilla/javascript/Interpreter;->doInOrInstanceof(Lorg/mozilla/javascript/Context;I[Ljava/lang/Object;[DI)I

    move-result v8

    goto/16 :goto_4

    :pswitch_9
    add-int/lit8 v8, v8, -0x1

    invoke-static {v6, v7, v8}, Lorg/mozilla/javascript/Interpreter;->doEquals([Ljava/lang/Object;[DI)Z

    move-result v9

    const/16 v3, 0xd

    move/from16 v0, v19

    if-ne v0, v3, :cond_f

    const/4 v3, 0x1

    :goto_d
    xor-int/2addr v3, v9

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :cond_f
    const/4 v3, 0x0

    goto :goto_d

    :pswitch_a
    add-int/lit8 v8, v8, -0x1

    invoke-static {v6, v7, v8}, Lorg/mozilla/javascript/Interpreter;->doShallowEquals([Ljava/lang/Object;[DI)Z

    move-result v9

    const/16 v3, 0x2f

    move/from16 v0, v19

    if-ne v0, v3, :cond_10

    const/4 v3, 0x1

    :goto_e
    xor-int/2addr v3, v9

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :cond_10
    const/4 v3, 0x0

    goto :goto_e

    :pswitch_b
    add-int/lit8 v3, v8, -0x1

    invoke-static {v4, v8}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v8

    if-eqz v8, :cond_5d

    iget v8, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v8, v8, 0x2

    iput v8, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v8, v3

    goto/16 :goto_4

    :pswitch_c
    add-int/lit8 v3, v8, -0x1

    invoke-static {v4, v8}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v8

    if-nez v8, :cond_5d

    iget v8, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v8, v8, 0x2

    iput v8, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v8, v3

    goto/16 :goto_4

    :pswitch_d
    add-int/lit8 v3, v8, -0x1

    invoke-static {v4, v8}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v8

    if-nez v8, :cond_11

    iget v8, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v8, v8, 0x2

    iput v8, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v8, v3

    goto/16 :goto_4

    :cond_11
    add-int/lit8 v8, v3, -0x1

    const/4 v9, 0x0

    aput-object v9, v6, v3

    :goto_f
    :pswitch_e
    if-eqz v24, :cond_12

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V

    :cond_12
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v5, v3}, Lorg/mozilla/javascript/Interpreter;->getShort([BI)I

    move-result v3

    if-eqz v3, :cond_3f

    iget v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v3, v9

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_10
    if-eqz v24, :cond_3

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    goto/16 :goto_4

    :pswitch_f
    add-int/lit8 v8, v8, 0x1

    aput-object v30, v6, v8

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x2

    int-to-double v9, v3

    aput-wide v9, v7, v8

    goto :goto_f

    :pswitch_10
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    add-int/lit8 v3, v3, 0x1

    if-ne v8, v3, :cond_13

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v15, v3

    aget-object v3, v6, v8

    aput-object v3, v6, v15

    aget-wide v9, v7, v8

    aput-wide v9, v7, v15

    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_4

    :cond_13
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    if-eq v8, v3, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto/16 :goto_4

    :pswitch_11
    if-eqz v24, :cond_14

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V

    :cond_14
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v15, v3

    aget-object v3, v6, v15

    move-object/from16 v0, v30

    if-eq v3, v0, :cond_15

    move-wide/from16 v7, v26

    move-object/from16 v9, v28

    move-object/from16 v18, v4

    move-object v4, v3

    goto/16 :goto_8

    :cond_15
    aget-wide v9, v7, v15

    double-to-int v3, v9

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    if-eqz v24, :cond_3

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    goto/16 :goto_4

    :pswitch_12
    const/4 v3, 0x0

    aput-object v3, v6, v8

    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_4

    :pswitch_13
    aget-object v3, v6, v8

    iput-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    aget-wide v9, v7, v8

    iput-wide v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    const/4 v3, 0x0

    aput-object v3, v6, v8

    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_4

    :pswitch_14
    add-int/lit8 v3, v8, 0x1

    aget-object v9, v6, v8

    aput-object v9, v6, v3

    add-int/lit8 v3, v8, 0x1

    aget-wide v9, v7, v8

    aput-wide v9, v7, v3

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    :pswitch_15
    add-int/lit8 v3, v8, 0x1

    add-int/lit8 v9, v8, -0x1

    aget-object v9, v6, v9

    aput-object v9, v6, v3

    add-int/lit8 v3, v8, 0x1

    add-int/lit8 v9, v8, -0x1

    aget-wide v9, v7, v9

    aput-wide v9, v7, v3

    add-int/lit8 v3, v8, 0x2

    aget-object v9, v6, v8

    aput-object v9, v6, v3

    add-int/lit8 v3, v8, 0x2

    aget-wide v9, v7, v8

    aput-wide v9, v7, v3

    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_4

    :pswitch_16
    aget-object v3, v6, v8

    add-int/lit8 v9, v8, -0x1

    aget-object v9, v6, v9

    aput-object v9, v6, v8

    add-int/lit8 v9, v8, -0x1

    aput-object v3, v6, v9

    aget-wide v9, v7, v8

    add-int/lit8 v3, v8, -0x1

    aget-wide v11, v7, v3

    aput-wide v11, v7, v8

    add-int/lit8 v3, v8, -0x1

    aput-wide v9, v7, v3

    goto/16 :goto_4

    :pswitch_17
    aget-object v3, v6, v8

    iput-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    aget-wide v5, v7, v8

    iput-wide v5, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    add-int/lit8 v3, v8, -0x1

    goto/16 :goto_6

    :pswitch_18
    move-object/from16 v0, v31

    iput-object v0, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_19
    invoke-static {v4, v8}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result v3

    aput-object v30, v6, v8

    xor-int/lit8 v3, v3, -0x1

    int-to-double v9, v3

    aput-wide v9, v7, v8

    goto/16 :goto_4

    :pswitch_1a
    move/from16 v0, v19

    invoke-static {v4, v0, v6, v7, v8}, Lorg/mozilla/javascript/Interpreter;->doBitOp(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v8

    goto/16 :goto_4

    :pswitch_1b
    add-int/lit8 v3, v8, -0x1

    invoke-static {v4, v3}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v9

    invoke-static {v4, v8}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result v3

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v8, v8, -0x1

    aput-object v30, v6, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v9

    ushr-long/2addr v9, v3

    long-to-double v9, v9

    aput-wide v9, v7, v8

    goto/16 :goto_4

    :pswitch_1c
    invoke-static {v4, v8}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v9

    aput-object v30, v6, v8

    const/16 v3, 0x1d

    move/from16 v0, v19

    if-ne v0, v3, :cond_16

    neg-double v9, v9

    :cond_16
    aput-wide v9, v7, v8

    goto/16 :goto_4

    :pswitch_1d
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p0

    invoke-static {v6, v7, v8, v0}, Lorg/mozilla/javascript/Interpreter;->doAdd([Ljava/lang/Object;[DILorg/mozilla/javascript/Context;)V

    goto/16 :goto_4

    :pswitch_1e
    move/from16 v0, v19

    invoke-static {v4, v0, v6, v7, v8}, Lorg/mozilla/javascript/Interpreter;->doArithmetic(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v8

    goto/16 :goto_4

    :pswitch_1f
    invoke-static {v4, v8}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v3

    if-nez v3, :cond_17

    const/4 v3, 0x1

    :goto_11
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :cond_17
    const/4 v3, 0x0

    goto :goto_11

    :pswitch_20
    add-int/lit8 v8, v8, 0x1

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v3, v1}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_21
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_5c

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    move-object v9, v3

    :goto_12
    add-int/lit8 v8, v8, -0x1

    aget-object v3, v6, v8

    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    const/16 v10, 0x8

    move/from16 v0, v19

    if-ne v0, v10, :cond_18

    iget-object v10, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v3, v9, v0, v10, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :goto_13
    aput-object v3, v6, v8

    goto/16 :goto_4

    :cond_18
    iget-object v10, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v3, v9, v0, v10, v1}, Lorg/mozilla/javascript/ScriptRuntime;->strictSetName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_13

    :pswitch_22
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_5b

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    move-object v9, v3

    :goto_14
    add-int/lit8 v8, v8, -0x1

    aget-object v3, v6, v8

    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v3, v9, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setConst(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_23
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1, v6, v7, v8}, Lorg/mozilla/javascript/Interpreter;->doDelName(Lorg/mozilla/javascript/Context;I[Ljava/lang/Object;[DI)I

    move-result v8

    goto/16 :goto_4

    :pswitch_24
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_19

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_19
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-static {v3, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_25
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_1a

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_1a
    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-static {v3, v0, v1, v9}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_26
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_5a

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    move-object v9, v3

    :goto_15
    add-int/lit8 v8, v8, -0x1

    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_1b

    aget-wide v10, v7, v8

    invoke-static {v10, v11}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_1b
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-static {v3, v0, v9, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_27
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_1c

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_1c
    iget v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v9, v5, v9

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-static {v3, v0, v1, v9}, Lorg/mozilla/javascript/ScriptRuntime;->propIncrDecr(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v8

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    :pswitch_28
    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v7, v8}, Lorg/mozilla/javascript/Interpreter;->doGetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v8

    goto/16 :goto_4

    :pswitch_29
    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v8}, Lorg/mozilla/javascript/Interpreter;->doSetElem(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DI)I

    move-result v8

    goto/16 :goto_4

    :pswitch_2a
    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lorg/mozilla/javascript/Interpreter;->doElemIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[B[Ljava/lang/Object;[DI)I

    move-result v8

    goto/16 :goto_4

    :pswitch_2b
    aget-object v3, v6, v8

    check-cast v3, Lorg/mozilla/javascript/Ref;

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->refGet(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_2c
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_59

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    move-object v9, v3

    :goto_16
    add-int/lit8 v8, v8, -0x1

    aget-object v3, v6, v8

    check-cast v3, Lorg/mozilla/javascript/Ref;

    move-object/from16 v0, p0

    invoke-static {v3, v9, v0}, Lorg/mozilla/javascript/ScriptRuntime;->refSet(Lorg/mozilla/javascript/Ref;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_2d
    aget-object v3, v6, v8

    check-cast v3, Lorg/mozilla/javascript/Ref;

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->refDel(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_2e
    aget-object v3, v6, v8

    check-cast v3, Lorg/mozilla/javascript/Ref;

    iget v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v9, v5, v9

    move-object/from16 v0, p0

    invoke-static {v3, v0, v9}, Lorg/mozilla/javascript/ScriptRuntime;->refIncrDecr(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v8

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    :pswitch_2f
    add-int/lit8 v8, v8, 0x1

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v15, v3

    aget-object v3, v6, v15

    aput-object v3, v6, v8

    aget-wide v9, v7, v15

    aput-wide v9, v7, v8

    goto/16 :goto_4

    :pswitch_30
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v15, v3

    const/4 v3, 0x0

    aput-object v3, v6, v15

    goto/16 :goto_4

    :pswitch_31
    add-int/lit8 v3, v8, 0x1

    iget-object v8, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-static {v0, v1, v8}, Lorg/mozilla/javascript/ScriptRuntime;->getNameFunctionAndThis(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v8

    aput-object v8, v6, v3

    add-int/lit8 v8, v3, 0x1

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_32
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_1d

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_1d
    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-static {v3, v0, v1, v9}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v3

    aput-object v3, v6, v8

    add-int/lit8 v8, v8, 0x1

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_33
    add-int/lit8 v3, v8, -0x1

    aget-object v3, v6, v3

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_58

    add-int/lit8 v3, v8, -0x1

    aget-wide v9, v7, v3

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    move-object v9, v3

    :goto_17
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_1e

    aget-wide v10, v7, v8

    invoke-static {v10, v11}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_1e
    add-int/lit8 v10, v8, -0x1

    move-object/from16 v0, p0

    invoke-static {v9, v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getElemFunctionAndThis(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v3

    aput-object v3, v6, v10

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_34
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_1f

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_1f
    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getValueFunctionAndThis(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v3

    aput-object v3, v6, v8

    add-int/lit8 v8, v8, 0x1

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_35
    if-eqz v24, :cond_20

    move-object/from16 v0, p0

    iget v3, v0, Lorg/mozilla/javascript/Context;->instructionCount:I

    add-int/lit8 v3, v3, 0x64

    move-object/from16 v0, p0

    iput v3, v0, Lorg/mozilla/javascript/Context;->instructionCount:I

    :cond_20
    move-object/from16 v9, p0

    move-object v10, v4

    move-object v11, v6

    move-object v12, v7

    move v13, v8

    move-object v14, v5

    invoke-static/range {v9 .. v15}, Lorg/mozilla/javascript/Interpreter;->doCallSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[BI)I

    move-result v8

    goto/16 :goto_4

    :pswitch_36
    if-eqz v24, :cond_21

    move-object/from16 v0, p0

    iget v3, v0, Lorg/mozilla/javascript/Context;->instructionCount:I

    add-int/lit8 v3, v3, 0x64

    move-object/from16 v0, p0

    iput v3, v0, Lorg/mozilla/javascript/Context;->instructionCount:I

    :cond_21
    add-int/lit8 v3, v15, 0x1

    sub-int/2addr v8, v3

    aget-object v3, v6, v8

    check-cast v3, Lorg/mozilla/javascript/Callable;

    add-int/lit8 v9, v8, 0x1

    aget-object v11, v6, v9

    check-cast v11, Lorg/mozilla/javascript/Scriptable;

    const/16 v9, 0x46

    move/from16 v0, v19

    if-ne v0, v9, :cond_22

    add-int/lit8 v9, v8, 0x2

    invoke-static {v6, v7, v9, v15}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-static {v3, v11, v9, v0}, Lorg/mozilla/javascript/ScriptRuntime;->callRef(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :cond_22
    iget-object v10, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-boolean v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-eqz v9, :cond_23

    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v9}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v10

    :cond_23
    instance-of v9, v3, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v9, :cond_25

    move-object v0, v3

    check-cast v0, Lorg/mozilla/javascript/InterpretedFunction;

    move-object/from16 v16, v0

    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v9, v9, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object/from16 v0, v16

    iget-object v12, v0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    if-ne v9, v12, :cond_25

    new-instance v18, Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Interpreter$1;)V

    const/16 v3, -0x37

    move/from16 v0, v19

    if-ne v0, v3, :cond_57

    iget-object v0, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object/from16 v17, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    :goto_18
    add-int/lit8 v14, v8, 0x2

    move-object/from16 v9, p0

    move-object v12, v6

    move-object v13, v7

    invoke-static/range {v9 .. v18}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    const/16 v3, -0x37

    move/from16 v0, v19

    if-eq v0, v3, :cond_24

    iput v8, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    move/from16 v0, v19

    iput v0, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    :cond_24
    move-object/from16 v8, v29

    move-object/from16 v4, v18

    goto/16 :goto_2

    :cond_25
    instance-of v9, v3, Lorg/mozilla/javascript/NativeContinuation;

    if-eqz v9, :cond_27

    new-instance v5, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    check-cast v3, Lorg/mozilla/javascript/NativeContinuation;

    invoke-direct {v5, v3, v4}, Lorg/mozilla/javascript/Interpreter$ContinuationJump;-><init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    if-nez v15, :cond_26

    move-object/from16 v0, v31

    iput-object v0, v5, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    :goto_19
    move-wide/from16 v7, v26

    move-object/from16 v9, v28

    move-object/from16 v18, v4

    move-object v4, v5

    goto/16 :goto_8

    :cond_26
    add-int/lit8 v3, v8, 0x2

    aget-object v3, v6, v3

    iput-object v3, v5, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    add-int/lit8 v3, v8, 0x2

    aget-wide v6, v7, v3

    iput-wide v6, v5, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    goto :goto_19

    :cond_27
    instance-of v9, v3, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v9, :cond_29

    move-object v0, v3

    check-cast v0, Lorg/mozilla/javascript/IdFunctionObject;

    move-object v13, v0

    invoke-static {v13}, Lorg/mozilla/javascript/NativeContinuation;->isContinuationConstructor(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v9

    if-eqz v9, :cond_28

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v9

    aput-object v9, v3, v8

    goto/16 :goto_4

    :cond_28
    invoke-static {v13}, Lorg/mozilla/javascript/BaseFunction;->isApplyOrCall(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-static {v11}, Lorg/mozilla/javascript/ScriptRuntime;->getCallable(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v12

    instance-of v9, v12, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v9, :cond_29

    check-cast v12, Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v9, v9, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    iget-object v14, v12, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    if-ne v9, v14, :cond_29

    move-object/from16 v3, p0

    move v5, v15

    move/from16 v9, v19

    move-object v11, v13

    invoke-static/range {v3 .. v12}, Lorg/mozilla/javascript/Interpreter;->initFrameForApplyOrCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v18

    move-object/from16 v8, v29

    move-object/from16 v4, v18

    goto/16 :goto_2

    :cond_29
    instance-of v9, v3, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;

    if-eqz v9, :cond_2a

    move-object v0, v3

    check-cast v0, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->noSuchMethodMethod:Lorg/mozilla/javascript/Callable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v9, v0, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v9, :cond_2a

    check-cast v23, Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v9, v9, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object/from16 v0, v23

    iget-object v12, v0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    if-ne v9, v12, :cond_2a

    move-object/from16 v13, p0

    move-object v14, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v20, v11

    move-object/from16 v21, v10

    invoke-static/range {v13 .. v23}, Lorg/mozilla/javascript/Interpreter;->initFrameForNoSuchMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v18

    move-object/from16 v8, v29

    move-object/from16 v4, v18

    goto/16 :goto_2

    :cond_2a
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    move/from16 v0, v19

    iput v0, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    iput v8, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    add-int/lit8 v9, v8, 0x2

    invoke-static {v6, v7, v9, v15}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v10, v11, v9}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_37
    if-eqz v24, :cond_2b

    move-object/from16 v0, p0

    iget v3, v0, Lorg/mozilla/javascript/Context;->instructionCount:I

    add-int/lit8 v3, v3, 0x64

    move-object/from16 v0, p0

    iput v3, v0, Lorg/mozilla/javascript/Context;->instructionCount:I

    :cond_2b
    sub-int v20, v8, v15

    aget-object v3, v6, v20

    instance-of v8, v3, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v8, :cond_2c

    move-object v0, v3

    check-cast v0, Lorg/mozilla/javascript/InterpretedFunction;

    move-object/from16 v16, v0

    iget-object v8, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v8, v8, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object/from16 v0, v16

    iget-object v9, v0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    if-ne v8, v9, :cond_2c

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Lorg/mozilla/javascript/InterpretedFunction;->createObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v11

    new-instance v18, Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Interpreter$1;)V

    iget-object v10, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    add-int/lit8 v14, v20, 0x1

    move-object/from16 v9, p0

    move-object v12, v6

    move-object v13, v7

    move-object/from16 v17, v4

    invoke-static/range {v9 .. v18}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    aput-object v11, v6, v20

    move/from16 v0, v20

    iput v0, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    move/from16 v0, v19

    iput v0, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    move-object/from16 v8, v29

    move-object/from16 v4, v18

    goto/16 :goto_2

    :cond_2c
    instance-of v8, v3, Lorg/mozilla/javascript/Function;

    if-nez v8, :cond_2e

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_2d

    aget-wide v5, v7, v20

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_2d
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_2e
    check-cast v3, Lorg/mozilla/javascript/Function;

    instance-of v8, v3, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v8, :cond_2f

    move-object v0, v3

    check-cast v0, Lorg/mozilla/javascript/IdFunctionObject;

    move-object v8, v0

    invoke-static {v8}, Lorg/mozilla/javascript/NativeContinuation;->isContinuationConstructor(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v8

    if-eqz v8, :cond_2f

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v8, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v8

    aput-object v8, v3, v20

    move/from16 v8, v20

    goto/16 :goto_4

    :cond_2f
    add-int/lit8 v8, v20, 0x1

    invoke-static {v6, v7, v8, v15}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v9, v8}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    aput-object v3, v6, v20

    move/from16 v8, v20

    goto/16 :goto_4

    :pswitch_38
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_30

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_30
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_39
    add-int/lit8 v8, v8, 0x1

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, v29

    invoke-static {v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeofName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_3a
    add-int/lit8 v8, v8, 0x1

    aput-object v29, v6, v8

    goto/16 :goto_4

    :pswitch_3b
    add-int/lit8 v8, v8, 0x1

    aput-object v30, v6, v8

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v5, v3}, Lorg/mozilla/javascript/Interpreter;->getShort([BI)I

    move-result v3

    int-to-double v9, v3

    aput-wide v9, v7, v8

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    :pswitch_3c
    add-int/lit8 v8, v8, 0x1

    aput-object v30, v6, v8

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v5, v3}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v3

    int-to-double v9, v3

    aput-wide v9, v7, v8

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x4

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    :pswitch_3d
    add-int/lit8 v8, v8, 0x1

    aput-object v30, v6, v8

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    aget-wide v9, v3, v15

    aput-wide v9, v7, v8

    goto/16 :goto_4

    :pswitch_3e
    add-int/lit8 v8, v8, 0x1

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v3, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_3f
    add-int/lit8 v8, v8, 0x1

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v9, v5, v9

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-static {v3, v0, v1, v9}, Lorg/mozilla/javascript/ScriptRuntime;->nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v8

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    :pswitch_40
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v9, v3, 0x1

    iput v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v16, v5, v3

    :goto_1a
    move-object v9, v4

    move-object v10, v6

    move-object v11, v7

    move v12, v8

    move-object/from16 v13, v21

    move-object/from16 v14, v32

    move-object/from16 v15, v33

    invoke-static/range {v9 .. v16}, Lorg/mozilla/javascript/Interpreter;->doSetConstVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I

    move-result v8

    move/from16 v15, v16

    goto/16 :goto_4

    :pswitch_41
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v9, v3, 0x1

    iput v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v16, v5, v3

    :goto_1b
    move-object v9, v4

    move-object v10, v6

    move-object v11, v7

    move v12, v8

    move-object/from16 v13, v21

    move-object/from16 v14, v32

    move-object/from16 v15, v33

    invoke-static/range {v9 .. v16}, Lorg/mozilla/javascript/Interpreter;->doSetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I

    move-result v8

    move/from16 v15, v16

    goto/16 :goto_4

    :pswitch_42
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v9, v3, 0x1

    iput v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v15, v5, v3

    :pswitch_43
    move-object v9, v4

    move-object v10, v6

    move-object v11, v7

    move v12, v8

    move-object/from16 v13, v21

    move-object/from16 v14, v32

    invoke-static/range {v9 .. v15}, Lorg/mozilla/javascript/Interpreter;->doGetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[DI)I

    move-result v8

    goto/16 :goto_4

    :pswitch_44
    move-object/from16 v16, p0

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v22, v32

    move/from16 v23, v15

    invoke-static/range {v16 .. v23}, Lorg/mozilla/javascript/Interpreter;->doVarIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[DI)I

    move-result v8

    goto/16 :goto_4

    :pswitch_45
    add-int/lit8 v8, v8, 0x1

    aput-object v30, v6, v8

    const-wide/16 v9, 0x0

    aput-wide v9, v7, v8

    goto/16 :goto_4

    :pswitch_46
    add-int/lit8 v8, v8, 0x1

    aput-object v30, v6, v8

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v7, v8

    goto/16 :goto_4

    :pswitch_47
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_48
    add-int/lit8 v8, v8, 0x1

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_49
    add-int/lit8 v8, v8, 0x1

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_4a
    add-int/lit8 v8, v8, 0x1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_4b
    add-int/lit8 v8, v8, 0x1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_4c
    add-int/lit8 v8, v8, 0x1

    aput-object v31, v6, v8

    goto/16 :goto_4

    :pswitch_4d
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_31

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_31
    add-int/lit8 v8, v8, -0x1

    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, p0

    invoke-static {v3, v0, v9}, Lorg/mozilla/javascript/ScriptRuntime;->enterWith(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    iput-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto/16 :goto_4

    :pswitch_4e
    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->leaveWith(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    iput-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto/16 :goto_4

    :pswitch_4f
    add-int/lit8 v9, v8, -0x1

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v15, v3

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v8, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v3, v3, v8

    if-eqz v3, :cond_32

    const/4 v3, 0x1

    move v8, v3

    :goto_1c
    add-int/lit8 v3, v9, 0x1

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/Throwable;

    if-nez v8, :cond_33

    const/4 v8, 0x0

    :goto_1d
    iget-object v10, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-static {v3, v8, v0, v1, v10}, Lorg/mozilla/javascript/ScriptRuntime;->newCatchScope(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    aput-object v3, v6, v15

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v8, v9

    goto/16 :goto_4

    :cond_32
    const/4 v3, 0x0

    move v8, v3

    goto :goto_1c

    :cond_33
    aget-object v8, v6, v15

    check-cast v8, Lorg/mozilla/javascript/Scriptable;

    goto :goto_1d

    :pswitch_50
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_56

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    move-object v9, v3

    :goto_1e
    add-int/lit8 v8, v8, -0x1

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v15, v3

    const/16 v3, 0x3a

    move/from16 v0, v19

    if-ne v0, v3, :cond_34

    const/4 v3, 0x0

    :goto_1f
    move-object/from16 v0, p0

    invoke-static {v9, v0, v3}, Lorg/mozilla/javascript/ScriptRuntime;->enumInit(Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v15

    goto/16 :goto_4

    :cond_34
    const/16 v3, 0x3b

    move/from16 v0, v19

    if-ne v0, v3, :cond_35

    const/4 v3, 0x1

    goto :goto_1f

    :cond_35
    const/4 v3, 0x2

    goto :goto_1f

    :pswitch_51
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v15, v3

    aget-object v3, v6, v15

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x3d

    move/from16 v0, v19

    if-ne v0, v9, :cond_36

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->enumNext(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v3

    :goto_20
    aput-object v3, v6, v8

    goto/16 :goto_4

    :cond_36
    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->enumId(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_20

    :pswitch_52
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_37

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_37
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-static {v3, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->specialRef(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_53
    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v8, v15}, Lorg/mozilla/javascript/Interpreter;->doRefMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I

    move-result v8

    goto/16 :goto_4

    :pswitch_54
    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v8, v15}, Lorg/mozilla/javascript/Interpreter;->doRefNsMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I

    move-result v8

    goto/16 :goto_4

    :pswitch_55
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_38

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_38
    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, p0

    invoke-static {v3, v0, v9, v15}, Lorg/mozilla/javascript/ScriptRuntime;->nameRef(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_56
    move-object/from16 v10, p0

    move-object v11, v4

    move-object v12, v6

    move-object v13, v7

    move v14, v8

    invoke-static/range {v10 .. v15}, Lorg/mozilla/javascript/Interpreter;->doRefNsName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DII)I

    move-result v8

    goto/16 :goto_4

    :pswitch_57
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v15, v3

    aget-object v3, v6, v15

    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    iput-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto/16 :goto_4

    :pswitch_58
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v15, v3

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aput-object v3, v6, v15

    goto/16 :goto_4

    :pswitch_59
    add-int/lit8 v8, v8, 0x1

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v9, v15}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_5a
    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v9, v15}, Lorg/mozilla/javascript/Interpreter;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V

    goto/16 :goto_4

    :pswitch_5b
    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->itsRegExpLiterals:[Ljava/lang/Object;

    aget-object v3, v3, v15

    add-int/lit8 v8, v8, 0x1

    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, p0

    invoke-static {v0, v9, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_5c
    add-int/lit8 v3, v8, 0x1

    new-array v8, v15, [I

    aput-object v8, v6, v3

    add-int/lit8 v8, v3, 0x1

    new-array v3, v15, [Ljava/lang/Object;

    aput-object v3, v6, v8

    const-wide/16 v9, 0x0

    aput-wide v9, v7, v8

    goto/16 :goto_4

    :pswitch_5d
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_55

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    move-object v9, v3

    :goto_21
    add-int/lit8 v8, v8, -0x1

    aget-wide v10, v7, v8

    double-to-int v10, v10

    aget-object v3, v6, v8

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aput-object v9, v3, v10

    add-int/lit8 v3, v10, 0x1

    int-to-double v9, v3

    aput-wide v9, v7, v8

    goto/16 :goto_4

    :pswitch_5e
    aget-object v9, v6, v8

    add-int/lit8 v8, v8, -0x1

    aget-wide v10, v7, v8

    double-to-int v10, v10

    aget-object v3, v6, v8

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aput-object v9, v3, v10

    add-int/lit8 v3, v8, -0x1

    aget-object v3, v6, v3

    check-cast v3, [I

    check-cast v3, [I

    const/4 v9, -0x1

    aput v9, v3, v10

    add-int/lit8 v3, v10, 0x1

    int-to-double v9, v3

    aput-wide v9, v7, v8

    goto/16 :goto_4

    :pswitch_5f
    aget-object v9, v6, v8

    add-int/lit8 v8, v8, -0x1

    aget-wide v10, v7, v8

    double-to-int v10, v10

    aget-object v3, v6, v8

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aput-object v9, v3, v10

    add-int/lit8 v3, v8, -0x1

    aget-object v3, v6, v3

    check-cast v3, [I

    check-cast v3, [I

    const/4 v9, 0x1

    aput v9, v3, v10

    add-int/lit8 v3, v10, 0x1

    int-to-double v9, v3

    aput-wide v9, v7, v8

    goto/16 :goto_4

    :pswitch_60
    aget-object v3, v6, v8

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    add-int/lit8 v10, v8, -0x1

    aget-object v8, v6, v10

    check-cast v8, [I

    check-cast v8, [I

    const/16 v9, 0x42

    move/from16 v0, v19

    if-ne v0, v9, :cond_39

    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v9, v9, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    aget-object v9, v9, v15

    check-cast v9, [Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    iget-object v11, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, p0

    invoke-static {v9, v3, v8, v0, v11}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    :goto_22
    aput-object v3, v6, v10

    move v8, v10

    goto/16 :goto_4

    :cond_39
    const/4 v8, 0x0

    const/16 v9, -0x1f

    move/from16 v0, v19

    if-ne v0, v9, :cond_3a

    iget-object v8, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v8, v8, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    aget-object v8, v8, v15

    check-cast v8, [I

    check-cast v8, [I

    :cond_3a
    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, p0

    invoke-static {v3, v8, v0, v9}, Lorg/mozilla/javascript/ScriptRuntime;->newArrayLiteral([Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    goto :goto_22

    :pswitch_61
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_3b

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_3b
    add-int/lit8 v8, v8, -0x1

    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v3, v9}, Lorg/mozilla/javascript/ScriptRuntime;->enterDotQuery(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    iput-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto/16 :goto_4

    :pswitch_62
    invoke-static {v4, v8}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v3

    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v3, v9}, Lorg/mozilla/javascript/ScriptRuntime;->updateDotQuery(ZLorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3c

    aput-object v3, v6, v8

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->leaveDotQuery(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    iput-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    :cond_3c
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_f

    :pswitch_63
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-ne v3, v0, :cond_3d

    aget-wide v9, v7, v8

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_3d
    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->setDefaultNamespace(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_64
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-eq v3, v0, :cond_3

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->escapeAttributeValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_65
    aget-object v3, v6, v8

    move-object/from16 v0, v30

    if-eq v3, v0, :cond_3

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->escapeTextValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    goto/16 :goto_4

    :pswitch_66
    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v3, :cond_3

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lorg/mozilla/javascript/debug/DebugFrame;->onDebuggerStatement(Lorg/mozilla/javascript/Context;)V

    goto/16 :goto_4

    :pswitch_67
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v3, :cond_3e

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v5, v3}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v3

    iget-object v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    move-object/from16 v0, p0

    invoke-interface {v9, v0, v3}, Lorg/mozilla/javascript/debug/DebugFrame;->onLineChange(Lorg/mozilla/javascript/Context;I)V

    :cond_3e
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    :pswitch_68
    const/4 v15, 0x0

    goto/16 :goto_4

    :pswitch_69
    const/4 v15, 0x1

    goto/16 :goto_4

    :pswitch_6a
    const/4 v15, 0x2

    goto/16 :goto_4

    :pswitch_6b
    const/4 v15, 0x3

    goto/16 :goto_4

    :pswitch_6c
    const/4 v15, 0x4

    goto/16 :goto_4

    :pswitch_6d
    const/4 v15, 0x5

    goto/16 :goto_4

    :pswitch_6e
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v3, v5, v3

    and-int/lit16 v15, v3, 0xff

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    :pswitch_6f
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v5, v3}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v15

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    :pswitch_70
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v5, v3}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v15

    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x4

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    :pswitch_71
    const/4 v3, 0x0

    aget-object v29, v34, v3

    goto/16 :goto_4

    :pswitch_72
    const/4 v3, 0x1

    aget-object v29, v34, v3

    goto/16 :goto_4

    :pswitch_73
    const/4 v3, 0x2

    aget-object v29, v34, v3

    goto/16 :goto_4

    :pswitch_74
    const/4 v3, 0x3

    aget-object v29, v34, v3

    goto/16 :goto_4

    :pswitch_75
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    aget-object v9, v34, v3
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    move-object/from16 v29, v9

    goto/16 :goto_4

    :pswitch_76
    :try_start_e
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v5, v3}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v3

    aget-object v9, v34, v3
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    :try_start_f
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    move-object/from16 v29, v9

    goto/16 :goto_4

    :pswitch_77
    :try_start_10
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v5, v3}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v3

    aget-object v9, v34, v3
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0

    :try_start_11
    iget v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v3, v3, 0x4

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    move-object/from16 v29, v9

    goto/16 :goto_4

    :cond_3f
    :try_start_12
    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    iget v9, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-virtual {v3, v9}, Lorg/mozilla/javascript/UintMap;->getExistingInt(I)I

    move-result v3

    iput v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_10

    :cond_40
    move-wide/from16 v35, v5

    move-wide/from16 v4, v35

    move-object v6, v3

    move-object/from16 v3, v25

    :goto_23
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    if-eqz v7, :cond_51

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v7

    if-eqz v7, :cond_51

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ObjArray;->pop()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    :goto_24
    if-eqz v3, :cond_53

    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_52

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    :cond_41
    move-object v9, v4

    move-object/from16 v29, v7

    move-object/from16 v18, v8

    move-object v4, v3

    move-wide v7, v5

    goto/16 :goto_8

    :cond_42
    instance-of v3, v4, Lorg/mozilla/javascript/JavaScriptException;

    if-eqz v3, :cond_43

    const/4 v3, 0x2

    move-object/from16 v35, v5

    move v5, v3

    move-object/from16 v3, v35

    goto/16 :goto_9

    :cond_43
    instance-of v3, v4, Lorg/mozilla/javascript/EcmaError;

    if-eqz v3, :cond_44

    const/4 v3, 0x2

    move-object/from16 v35, v5

    move v5, v3

    move-object/from16 v3, v35

    goto/16 :goto_9

    :cond_44
    instance-of v3, v4, Lorg/mozilla/javascript/EvaluatorException;

    if-eqz v3, :cond_45

    const/4 v3, 0x2

    move-object/from16 v35, v5

    move v5, v3

    move-object/from16 v3, v35

    goto/16 :goto_9

    :cond_45
    instance-of v3, v4, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_47

    const/16 v3, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_46

    const/4 v3, 0x2

    :goto_25
    move-object/from16 v35, v5

    move v5, v3

    move-object/from16 v3, v35

    goto/16 :goto_9

    :cond_46
    const/4 v3, 0x1

    goto :goto_25

    :cond_47
    instance-of v3, v4, Ljava/lang/Error;

    if-eqz v3, :cond_49

    const/16 v3, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v3, 0x2

    :goto_26
    move-object/from16 v35, v5

    move v5, v3

    move-object/from16 v3, v35

    goto/16 :goto_9

    :cond_48
    const/4 v3, 0x0

    goto :goto_26

    :cond_49
    instance-of v3, v4, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-eqz v3, :cond_4a

    const/4 v5, 0x1

    move-object v3, v4

    check-cast v3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    goto/16 :goto_9

    :cond_4a
    const/16 v3, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_4b

    const/4 v3, 0x2

    :goto_27
    move-object/from16 v35, v5

    move v5, v3

    move-object/from16 v3, v35

    goto/16 :goto_9

    :cond_4b
    const/4 v3, 0x1

    goto :goto_27

    :catch_2
    move-exception v5

    const/4 v4, 0x1

    move v6, v4

    move-object v4, v5

    move-object v5, v3

    goto/16 :goto_a

    :catch_3
    move-exception v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v4

    move-object v4, v5

    move-object v5, v3

    goto/16 :goto_a

    :catch_4
    move-exception v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v3

    move/from16 v35, v6

    move-object v6, v5

    move/from16 v5, v35

    goto/16 :goto_b

    :cond_4c
    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_4d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object/from16 v18, v0

    if-nez v18, :cond_4f

    if-eqz v6, :cond_54

    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v3, :cond_4e

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_4e
    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v3, :cond_50

    const/4 v15, -0x1

    move-wide/from16 v26, v7

    move-object/from16 v28, v9

    move-object/from16 v25, v4

    move-object/from16 v8, v29

    move-object/from16 v4, v18

    goto/16 :goto_2

    :cond_4f
    if-eqz v6, :cond_d

    iget-object v3, v6, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object/from16 v0, v18

    if-ne v3, v0, :cond_d

    const/4 v15, -0x1

    move-wide/from16 v26, v7

    move-object/from16 v28, v9

    move-object/from16 v25, v4

    move-object/from16 v8, v29

    move-object/from16 v4, v18

    goto/16 :goto_2

    :cond_50
    iget-object v5, v6, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    iget-wide v3, v6, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    const/4 v6, 0x0

    move-wide/from16 v35, v3

    move-object v3, v6

    move-object v6, v5

    move-wide/from16 v4, v35

    goto/16 :goto_23

    :cond_51
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    goto/16 :goto_24

    :cond_52
    check-cast v3, Ljava/lang/Error;

    throw v3

    :cond_53
    move-object/from16 v0, v30

    if-ne v6, v0, :cond_a

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v6

    goto/16 :goto_7

    :catch_5
    move-exception v7

    move-object v8, v4

    move-object v4, v3

    move-object v3, v7

    move-object/from16 v7, v29

    goto/16 :goto_5

    :catch_6
    move-exception v4

    move-object v8, v7

    move-object/from16 v7, v29

    move-object/from16 v35, v3

    move-object v3, v4

    move-object/from16 v4, v35

    goto/16 :goto_5

    :catch_7
    move-exception v3

    move-wide/from16 v5, v26

    move-object v7, v8

    move-object v8, v4

    move-object/from16 v4, v28

    goto/16 :goto_5

    :catch_8
    move-exception v3

    move-wide/from16 v5, v26

    move-object v7, v9

    move-object v8, v4

    move-object/from16 v4, v28

    goto/16 :goto_5

    :catch_9
    move-exception v5

    move-object/from16 v7, v29

    move-object v8, v4

    move-object v4, v3

    move-object v3, v5

    move-wide/from16 v5, v26

    goto/16 :goto_5

    :cond_54
    move-object v6, v9

    move-object v3, v4

    move-wide v4, v7

    goto/16 :goto_23

    :cond_55
    move-object v9, v3

    goto/16 :goto_21

    :cond_56
    move-object v9, v3

    goto/16 :goto_1e

    :cond_57
    move-object/from16 v17, v4

    goto/16 :goto_18

    :cond_58
    move-object v9, v3

    goto/16 :goto_17

    :cond_59
    move-object v9, v3

    goto/16 :goto_16

    :cond_5a
    move-object v9, v3

    goto/16 :goto_15

    :cond_5b
    move-object v9, v3

    goto/16 :goto_14

    :cond_5c
    move-object v9, v3

    goto/16 :goto_12

    :cond_5d
    move v8, v3

    goto/16 :goto_f

    :pswitch_78
    move/from16 v16, v15

    goto/16 :goto_1b

    :pswitch_79
    move/from16 v16, v15

    goto/16 :goto_1a

    :cond_5e
    move-object/from16 v35, v5

    move v5, v6

    move-object/from16 v6, v35

    goto/16 :goto_b

    :cond_5f
    move v6, v5

    move-object v5, v3

    goto/16 :goto_a

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_66
        :pswitch_4
        :pswitch_1
        :pswitch_40
        :pswitch_0
        :pswitch_22
        :pswitch_5f
        :pswitch_5e
        :pswitch_30
        :pswitch_36
        :pswitch_62
        :pswitch_61
        :pswitch_46
        :pswitch_45
        :pswitch_4c
        :pswitch_41
        :pswitch_42
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_60
        :pswitch_5d
        :pswitch_5c
        :pswitch_3c
        :pswitch_3b
        :pswitch_67
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_18
        :pswitch_35
        :pswitch_5a
        :pswitch_59
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_39
        :pswitch_58
        :pswitch_57
        :pswitch_2e
        :pswitch_2a
        :pswitch_27
        :pswitch_3f
        :pswitch_44
        :pswitch_d
        :pswitch_13
        :pswitch_12
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_23
        :pswitch_0
        :pswitch_4d
        :pswitch_4e
        :pswitch_17
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_21
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1f
        :pswitch_19
        :pswitch_1c
        :pswitch_1c
        :pswitch_37
        :pswitch_23
        :pswitch_38
        :pswitch_25
        :pswitch_24
        :pswitch_26
        :pswitch_28
        :pswitch_29
        :pswitch_36
        :pswitch_3e
        :pswitch_3d
        :pswitch_3a
        :pswitch_47
        :pswitch_48
        :pswitch_4a
        :pswitch_4b
        :pswitch_a
        :pswitch_a
        :pswitch_5b
        :pswitch_20
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_2f
        :pswitch_43
        :pswitch_78
        :pswitch_4f
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_51
        :pswitch_51
        :pswitch_49
        :pswitch_2
        :pswitch_60
        :pswitch_60
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_36
        :pswitch_52
        :pswitch_3
        :pswitch_21
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
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
        :pswitch_79
    .end packed-switch
.end method

.method private static isFrameEnterExitRequired(Lorg/mozilla/javascript/Interpreter$CallFrame;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static processThrowable(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Interpreter$CallFrame;IZ)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x0

    if-ltz p3, :cond_2

    iget-boolean v0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p2

    :cond_0
    iget-object v0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    add-int/lit8 v1, p3, 0x2

    aget v1, v0, v1

    iput v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    if-eqz p4, :cond_1

    iget v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iput v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    :cond_1
    iget v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    iput v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iget v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/lit8 v2, p3, 0x5

    aget v2, v0, v2

    add-int/2addr v1, v2

    iget v2, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/lit8 v3, p3, 0x4

    aget v0, v0, v3

    add-int/2addr v2, v0

    iget-object v0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    iput-object v0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aput-object p1, v0, v2

    :goto_0
    iput-object v5, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    return-object p2

    :cond_2
    check-cast p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eq v0, p2, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_3
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez v0, :cond_4

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_4
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget v2, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    sub-int/2addr v0, v2

    :cond_5
    iget-object v2, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move v3, v1

    move-object v4, v2

    move v2, v1

    move-object v1, v5

    :goto_1
    if-eq v3, v0, :cond_9

    iget-boolean v6, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v6, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_6
    invoke-static {v4}, Lorg/mozilla/javascript/Interpreter;->isFrameEnterExitRequired(Lorg/mozilla/javascript/Interpreter$CallFrame;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v1, :cond_7

    sub-int v1, v0, v3

    new-array v1, v1, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    :cond_7
    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_8
    iget-object v4, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    if-eqz v2, :cond_a

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {p0, v0, v3, v4}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    goto :goto_2

    :cond_a
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p2

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    iget-wide v1, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    invoke-static {p2, v0, v1, v2}, Lorg/mozilla/javascript/Interpreter;->setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V

    goto :goto_0
.end method

.method public static restartContinuation(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2, v2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    array-length v0, p3

    if-nez v0, :cond_2

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeContinuation;->getImplementation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    invoke-direct {v0, p0, v2}, Lorg/mozilla/javascript/Interpreter$ContinuationJump;-><init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    iput-object v1, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    invoke-static {p1, v2, v0}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v1, v0

    goto :goto_1
.end method

.method public static resumeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p3, Lorg/mozilla/javascript/Interpreter$CallFrame;

    new-instance v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    invoke-direct {v1, p2, p4}, Lorg/mozilla/javascript/Interpreter$GeneratorState;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    :try_start_0
    invoke-static {p0, p3, v1}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eq v0, p4, :cond_1

    throw v0

    :cond_1
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p0, p3, v1}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    throw v0
.end method

.method private static setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-wide p2, v0, v1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    return-void

    :cond_1
    iget v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_2

    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object p1, v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method private static stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v3, v0, p1

    cmpl-double v0, v3, v3

    if-nez v0, :cond_3

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, v3, :cond_6

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_8

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpl-double v0, v3, v3

    if-nez v0, :cond_7

    cmpl-double v0, v3, v5

    if-nez v0, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_9
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private static stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, v0, p1

    goto :goto_0
.end method

.method private static stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, v0, p1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method private static thawGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;I)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v1

    iget v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iget v0, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v2, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_0
    iget v0, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget v0, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    const/16 v0, 0x48

    if-ne p3, v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v1, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    aput-object v1, v0, p1

    :cond_3
    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public captureStackInfo(Lorg/mozilla/javascript/RhinoException;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, v3, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    iput-object v1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    iput-object v1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    :goto_0
    return-void

    :cond_1
    iget-object v0, v3, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v1, v0

    :goto_1
    array-length v0, v1

    add-int/lit8 v4, v0, -0x1

    iget-object v0, v3, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    aput-object v0, v1, v4

    move v0, v2

    :goto_2
    array-length v3, v1

    if-eq v0, v3, :cond_5

    aget-object v3, v1, v0

    iget v3, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, v3, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v0

    iget-object v1, v3, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->peek()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v3, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-ne v1, v4, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v1, v3, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ObjArray;->toArray([Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_1

    :cond_5
    new-array v4, v2, [I

    array-length v0, v1

    :goto_3
    if-eqz v0, :cond_7

    add-int/lit8 v3, v0, -0x1

    aget-object v0, v1, v3

    :goto_4
    if-eqz v0, :cond_6

    add-int/lit8 v2, v2, -0x1

    iget v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    aput v5, v4, v2

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_4

    :cond_6
    move v0, v3

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_8
    iput-object v1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    iput-object v4, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    goto :goto_0
.end method

.method public compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/CodeGenerator;

    invoke-direct {v0}, Lorg/mozilla/javascript/CodeGenerator;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/CodeGenerator;->compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Lorg/mozilla/javascript/InterpreterData;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    return-object v0
.end method

.method public createFunctionObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    if-eq p3, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {p1, p2, v0, p4}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object v0

    return-object v0
.end method

.method public createScriptObject(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Script;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    if-eq p1, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {v0, p2}, Lorg/mozilla/javascript/InterpretedFunction;->createScript(Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object v0

    return-object v0
.end method

.method public getPatchedStack(Lorg/mozilla/javascript/RhinoException;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string v5, "org.mozilla.javascript.Interpreter.interpretLoop"

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v0, "line.separator"

    invoke-static {v0}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    check-cast v0, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    check-cast v0, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v8, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    array-length v2, v0

    array-length v3, v8

    const/4 v1, 0x0

    move v12, v1

    move v1, v2

    move v2, v12

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v1, v9

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v1, v9, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_2

    const/16 v10, 0xd

    if-ne v9, v10, :cond_6

    :cond_2
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v2, v0, v4

    :goto_2
    if-eqz v2, :cond_7

    if-nez v3, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_3
    add-int/lit8 v3, v3, -0x1

    iget-object v9, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "\tat script"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v10, v9, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, v9, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x2e

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v10, v9, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const/16 v10, 0x28

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v10, v9, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget v10, v8, v3

    if-ltz v10, :cond_5

    const/16 v11, 0x3a

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v9, v9, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    invoke-static {v9, v10}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_5
    const/16 v9, 0x29

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    move v2, v1

    move v1, v4

    goto/16 :goto_0
.end method

.method public getScriptStack(Lorg/mozilla/javascript/RhinoException;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/RhinoException;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Interpreter;->getScriptStackElements(Lorg/mozilla/javascript/RhinoException;)[[Lorg/mozilla/javascript/ScriptStackElement;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    array-length v0, v3

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "line.separator"

    invoke-static {v0}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    array-length v6, v3

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v7, v3, v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    array-length v9, v7

    move v0, v1

    :goto_1
    if-ge v0, v9, :cond_0

    aget-object v10, v7, v0

    invoke-virtual {v10, v8}, Lorg/mozilla/javascript/ScriptStackElement;->renderJavaStyle(Ljava/lang/StringBuilder;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public getScriptStackElements(Lorg/mozilla/javascript/RhinoException;)[[Lorg/mozilla/javascript/ScriptStackElement;
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    if-nez v1, :cond_0

    check-cast v0, [[Lorg/mozilla/javascript/ScriptStackElement;

    :goto_0
    return-object v0

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    check-cast v1, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    check-cast v1, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v8, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    array-length v2, v1

    array-length v3, v8

    :goto_1
    if-eqz v2, :cond_4

    add-int/lit8 v6, v2, -0x1

    aget-object v2, v1, v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v2

    move v2, v3

    :goto_2
    if-eqz v4, :cond_3

    if-nez v2, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1
    add-int/lit8 v5, v2, -0x1

    iget-object v3, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v10, v3, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    const/4 v2, -0x1

    aget v11, v8, v5

    if-ltz v11, :cond_2

    iget-object v2, v3, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    invoke-static {v2, v11}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v2

    :cond_2
    iget-object v11, v3, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    if-eqz v11, :cond_5

    iget-object v11, v3, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_5

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    :goto_3
    iget-object v4, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    new-instance v11, Lorg/mozilla/javascript/ScriptStackElement;

    invoke-direct {v11, v10, v3, v2}, Lorg/mozilla/javascript/ScriptStackElement;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_2

    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/mozilla/javascript/ScriptStackElement;

    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    move v2, v6

    goto :goto_1

    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Lorg/mozilla/javascript/ScriptStackElement;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/mozilla/javascript/ScriptStackElement;

    goto :goto_0

    :cond_5
    move-object v3, v0

    goto :goto_3
.end method

.method public getSourcePositionFromStack(Lorg/mozilla/javascript/Context;[I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v2, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    if-ltz v2, :cond_0

    iget-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    invoke-static {v2, v0}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v0

    aput v0, p2, v3

    :goto_0
    iget-object v0, v1, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    return-object v0

    :cond_0
    aput v3, p2, v3

    goto :goto_0
.end method

.method public setEvalScriptFlag(Lorg/mozilla/javascript/Script;)V
    .locals 2

    check-cast p1, Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v0, p1, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    return-void
.end method
