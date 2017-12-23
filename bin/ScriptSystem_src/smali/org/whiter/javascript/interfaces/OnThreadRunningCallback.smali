.class public interface Lorg/whiter/javascript/interfaces/OnThreadRunningCallback;
.super Ljava/lang/Object;
.source "OnThreadRunningCallback.java"


# virtual methods
.method public abstract OnScriptStop(Lorg/whiter/javascript/interfaces/Runner$ScriptState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/whiter/javascript/interfaces/Runner$ScriptState;",
            ")V"
        }
    .end annotation
.end method

.method public abstract OnThrow(Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method
