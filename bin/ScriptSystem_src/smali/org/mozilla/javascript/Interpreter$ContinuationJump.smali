.class final Lorg/mozilla/javascript/Interpreter$ContinuationJump;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Interpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContinuationJump"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x6ab05607ef7f8517L


# instance fields
.field branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

.field capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

.field result:Ljava/lang/Object;

.field resultDbl:D


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeContinuation;->getImplementation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    iput-object v0, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    iget v2, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_4

    if-gez v0, :cond_3

    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    neg-int v0, v0

    move-object v3, v1

    move-object v1, p2

    move-object p2, v3

    :cond_3
    iget-object v1, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_3

    iget v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    iget v2, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    if-eq v0, v2, :cond_4

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_4
    :goto_1
    if-eq v1, p2, :cond_5

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_1

    :cond_5
    iput-object v1, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-boolean v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_0
.end method
