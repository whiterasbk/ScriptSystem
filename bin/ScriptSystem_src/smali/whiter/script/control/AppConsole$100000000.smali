.class Lwhiter/script/control/AppConsole$100000000;
.super Ljava/lang/Object;
.source "AppConsole.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwhiter/script/control/AppConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lwhiter/script/control/AppConsole;

.field private final val$msg:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lwhiter/script/control/AppConsole;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwhiter/script/control/AppConsole$100000000;->this$0:Lwhiter/script/control/AppConsole;

    iput-object p2, p0, Lwhiter/script/control/AppConsole$100000000;->val$msg:Ljava/lang/Object;

    return-void
.end method

.method static access$0(Lwhiter/script/control/AppConsole$100000000;)Lwhiter/script/control/AppConsole;
    .locals 1

    iget-object v0, p0, Lwhiter/script/control/AppConsole$100000000;->this$0:Lwhiter/script/control/AppConsole;

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
    .line 30
    iget-object v0, p0, Lwhiter/script/control/AppConsole$100000000;->this$0:Lwhiter/script/control/AppConsole;

    # getter for: Lwhiter/script/control/AppConsole;->ctx:Landroid/app/Activity;
    invoke-static {v0}, Lwhiter/script/control/AppConsole;->access$L1000000(Lwhiter/script/control/AppConsole;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lwhiter/script/control/AppConsole$100000000;->val$msg:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
