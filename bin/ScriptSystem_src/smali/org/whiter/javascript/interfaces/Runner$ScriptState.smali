.class public Lorg/whiter/javascript/interfaces/Runner$ScriptState;
.super Ljava/lang/Object;
.source "Runner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/whiter/javascript/interfaces/Runner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x29
    name = "ScriptState"
.end annotation


# instance fields
.field protected name:Ljava/lang/String;

.field protected result:Ljava/lang/Object;

.field protected rhino:Lorg/mozilla/javascript/Context;

.field protected scope:Lorg/mozilla/javascript/Scriptable;

.field protected script:Lorg/mozilla/javascript/Script;

.field protected thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 33
    const/4 v5, 0x0

    check-cast v5, Ljava/lang/Thread;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/whiter/javascript/interfaces/Runner$ScriptState;-><init>(Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Thread;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Thread;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Context;

    iput-object v0, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->rhino:Lorg/mozilla/javascript/Context;

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Script;

    iput-object v0, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->script:Lorg/mozilla/javascript/Script;

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    iput-object v0, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v0, v1

    check-cast v0, Ljava/lang/Object;

    iput-object v0, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->result:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/Thread;

    iput-object v0, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->thread:Ljava/lang/Thread;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->name:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->rhino:Lorg/mozilla/javascript/Context;

    .line 24
    iput-object p3, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->script:Lorg/mozilla/javascript/Script;

    .line 25
    iput-object p4, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 26
    iput-object p6, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->result:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->name:Ljava/lang/String;

    .line 28
    if-nez p5, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p5

    :cond_0
    iput-object p5, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->thread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getRhino()Lorg/mozilla/javascript/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->rhino:Lorg/mozilla/javascript/Context;

    return-object v0
.end method

.method public getScope()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->scope:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public getScript()Lorg/mozilla/javascript/Script;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->script:Lorg/mozilla/javascript/Script;

    return-object v0
.end method

.method public getScriptName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Context:<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p0}, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->getRhino()Lorg/mozilla/javascript/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ">Scope:<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p0}, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ">Script:<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->getScript()Lorg/mozilla/javascript/Script;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">Thread:<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ">Result:<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/whiter/javascript/interfaces/Runner$ScriptState;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
