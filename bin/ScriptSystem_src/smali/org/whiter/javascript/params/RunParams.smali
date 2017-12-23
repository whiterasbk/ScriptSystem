.class public Lorg/whiter/javascript/params/RunParams;
.super Ljava/lang/Object;
.source "RunParams.java"


# instance fields
.field private Console:Lorg/mozilla/javascript/ScriptableObject;

.field private defindClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/mozilla/javascript/Scriptable;",
            ">;>;"
        }
    .end annotation
.end field

.field private defindFunctions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/mozilla/javascript/ScriptableObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private defindProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/whiter/javascript/params/RunParams;->defindClasses:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/whiter/javascript/params/RunParams;->defindFunctions:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/whiter/javascript/params/RunParams;->defindProperties:Ljava/util/Map;

    const/4 v0, 0x0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    iput-object v0, p0, Lorg/whiter/javascript/params/RunParams;->Console:Lorg/mozilla/javascript/ScriptableObject;

    return-void
.end method


# virtual methods
.method public addClasses(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/mozilla/javascript/Scriptable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lorg/whiter/javascript/params/RunParams;->defindClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFunctions(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/mozilla/javascript/ScriptableObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lorg/whiter/javascript/params/RunParams;->defindFunctions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addProperties(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lorg/whiter/javascript/params/RunParams;->defindProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getConsole()Lorg/mozilla/javascript/ScriptableObject;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/whiter/javascript/params/RunParams;->Console:Lorg/mozilla/javascript/ScriptableObject;

    return-object v0
.end method

.method public getDefindClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/mozilla/javascript/Scriptable;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lorg/whiter/javascript/params/RunParams;->defindClasses:Ljava/util/List;

    return-object v0
.end method

.method public getDefindFunctions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/mozilla/javascript/ScriptableObject;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lorg/whiter/javascript/params/RunParams;->defindFunctions:Ljava/util/List;

    return-object v0
.end method

.method public getDefindProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/whiter/javascript/params/RunParams;->defindProperties:Ljava/util/Map;

    return-object v0
.end method

.method public setConsole(Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/ScriptableObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lorg/whiter/javascript/params/RunParams;->Console:Lorg/mozilla/javascript/ScriptableObject;

    return-void
.end method
