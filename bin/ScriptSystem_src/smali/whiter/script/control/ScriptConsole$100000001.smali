.class Lwhiter/script/control/ScriptConsole$100000001;
.super Ljava/lang/Object;
.source "ScriptConsole.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwhiter/script/control/ScriptConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lwhiter/script/control/ScriptConsole;

.field private final val$msg:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lwhiter/script/control/ScriptConsole;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwhiter/script/control/ScriptConsole$100000001;->this$0:Lwhiter/script/control/ScriptConsole;

    iput-object p2, p0, Lwhiter/script/control/ScriptConsole$100000001;->val$msg:Ljava/lang/Object;

    return-void
.end method

.method static access$0(Lwhiter/script/control/ScriptConsole$100000001;)Lwhiter/script/control/ScriptConsole;
    .locals 1

    iget-object v0, p0, Lwhiter/script/control/ScriptConsole$100000001;->this$0:Lwhiter/script/control/ScriptConsole;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lwhiter/script/control/ScriptConsole$100000001;->this$0:Lwhiter/script/control/ScriptConsole;

    # getter for: Lwhiter/script/control/ScriptConsole;->consoleView:Lwhiter/script/view/ConsoleView;
    invoke-static {v0}, Lwhiter/script/control/ScriptConsole;->access$L1000003(Lwhiter/script/control/ScriptConsole;)Lwhiter/script/view/ConsoleView;

    move-result-object v0

    iget-object v1, p0, Lwhiter/script/control/ScriptConsole$100000001;->this$0:Lwhiter/script/control/ScriptConsole;

    # getter for: Lwhiter/script/control/ScriptConsole;->scriptName:Ljava/lang/String;
    invoke-static {v1}, Lwhiter/script/control/ScriptConsole;->access$L1000002(Lwhiter/script/control/ScriptConsole;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lwhiter/script/control/ScriptConsole$100000001;->val$msg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lwhiter/script/view/ConsoleView;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
