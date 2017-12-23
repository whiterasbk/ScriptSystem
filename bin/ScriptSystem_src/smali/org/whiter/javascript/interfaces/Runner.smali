.class public interface Lorg/whiter/javascript/interfaces/Runner;
.super Ljava/lang/Object;
.source "Runner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/whiter/javascript/interfaces/Runner$ScriptState;
    }
.end annotation


# virtual methods
.method public abstract execute()Lorg/whiter/javascript/interfaces/Runner$ScriptState;
.end method

.method public abstract load()V
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
.end method
