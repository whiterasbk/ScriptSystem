.class Lorg/mozilla/javascript/NativeObject$ValueCollection$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/NativeObject$ValueCollection;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field ids:[Ljava/lang/Object;

.field index:I

.field key:Ljava/lang/Object;

.field final synthetic this$1:Lorg/mozilla/javascript/NativeObject$ValueCollection;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/NativeObject$ValueCollection;)V
    .locals 1

    iput-object p1, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->this$1:Lorg/mozilla/javascript/NativeObject$ValueCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->this$1:Lorg/mozilla/javascript/NativeObject$ValueCollection;

    iget-object v0, v0, Lorg/mozilla/javascript/NativeObject$ValueCollection;->this$0:Lorg/mozilla/javascript/NativeObject;

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeObject;->getIds()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->ids:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->index:I

    iget-object v1, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->ids:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->this$1:Lorg/mozilla/javascript/NativeObject$ValueCollection;

    iget-object v0, v0, Lorg/mozilla/javascript/NativeObject$ValueCollection;->this$0:Lorg/mozilla/javascript/NativeObject;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->ids:[Ljava/lang/Object;

    iget v2, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->index:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->this$1:Lorg/mozilla/javascript/NativeObject$ValueCollection;

    iget-object v0, v0, Lorg/mozilla/javascript/NativeObject$ValueCollection;->this$0:Lorg/mozilla/javascript/NativeObject;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeObject$ValueCollection$1;->key:Ljava/lang/Object;

    return-void
.end method
