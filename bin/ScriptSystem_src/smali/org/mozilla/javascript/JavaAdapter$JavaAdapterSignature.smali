.class Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/JavaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JavaAdapterSignature"
.end annotation


# instance fields
.field interfaces:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field names:Lorg/mozilla/javascript/ObjToIntMap;

.field superClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;Lorg/mozilla/javascript/ObjToIntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/mozilla/javascript/ObjToIntMap;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->superClass:Ljava/lang/Class;

    iput-object p2, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->interfaces:[Ljava/lang/Class;

    iput-object p3, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->names:Lorg/mozilla/javascript/ObjToIntMap;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;

    iget-object v0, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->superClass:Ljava/lang/Class;

    iget-object v2, p1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->superClass:Ljava/lang/Class;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->interfaces:[Ljava/lang/Class;

    iget-object v2, p1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->interfaces:[Ljava/lang/Class;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->interfaces:[Ljava/lang/Class;

    array-length v0, v0

    iget-object v2, p1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->interfaces:[Ljava/lang/Class;

    array-length v2, v2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->interfaces:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->interfaces:[Ljava/lang/Class;

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->interfaces:[Ljava/lang/Class;

    aget-object v3, v3, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->names:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v0

    iget-object v2, p1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->names:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    new-instance v2, Lorg/mozilla/javascript/ObjToIntMap$Iterator;

    iget-object v0, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->names:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v2, v0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;-><init>(Lorg/mozilla/javascript/ObjToIntMap;)V

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->start()V

    :goto_2
    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->done()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getValue()I

    move-result v3

    iget-object v4, p1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->names:Lorg/mozilla/javascript/ObjToIntMap;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v0, v5}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->next()V

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->superClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->interfaces:[Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;->names:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
