.class public Lorg/mozilla/javascript/ObjToIntMap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/ObjToIntMap$Iterator;
    }
.end annotation


# static fields
.field private static final A:I = -0x61c88647

.field private static final DELETED:Ljava/lang/Object;

.field private static final check:Z = false

.field static final serialVersionUID:J = -0x1567117278d454baL


# instance fields
.field private keyCount:I

.field private transient keys:[Ljava/lang/Object;

.field private transient occupiedCount:I

.field private power:I

.field private transient values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

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
    iput v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    return-object v0
.end method

.method private ensureIndex(Ljava/lang/Object;)I
    .locals 10

    const/4 v0, -0x1

    const/4 v9, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    if-eqz v1, :cond_a

    const v1, -0x61c88647

    mul-int v3, v2, v1

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    rsub-int/lit8 v1, v1, 0x20

    ushr-int v1, v3, v1

    iget-object v4, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-eqz v4, :cond_4

    iget v5, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int v5, v9, v5

    if-eq v4, p1, :cond_0

    iget-object v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    add-int v7, v5, v1

    aget v6, v6, v7

    if-ne v6, v2, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v6, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    if-ne v4, v6, :cond_2

    move v0, v1

    :cond_2
    add-int/lit8 v4, v5, -0x1

    iget v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    invoke-static {v3, v4, v6}, Lorg/mozilla/javascript/ObjToIntMap;->tableLookupStep(III)I

    move-result v3

    :cond_3
    :goto_1
    add-int/2addr v1, v3

    and-int/2addr v1, v4

    iget-object v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v6, v6, v1

    if-nez v6, :cond_5

    :cond_4
    :goto_2
    if-ltz v0, :cond_7

    :goto_3
    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    iget v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int v3, v9, v3

    add-int/2addr v3, v0

    aput v2, v1, v3

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    move v1, v0

    goto :goto_0

    :cond_5
    if-eq v6, p1, :cond_0

    iget-object v7, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    add-int v8, v5, v1

    aget v7, v7, v8

    if-ne v7, v2, :cond_6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_6
    sget-object v7, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    if-ne v6, v7, :cond_3

    if-gez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    mul-int/lit8 v0, v0, 0x4

    iget v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int v3, v9, v3

    mul-int/lit8 v3, v3, 0x3

    if-lt v0, v3, :cond_9

    :cond_8
    invoke-direct {p0}, Lorg/mozilla/javascript/ObjToIntMap;->rehashTable()V

    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/ObjToIntMap;->insertNewKey(Ljava/lang/Object;I)I

    move-result v1

    goto :goto_0

    :cond_9
    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    move v0, v1

    goto :goto_3

    :cond_a
    move v1, v0

    goto :goto_2
.end method

.method private findIndex(Ljava/lang/Object;)I
    .locals 8

    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v0, -0x61c88647

    mul-int v2, v1, v0

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    rsub-int/lit8 v0, v0, 0x20

    ushr-int v0, v2, v0

    iget-object v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    iget v5, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int/2addr v4, v5

    if-eq v3, p1, :cond_0

    iget-object v5, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    add-int v6, v4, v0

    aget v5, v5, v6

    if-ne v5, v1, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v3, v4, -0x1

    iget v5, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    invoke-static {v2, v3, v5}, Lorg/mozilla/javascript/ObjToIntMap;->tableLookupStep(III)I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    and-int/2addr v0, v3

    iget-object v5, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v5, v5, v0

    if-nez v5, :cond_4

    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    if-eq v5, p1, :cond_0

    iget-object v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    add-int v7, v4, v0

    aget v6, v6, v7

    if-ne v6, v1, :cond_2

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0
.end method

.method private insertNewKey(Ljava/lang/Object;I)I
    .locals 5

    const v0, -0x61c88647

    mul-int v1, p2, v0

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    rsub-int/lit8 v0, v0, 0x20

    ushr-int v0, v1, v0

    const/4 v2, 0x1

    iget v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int/2addr v2, v3

    iget-object v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    iget v4, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    invoke-static {v1, v3, v4}, Lorg/mozilla/javascript/ObjToIntMap;->tableLookupStep(III)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    and-int/2addr v0, v3

    iget-object v4, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v0

    if-nez v4, :cond_0

    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    add-int/2addr v2, v0

    aput p2, v1, v2

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    if-eqz v1, :cond_0

    iput v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    const/4 v2, 0x1

    iget v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int/2addr v2, v3

    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    :goto_0
    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/ObjToIntMap;->insertNewKey(Ljava/lang/Object;I)I

    move-result v2

    iget-object v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private rehashTable()V
    .locals 9

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    if-nez v1, :cond_1

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int v0, v3, v0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    if-lt v1, v2, :cond_2

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    :cond_2
    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->power:I

    shl-int v1, v3, v1

    iget-object v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    array-length v4, v2

    new-array v5, v1, [Ljava/lang/Object;

    iput-object v5, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    iput v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    iput v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    move v8, v0

    move v0, v1

    move v1, v8

    :goto_0
    if-eqz v0, :cond_0

    aget-object v5, v2, v1

    if-eqz v5, :cond_3

    sget-object v6, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    if-eq v5, v6, :cond_3

    add-int v6, v4, v1

    aget v6, v3, v6

    invoke-direct {p0, v5, v6}, Lorg/mozilla/javascript/ObjToIntMap;->insertNewKey(Ljava/lang/Object;I)I

    move-result v5

    iget-object v6, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aget v7, v3, v1

    aput v7, v6, v5

    add-int/lit8 v0, v0, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    const/4 v0, 0x0

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    sget-object v3, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0

    :cond_0
    iput v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    iput v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->occupiedCount:I

    return-void
.end method

.method public get(Ljava/lang/Object;I)I
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->findIndex(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aget p2, v1, v0

    :cond_1
    return p2
.end method

.method public getExisting(Ljava/lang/Object;)I
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->findIndex(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aget v0, v1, v0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeys([Ljava/lang/Object;I)V
    .locals 5

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    const/4 v0, 0x0

    move v3, v0

    move v2, p2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    sget-object v4, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    if-eq v0, v4, :cond_2

    sget-object v4, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    :cond_0
    aput-object v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, -0x1

    move v1, v2

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public getKeys()[Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->getKeys([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public has(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->findIndex(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final initIterator(Lorg/mozilla/javascript/ObjToIntMap$Iterator;)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    iget v2, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->init([Ljava/lang/Object;[II)V

    return-void
.end method

.method public intern(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    :goto_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->ensureIndex(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aput v1, v3, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newIterator()Lorg/mozilla/javascript/ObjToIntMap$Iterator;
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;-><init>(Lorg/mozilla/javascript/ObjToIntMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;I)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->ensureIndex(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->values:[I

    aput p2, v1, v0

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->findIndex(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap;->keys:[Ljava/lang/Object;

    sget-object v2, Lorg/mozilla/javascript/ObjToIntMap;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap;->keyCount:I

    return v0
.end method
