.class Lwhiter/script/activity/MainActivity$100000000;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwhiter/script/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lwhiter/script/activity/MainActivity;

.field private final val$scriptPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lwhiter/script/activity/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwhiter/script/activity/MainActivity$100000000;->this$0:Lwhiter/script/activity/MainActivity;

    iput-object p2, p0, Lwhiter/script/activity/MainActivity$100000000;->val$scriptPath:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lwhiter/script/activity/MainActivity$100000000;)Lwhiter/script/activity/MainActivity;
    .locals 1

    iget-object v0, p0, Lwhiter/script/activity/MainActivity$100000000;->this$0:Lwhiter/script/activity/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 52
    if-nez p2, :cond_1

    .line 54
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lwhiter/script/activity/MainActivity$100000000;->this$0:Lwhiter/script/activity/MainActivity;

    :try_start_0
    const-string v2, "whiter.script.activity.ConsoleActivity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v1, "JAVASCRIPT_PATH"

    iget-object v2, p0, Lwhiter/script/activity/MainActivity$100000000;->val$scriptPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "JAVASCRIPT_TYPE"

    const-string v2, "JAVASCRIPT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lwhiter/script/activity/MainActivity$100000000;->this$0:Lwhiter/script/activity/MainActivity;

    invoke-virtual {v1, v0}, Lwhiter/script/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0
.end method
