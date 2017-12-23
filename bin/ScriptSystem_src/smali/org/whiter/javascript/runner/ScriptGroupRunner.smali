.class public Lorg/whiter/javascript/runner/ScriptGroupRunner;
.super Lorg/whiter/javascript/runner/ScriptGroup;
.source "ScriptGroupRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;,
        Lorg/whiter/javascript/runner/ScriptGroupRunner$Listeners;
    }
.end annotation


# instance fields
.field private threadListener:Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;


# direct methods
.method public constructor <init>(Lorg/whiter/javascript/params/RunParams;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lorg/whiter/javascript/runner/ScriptGroup;-><init>(Lorg/whiter/javascript/params/RunParams;)V

    const/4 v0, 0x0

    check-cast v0, Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;

    iput-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroupRunner;->threadListener:Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;

    return-void
.end method

.method static synthetic access$L1000000(Lorg/whiter/javascript/runner/ScriptGroupRunner;)Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;
    .locals 1

    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroupRunner;->threadListener:Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;

    return-object v0
.end method

.method static synthetic access$S1000000(Lorg/whiter/javascript/runner/ScriptGroupRunner;Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;)V
    .locals 0

    iput-object p1, p0, Lorg/whiter/javascript/runner/ScriptGroupRunner;->threadListener:Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;

    return-void
.end method


# virtual methods
.method public execute()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/whiter/javascript/interfaces/Runner$ScriptState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroup;->scriptRunners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 40
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    return-object v1

    .line 42
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/whiter/javascript/runner/ScriptRunner;

    .line 43
    invoke-virtual {v0}, Lorg/whiter/javascript/runner/ScriptRunner;->execute()Lorg/whiter/javascript/interfaces/Runner$ScriptState;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public executeWithThread()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v1, Lorg/whiter/javascript/runner/ScriptGroupRunner$Listeners;

    invoke-direct {v1, p0}, Lorg/whiter/javascript/runner/ScriptGroupRunner$Listeners;-><init>(Lorg/whiter/javascript/runner/ScriptGroupRunner;)V

    .line 51
    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroupRunner;->threadListener:Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you should set \'ThreadListener\' before you call this method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroup;->scriptRunners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 55
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 57
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/whiter/javascript/runner/ScriptRunner;

    .line 58
    invoke-virtual {v0, v1}, Lorg/whiter/javascript/runner/ScriptRunner;->setThreadListener(Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;)V

    .line 59
    invoke-virtual {v0}, Lorg/whiter/javascript/runner/ScriptRunner;->executeWithThread()V

    goto :goto_0
.end method

.method public load()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/whiter/javascript/runner/ScriptGroupRunner;->initScriptRunners()V

    .line 28
    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroup;->scriptRunners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/whiter/javascript/runner/ScriptRunner;

    .line 32
    invoke-virtual {v0}, Lorg/whiter/javascript/runner/ScriptRunner;->load()V

    goto :goto_0
.end method

.method public setThreadListener(Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    iput-object p1, p0, Lorg/whiter/javascript/runner/ScriptGroupRunner;->threadListener:Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;

    return-void
.end method
