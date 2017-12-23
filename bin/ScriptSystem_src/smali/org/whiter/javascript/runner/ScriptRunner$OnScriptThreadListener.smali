.class public interface abstract Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;
.super Ljava/lang/Object;
.source "ScriptRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/whiter/javascript/runner/ScriptRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScriptThreadListener"
.end annotation


# virtual methods
.method public abstract onException(Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRun(Lorg/mozilla/javascript/Context;Lorg/whiter/javascript/interfaces/Runner$ScriptState;Lorg/whiter/javascript/runner/ScriptRunner;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/whiter/javascript/interfaces/Runner$ScriptState;",
            "Lorg/whiter/javascript/runner/ScriptRunner;",
            ")V"
        }
    .end annotation
.end method
