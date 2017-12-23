.class public Lorg/whiter/javascript/runner/ScriptGroupRunner$Listeners;
.super Ljava/lang/Object;
.source "ScriptGroupRunner.java"

# interfaces
.implements Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/whiter/javascript/runner/ScriptGroupRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x24
    name = "Listeners"
.end annotation


# instance fields
.field private count:I

.field private final this$0:Lorg/whiter/javascript/runner/ScriptGroupRunner;


# direct methods
.method public constructor <init>(Lorg/whiter/javascript/runner/ScriptGroupRunner;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/whiter/javascript/runner/ScriptGroupRunner$Listeners;->this$0:Lorg/whiter/javascript/runner/ScriptGroupRunner;

    const/4 v0, 0x0

    iput v0, p0, Lorg/whiter/javascript/runner/ScriptGroupRunner$Listeners;->count:I

    return-void
.end method

.method static access$0(Lorg/whiter/javascript/runner/ScriptGroupRunner$Listeners;)Lorg/whiter/javascript/runner/ScriptGroupRunner;
    .locals 1

    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroupRunner$Listeners;->this$0:Lorg/whiter/javascript/runner/ScriptGroupRunner;

    return-object v0
.end method


# virtual methods
.method public onException(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroupRunner$Listeners;->this$0:Lorg/whiter/javascript/runner/ScriptGroupRunner;

    # getter for: Lorg/whiter/javascript/runner/ScriptGroupRunner;->threadListener:Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;
    invoke-static {v0}, Lorg/whiter/javascript/runner/ScriptGroupRunner;->access$L1000000(Lorg/whiter/javascript/runner/ScriptGroupRunner;)Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;

    move-result-object v0

    iget v1, p0, Lorg/whiter/javascript/runner/ScriptGroupRunner$Listeners;->count:I

    invoke-interface {v0, p1, v1}, Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;->onException(Ljava/lang/Throwable;I)V

    return-void
.end method

.method public onRun(Lorg/mozilla/javascript/Context;Lorg/whiter/javascript/interfaces/Runner$ScriptState;Lorg/whiter/javascript/runner/ScriptRunner;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/whiter/javascript/interfaces/Runner$ScriptState;",
            "Lorg/whiter/javascript/runner/ScriptRunner;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroupRunner$Listeners;->this$0:Lorg/whiter/javascript/runner/ScriptGroupRunner;

    # getter for: Lorg/whiter/javascript/runner/ScriptGroupRunner;->threadListener:Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;
    invoke-static {v0}, Lorg/whiter/javascript/runner/ScriptGroupRunner;->access$L1000000(Lorg/whiter/javascript/runner/ScriptGroupRunner;)Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;

    move-result-object v0

    iget v1, p0, Lorg/whiter/javascript/runner/ScriptGroupRunner$Listeners;->count:I

    invoke-interface {v0, p1, v1, p2, p3}, Lorg/whiter/javascript/runner/ScriptGroupRunner$OnScriptThreadListener;->onRun(Lorg/mozilla/javascript/Context;ILorg/whiter/javascript/interfaces/Runner$ScriptState;Lorg/whiter/javascript/runner/ScriptRunner;)V

    .line 77
    iget v0, p0, Lorg/whiter/javascript/runner/ScriptGroupRunner$Listeners;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/whiter/javascript/runner/ScriptGroupRunner$Listeners;->count:I

    return-void
.end method
