.class final Lorg/mozilla/javascript/Kit$ComplexKey;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Kit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComplexKey"
.end annotation


# instance fields
.field private hash:I

.field private key1:Ljava/lang/Object;

.field private key2:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/Kit$ComplexKey;->key1:Ljava/lang/Object;

    iput-object p2, p0, Lorg/mozilla/javascript/Kit$ComplexKey;->key2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/mozilla/javascript/Kit$ComplexKey;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/mozilla/javascript/Kit$ComplexKey;

    iget-object v1, p0, Lorg/mozilla/javascript/Kit$ComplexKey;->key1:Ljava/lang/Object;

    iget-object v2, p1, Lorg/mozilla/javascript/Kit$ComplexKey;->key1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/Kit$ComplexKey;->key2:Ljava/lang/Object;

    iget-object v2, p1, Lorg/mozilla/javascript/Kit$ComplexKey;->key2:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/Kit$ComplexKey;->hash:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Kit$ComplexKey;->key1:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Kit$ComplexKey;->key2:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/Kit$ComplexKey;->hash:I

    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/Kit$ComplexKey;->hash:I

    return v0
.end method
