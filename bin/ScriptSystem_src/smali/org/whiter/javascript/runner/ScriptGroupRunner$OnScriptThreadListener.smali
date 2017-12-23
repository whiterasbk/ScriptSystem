.class public interface abstract Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;
.super Ljava/lang/Object;
.source "ScriptGroupRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/whiter/javascript/runner/ScriptGroupRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScriptThreadListener"
.end annotation


# virtual methods
.method public abstract onException(Ljava/lang/Throwable;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onRun(Lorg/mozilla/javascript/Context;ILorg/whiter/javascript/interfaces/Runner$ScriptState;Lorg/whiter/javascript/runner/ScriptRunner;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "I",
            "Lorg/whiter/javascript/interfaces/Runner$ScriptState;",
            "Lorg/whiter/javascript/runner/ScriptRunner;",
            ")V"
        }
    .end annotation
.end method
