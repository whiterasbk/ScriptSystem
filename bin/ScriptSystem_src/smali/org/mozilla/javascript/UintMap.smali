.class public Lorg/mozilla/javascript/UintMap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final A:I = -0x61c88647

.field private static final DELETED:I = -0x2

.field private static final EMPTY:I = -0x1

.field private static final check:Z = false

.field static final serialVersionUID:J = 0x3ae1178bbc3ee17cL


# instance fields
.field private transient ivaluesShift:I

.field private keyCount:I

.field private transient keys:[I

.field private transient occupiedCount:I

.field private power:I

.field private transient values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/UintMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    mul-int/lit8 v0, p1, 0x4

    div-int/lit8 v1, v0, 0x3

    const/4 v0, 0x2

    :goto_0
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    if-ge v2, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lorg/mozilla/javascript/UintMap;->power:I

    return-void
.end method

.method private ensureIndex(IZ)I
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v2, -0x1

    iget-object v3, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    if-eqz v3, :cond_9

    const v0, -0x61c88647

    mul-int v4, p1, v0

    iget v0, p0, Lorg/mozilla/javascript/UintMap;->power:I

    rsub-int/lit8 v0, v0, 0x20

    ushr-int v1, v4, v0

    aget v0, v3, v1

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eq v0, v2, :cond_8

    if-ne v0, v7, :cond_7

    move v0, v1

    :goto_1
    iget v5, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int v5, v8, v5

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lorg/mozilla/javascript/UintMap;->power:I

    invoke-static {v4, v5, v6}, Lorg/mozilla/javascript/UintMap;->tableLookupStep(III)I

    move-result v4

    :cond_2
    add-int/2addr v1, v4

    and-int/2addr v1, v5

    aget v6, v3, v1

    if-eq v6, p1, :cond_0

    if-ne v6, v7, :cond_3

    if-gez v0, :cond_3

    move v0, v1

    :cond_3
    if-ne v6, v2, :cond_2

    :goto_2
    if-ltz v0, :cond_4

    :goto_3
    aput p1, v3, v0

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    move v1, v0

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    iget v0, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    mul-int/lit8 v0, v0, 0x4

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int v2, v8, v2

    mul-int/lit8 v2, v2, 0x3

    if-lt v0, v2, :cond_6

    :cond_5
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/UintMap;->rehashTable(Z)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->insertNewKey(I)I

    move-result v1

    goto :goto_0

    :cond_6
    iget v0, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v2

    move v1, v2

    goto :goto_2
.end method

.method private findIndex(I)I
    .locals 6

    const/4 v1, -0x1

    iget-object v2, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    if-eqz v2, :cond_3

    const v0, -0x61c88647

    mul-int v3, p1, v0

    iget v0, p0, Lorg/mozilla/javascript/UintMap;->power:I

    rsub-int/lit8 v0, v0, 0x20

    ushr-int v0, v3, v0

    aget v4, v2, v0

    if-ne v4, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq v4, v1, :cond_3

    const/4 v4, 0x1

    iget v5, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lorg/mozilla/javascript/UintMap;->power:I

    invoke-static {v3, v4, v5}, Lorg/mozilla/javascript/UintMap;->tableLookupStep(III)I

    move-result v3

    :cond_2
    add-int/2addr v0, v3

    and-int/2addr v0, v4

    aget v5, v2, v0

    if-eq v5, p1, :cond_0

    if-ne v5, v1, :cond_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private insertNewKey(I)I
    .locals 6

    const/4 v5, -0x1

    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    const v0, -0x61c88647

    mul-int v2, p1, v0

    iget v0, p0, Lorg/mozilla/javascript/UintMap;->power:I

    rsub-int/lit8 v0, v0, 0x20

    ushr-int v0, v2, v0

    aget v3, v1, v0

    if-eq v3, v5, :cond_1

    const/4 v3, 0x1

    iget v4, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lorg/mozilla/javascript/UintMap;->power:I

    invoke-static {v2, v3, v4}, Lorg/mozilla/javascript/UintMap;->tableLookupStep(III)I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    and-int/2addr v0, v3

    aget v4, v1, v0

    if-ne v4, v5, :cond_0

    :cond_1
    aput p1, v1, v0

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    if-eqz v2, :cond_5

    iput v0, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v4

    const/4 v1, 0x1

    iget v5, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int v5, v1, v5

    if-eqz v3, :cond_0

    mul-int/lit8 v1, v5, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iput v5, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    :goto_0
    move v1, v0

    :goto_1
    if-eq v1, v5, :cond_1

    iget-object v6, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    const/4 v7, -0x1

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    new-array v1, v5, [I

    iput-object v1, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    new-array v1, v5, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    :cond_2
    :goto_2
    if-eq v0, v2, :cond_5

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/UintMap;->insertNewKey(I)I

    move-result v1

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    iget-object v6, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v7, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v7, v1

    aput v5, v6, v7

    :cond_3
    if-eqz v4, :cond_4

    iget-object v5, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private rehashTable(Z)V
    .locals 9

    const/4 v8, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/UintMap;->power:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/UintMap;->power:I

    :cond_0
    const/4 v0, 0x1

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int v2, v0, v2

    iget-object v3, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v4, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    if-nez v4, :cond_1

    if-nez p1, :cond_1

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    :goto_0
    move v0, v1

    :goto_1
    if-eq v0, v2, :cond_2

    iget-object v5, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    aput v8, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v2, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    mul-int/lit8 v0, v2, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-eqz v5, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    iput v1, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    if-eqz v0, :cond_7

    iput v1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    :goto_2
    if-eqz v0, :cond_7

    aget v2, v3, v1

    if-eq v2, v8, :cond_6

    const/4 v6, -0x2

    if-eq v2, v6, :cond_6

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/UintMap;->insertNewKey(I)I

    move-result v2

    if-eqz v5, :cond_4

    iget-object v6, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    aget-object v7, v5, v1

    aput-object v7, v6, v2

    :cond_4
    if-eqz v4, :cond_5

    iget-object v6, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v7, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v2, v7

    add-int v7, v4, v1

    aget v7, v3, v7

    aput v7, v6, v2

    :cond_5
    add-int/lit8 v0, v0, -0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private static tableLookupStep(III)I
    .locals 1

    mul-int/lit8 v0, p2, 0x2

    rsub-int/lit8 v0, v0, 0x20

    if-ltz v0, :cond_0

    ushr-int v0, p0, v0

    and-int/2addr v0, p1

    or-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    neg-int v0, v0

    ushr-int v0, p1, v0

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v3, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    if-eqz v3, :cond_4

    iget v0, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v4, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    move v6, v2

    move v2, v3

    move v3, v6

    :goto_2
    if-eqz v2, :cond_4

    iget-object v4, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    aget v4, v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    if-eqz v0, :cond_0

    iget-object v4, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v5, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v5, v3

    aget v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int v2, v0, v2

    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    if-eq v0, v2, :cond_0

    iget-object v3, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    if-eq v0, v2, :cond_1

    iget-object v3, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v1, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    iput v1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    iput v1, p0, Lorg/mozilla/javascript/UintMap;->occupiedCount:I

    return-void
.end method

.method public getExistingInt(I)I
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->findIndex(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public getInt(II)I
    .locals 3

    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->findIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v0, v2

    aget p2, v1, v0

    :cond_1
    :goto_0
    return p2

    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getKeys()[I
    .locals 7

    iget-object v2, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    new-array v3, v1, [I

    const/4 v0, 0x0

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_0
    if-eqz v0, :cond_1

    aget v4, v2, v1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, -0x2

    if-eq v4, v5, :cond_0

    add-int/lit8 v0, v0, -0x1

    aput v4, v3, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 2

    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->findIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public has(I)Z
    .locals 1

    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->findIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(II)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/UintMap;->ensureIndex(IZ)I

    move-result v0

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    if-nez v1, :cond_2

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int v1, v2, v1

    iget-object v2, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    array-length v2, v2

    mul-int/lit8 v3, v1, 0x2

    if-eq v2, v3, :cond_1

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    :cond_1
    iput v1, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    :cond_2
    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v0, v2

    aput p2, v1, v0

    return-void
.end method

.method public put(ILjava/lang/Object;)V
    .locals 3

    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/UintMap;->ensureIndex(IZ)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->power:I

    shl-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    aput-object p2, v1, v0

    return-void
.end method

.method public remove(I)V
    .locals 3

    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/UintMap;->findIndex(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    const/4 v2, -0x2

    aput v2, v1, v0

    iget v1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->values:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_1
    iget v1, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/javascript/UintMap;->keys:[I

    iget v2, p0, Lorg/mozilla/javascript/UintMap;->ivaluesShift:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    aput v2, v1, v0

    :cond_2
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/UintMap;->keyCount:I

    return v0
.end method
