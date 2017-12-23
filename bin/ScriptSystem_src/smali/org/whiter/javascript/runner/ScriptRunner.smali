.class public Lorg/whiter/javascript/runner/ScriptRunner;
.super Lorg/whiter/javascript/runner/BaseScriptRunner;
.source "ScriptRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;,
        Lorg/whiter/javascript/runner/ScriptRunner$ScriptRunnable;
    }
.end annotation


# instance fields
.field private final runThreadDefautlName:Ljava/lang/String;

.field private final runThreadStackSize:I

.field public threadListener:Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/whiter/javascript/params/RunParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lorg/whiter/javascript/runner/BaseScriptRunner;-><init>(Ljava/io/File;Lorg/whiter/javascript/params/RunParams;)V

    const-string v0, "Run-Thread"

    iput-object v0, p0, Lorg/whiter/javascript/runner/ScriptRunner;->runThreadDefautlName:Ljava/lang/String;

    const v0, 0x3f800

    iput v0, p0, Lorg/whiter/javascript/runner/ScriptRunner;->runThreadStackSize:I

    const/4 v0, 0x0

    check-cast v0, Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;

    iput-object v0, p0, Lorg/whiter/javascript/runner/ScriptRunner;->threadListener:Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lorg/whiter/javascript/runner/BaseScriptRunner;-><init>(Ljava/io/InputStream;Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V

    const-string v0, "Run-Thread"

    iput-object v0, p0, Lorg/whiter/javascript/runner/ScriptRunner;->runThreadDefautlName:Ljava/lang/String;

    const v0, 0x3f800

    iput v0, p0, Lorg/whiter/javascript/runner/ScriptRunner;->runThreadStackSize:I

    const/4 v0, 0x0

    check-cast v0, Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;

    iput-object v0, p0, Lorg/whiter/javascript/runner/ScriptRunner;->threadListener:Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lorg/whiter/javascript/runner/BaseScriptRunner;-><init>(Ljava/io/Reader;Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V

    const-string v0, "Run-Thread"

    iput-object v0, p0, Lorg/whiter/javascript/runner/ScriptRunner;->runThreadDefautlName:Ljava/lang/String;

    const v0, 0x3f800

    iput v0, p0, Lorg/whiter/javascript/runner/ScriptRunner;->runThreadStackSize:I

    const/4 v0, 0x0

    check-cast v0, Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;

    iput-object v0, p0, Lorg/whiter/javascript/runner/ScriptRunner;->threadListener:Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/whiter/javascript/runner/BaseScriptRunner;-><init>(Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V

    const-string v0, "Run-Thread"

    iput-object v0, p0, Lorg/whiter/javascript/runner/ScriptRunner;->runThreadDefautlName:Ljava/lang/String;

    const v0, 0x3f800

    iput v0, p0, Lorg/whiter/javascript/runner/ScriptRunner;->runThreadStackSize:I

    const/4 v0, 0x0

    check-cast v0, Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;

    iput-object v0, p0, Lorg/whiter/javascript/runner/ScriptRunner;->threadListener:Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;

    return-void
.end method


# virtual methods
.method public execute()Lorg/whiter/javascript/interfaces/Runner$ScriptState;
    .locals 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->script:Lorg/mozilla/javascript/Script;

    iget-object v1, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->rhino:Lorg/mozilla/javascript/Context;

    iget-object v2, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, v1, v2}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v6

    .line 37
    new-instance v0, Lorg/whiter/javascript/interfaces/Runner$ScriptState;

    iget-object v1, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->rhino:Lorg/mozilla/javascript/Context;

    iget-object v2, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->sourceName:Ljava/lang/String;

    iget-object v3, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->script:Lorg/mozilla/javascript/Script;

    iget-object v4, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->scope:Lorg/mozilla/javascript/Scriptable;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/Thread;

    invoke-direct/range {v0 .. v6}, Lorg/whiter/javascript/interfaces/Runner$ScriptState;-><init>(Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Thread;Ljava/lang/Object;)V

    return-object v0
.end method

.method public executeWithThread()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 85
    const-string v0, "Run-Thread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    const v2, 0x3f800

    invoke-virtual {p0, v0, v1, v2}, Lorg/whiter/javascript/runner/ScriptRunner;->executeWithThread(Ljava/lang/String;Ljava/lang/ThreadGroup;I)V

    return-void
.end method

.method public executeWithThread(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 80
    const-string v0, "Run-Thread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/whiter/javascript/runner/ScriptRunner;->executeWithThread(Ljava/lang/String;Ljava/lang/ThreadGroup;I)V

    return-void
.end method

.method public executeWithThread(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    const v1, 0x3f800

    invoke-virtual {p0, p1, v0, v1}, Lorg/whiter/javascript/runner/ScriptRunner;->executeWithThread(Ljava/lang/String;Ljava/lang/ThreadGroup;I)V

    return-void
.end method

.method public executeWithThread(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/whiter/javascript/runner/ScriptRunner;->executeWithThread(Ljava/lang/String;Ljava/lang/ThreadGroup;I)V

    return-void
.end method

.method public executeWithThread(Ljava/lang/String;Ljava/lang/ThreadGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ThreadGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    const v0, 0x3f800

    invoke-virtual {p0, p1, p2, v0}, Lorg/whiter/javascript/runner/ScriptRunner;->executeWithThread(Ljava/lang/String;Ljava/lang/ThreadGroup;I)V

    return-void
.end method

.method public executeWithThread(Ljava/lang/String;Ljava/lang/ThreadGroup;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ThreadGroup;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptRunner;->threadListener:Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you should set \'ThreadListener\' before you call this method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lorg/whiter/javascript/runner/ScriptRunner$ScriptRunnable;

    invoke-direct {v2, p0}, Lorg/whiter/javascript/runner/ScriptRunner$ScriptRunnable;-><init>(Lorg/whiter/javascript/runner/ScriptRunner;)V

    int-to-long v4, p3

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public executeWithThread(Ljava/lang/ThreadGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    const-string v0, "Run-Thread"

    const v1, 0x3f800

    invoke-virtual {p0, v0, p1, v1}, Lorg/whiter/javascript/runner/ScriptRunner;->executeWithThread(Ljava/lang/String;Ljava/lang/ThreadGroup;I)V

    return-void
.end method

.method public executeWithThread(Ljava/lang/ThreadGroup;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadGroup;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 60
    const-string v0, "Run-Thread"

    invoke-virtual {p0, v0, p1, p2}, Lorg/whiter/javascript/runner/ScriptRunner;->executeWithThread(Ljava/lang/String;Ljava/lang/ThreadGroup;I)V

    return-void
.end method

.method public load()V
    .locals 5
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

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 25
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->rhino:Lorg/mozilla/javascript/Context;

    .line 26
    iget-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->rhino:Lorg/mozilla/javascript/Context;

    invoke-static {v0}, Lorg/whiter/javascript/runner/RunnerUtils;->setupContext(Lorg/mozilla/javascript/Context;)V

    .line 27
    iget-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->rhino:Lorg/mozilla/javascript/Context;

    iget-object v1, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->console:Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v0, v1, v4}, Lorg/mozilla/javascript/Context;->initStandardObjects(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 28
    iget-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->scope:Lorg/mozilla/javascript/Scriptable;

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    iget-object v1, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->console:Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ScriptableObject;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/whiter/javascript/runner/RunnerUtils;->getAllJsFunctions(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->console:Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ScriptableObject;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineFunctionProperties([Ljava/lang/String;Ljava/lang/Class;I)V

    .line 29
    invoke-virtual {p0}, Lorg/whiter/javascript/runner/ScriptRunner;->initClasses()V

    .line 30
    iget-object v1, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->rhino:Lorg/mozilla/javascript/Context;

    iget-object v2, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->reader:Ljava/io/Reader;

    iget-object v3, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->sourceName:Ljava/lang/String;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/mozilla/javascript/Context;->compileReader(Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object v0

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->script:Lorg/mozilla/javascript/Script;

    return-void
.end method

.method public setThreadListener(Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lorg/whiter/javascript/runner/ScriptRunner;->threadListener:Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;

    return-void
.end method
