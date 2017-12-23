.class public Lorg/whiter/javascript/params/CodeParams;
.super Ljava/lang/Object;
.source "CodeParams.java"


# instance fields
.field private code:Ljava/lang/String;

.field private context:Lorg/mozilla/javascript/Context;

.field private defobject:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/mozilla/javascript/Scriptable;",
            ">;"
        }
    .end annotation
.end field

.field private hostObject:Lorg/mozilla/javascript/ScriptableObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/whiter/javascript/params/CodeParams;->code:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/whiter/javascript/params/CodeParams;->defobject:Ljava/lang/Class;

    check-cast v1, Lorg/mozilla/javascript/Context;

    iput-object v1, p0, Lorg/whiter/javascript/params/CodeParams;->context:Lorg/mozilla/javascript/Context;

    new-instance v0, Lorg/whiter/javascript/objects/Console;

    invoke-direct {v0}, Lorg/whiter/javascript/objects/Console;-><init>()V

    iput-object v0, p0, Lorg/whiter/javascript/params/CodeParams;->hostObject:Lorg/mozilla/javascript/ScriptableObject;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/whiter/javascript/params/CodeParams;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Lorg/mozilla/javascript/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/whiter/javascript/params/CodeParams;->context:Lorg/mozilla/javascript/Context;

    return-object v0
.end method

.method public getDefobject()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/mozilla/javascript/Scriptable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lorg/whiter/javascript/params/CodeParams;->defobject:Ljava/lang/Class;

    return-object v0
.end method

.method public getHostObject()Lorg/mozilla/javascript/ScriptableObject;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/whiter/javascript/params/CodeParams;->hostObject:Lorg/mozilla/javascript/ScriptableObject;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lorg/whiter/javascript/params/CodeParams;->code:Ljava/lang/String;

    return-void
.end method

.method public setContext(Lorg/mozilla/javascript/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lorg/whiter/javascript/params/CodeParams;->context:Lorg/mozilla/javascript/Context;

    return-void
.end method

.method public setDefobject(Ljava/lang/Class;)V
    .locals 0
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
    iput-object p1, p0, Lorg/whiter/javascript/params/CodeParams;->defobject:Ljava/lang/Class;

    return-void
.end method

.method public setHostObject(Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/ScriptableObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lorg/whiter/javascript/params/CodeParams;->hostObject:Lorg/mozilla/javascript/ScriptableObject;

    return-void
.end method
