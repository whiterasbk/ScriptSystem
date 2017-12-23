.class final Lorg/mozilla/classfile/SuperBlock;
.super Ljava/lang/Object;


# instance fields
.field private end:I

.field private index:I

.field private isInQueue:Z

.field private isInitialized:Z

.field private locals:[I

.field private stack:[I

.field private start:I


# direct methods
.method constructor <init>(III[I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/classfile/SuperBlock;->index:I

    iput p2, p0, Lorg/mozilla/classfile/SuperBlock;->start:I

    iput p3, p0, Lorg/mozilla/classfile/SuperBlock;->end:I

    array-length v0, p4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    iget-object v0, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    array-length v1, p4

    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    iput-boolean v2, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    iput-boolean v2, p0, Lorg/mozilla/classfile/SuperBlock;->isInQueue:Z

    return-void
.end method

.method private mergeState([I[IILorg/mozilla/classfile/ConstantPool;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    aget v2, p1, v1

    aget v3, p1, v1

    aget v4, p2, v1

    invoke-static {v3, v4, p4}, Lorg/mozilla/classfile/TypeInfo;->merge(IILorg/mozilla/classfile/ConstantPool;)I

    move-result v3

    aput v3, p1, v1

    aget v3, p1, v1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method getEnd()I
    .locals 1

    iget v0, p0, Lorg/mozilla/classfile/SuperBlock;->end:I

    return v0
.end method

.method getIndex()I
    .locals 1

    iget v0, p0, Lorg/mozilla/classfile/SuperBlock;->index:I

    return v0
.end method

.method getLocals()[I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    array-length v0, v0

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method getStack()[I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    array-length v0, v0

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method getStart()I
    .locals 1

    iget v0, p0, Lorg/mozilla/classfile/SuperBlock;->start:I

    return v0
.end method

.method getTrimmedLocals()[I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    aget v2, v2, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    invoke-static {v2}, Lorg/mozilla/classfile/TypeInfo;->isTwoWords(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, 0x1

    move v2, v1

    move v0, v3

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    aget v4, v4, v2

    invoke-static {v4}, Lorg/mozilla/classfile/TypeInfo;->isTwoWords(I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-array v3, v0, [I

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_4

    iget-object v4, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    aget v4, v4, v1

    aput v4, v3, v2

    iget-object v4, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    aget v4, v4, v1

    invoke-static {v4}, Lorg/mozilla/classfile/TypeInfo;->isTwoWords(I)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object v3
.end method

.method isInQueue()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/classfile/SuperBlock;->isInQueue:Z

    return v0
.end method

.method isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    return v0
.end method

.method merge([II[IILorg/mozilla/classfile/ConstantPool;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    invoke-static {p1, v0, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, p4, [I

    iput-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    invoke-static {p3, v0, v2, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v1, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    array-length v2, v2

    if-ne v2, p2, :cond_3

    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    array-length v2, v2

    if-ne v2, p4, :cond_3

    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    invoke-direct {p0, v2, p1, p2, p5}, Lorg/mozilla/classfile/SuperBlock;->mergeState([I[IILorg/mozilla/classfile/ConstantPool;)Z

    move-result v2

    iget-object v3, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    invoke-direct {p0, v3, p3, p4, p5}, Lorg/mozilla/classfile/SuperBlock;->mergeState([I[IILorg/mozilla/classfile/ConstantPool;)Z

    move-result v3

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad merge attempt"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setInQueue(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/classfile/SuperBlock;->isInQueue:Z

    return-void
.end method

.method setInitialized(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sb "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/mozilla/classfile/SuperBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
