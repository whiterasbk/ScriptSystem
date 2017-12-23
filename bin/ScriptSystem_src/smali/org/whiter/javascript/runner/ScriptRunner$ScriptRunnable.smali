.class public Lorg/whiter/javascript/runner/ScriptRunner$ScriptRunnable;
.super Ljava/lang/Object;
.source "ScriptRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/whiter/javascript/runner/ScriptRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x21
    name = "ScriptRunnable"
.end annotation


# instance fields
.field private final this$0:Lorg/whiter/javascript/runner/ScriptRunner;


# direct methods
.method public constructor <init>(Lorg/whiter/javascript/runner/ScriptRunner;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/whiter/javascript/runner/ScriptRunner$ScriptRunnable;->this$0:Lorg/whiter/javascript/runner/ScriptRunner;

    return-void
.end method

.method static access$0(Lorg/whiter/javascript/runner/ScriptRunner$ScriptRunnable;)Lorg/whiter/javascript/runner/ScriptRunner;
    .locals 1

    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptRunner$ScriptRunnable;->this$0:Lorg/whiter/javascript/runner/ScriptRunner;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 100
    :try_start_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lorg/whiter/javascript/runner/ScriptRunner$ScriptRunnable;->this$0:Lorg/whiter/javascript/runner/ScriptRunner;

    invoke-virtual {v1}, Lorg/whiter/javascript/runner/ScriptRunner;->execute()Lorg/whiter/javascript/interfaces/Runner$ScriptState;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lorg/whiter/javascript/runner/ScriptRunner$ScriptRunnable;->this$0:Lorg/whiter/javascript/runner/ScriptRunner;

    iget-object v2, v2, Lorg/whiter/javascript/runner/ScriptRunner;->threadListener:Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;

    iget-object v3, p0, Lorg/whiter/javascript/runner/ScriptRunner$ScriptRunnable;->this$0:Lorg/whiter/javascript/runner/ScriptRunner;

    invoke-interface {v2, v0, v1, v3}, Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;->onRun(Lorg/mozilla/javascript/Context;Lorg/whiter/javascript/interfaces/Runner$ScriptState;Lorg/whiter/javascript/runner/ScriptRunner;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 104
    iget-object v1, p0, Lorg/whiter/javascript/runner/ScriptRunner$ScriptRunnable;->this$0:Lorg/whiter/javascript/runner/ScriptRunner;

    iget-object v1, v1, Lorg/whiter/javascript/runner/ScriptRunner;->threadListener:Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;

    invoke-interface {v1, v0}, Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;->onException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
