.class Lwhiter/script/activity/LogoActivity$100000000;
.super Ljava/util/TimerTask;
.source "LogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwhiter/script/activity/LogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lwhiter/script/activity/LogoActivity;


# direct methods
.method constructor <init>(Lwhiter/script/activity/LogoActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Lwhiter/script/activity/LogoActivity$100000000;->this$0:Lwhiter/script/activity/LogoActivity;

    return-void
.end method

.method static access$0(Lwhiter/script/activity/LogoActivity$100000000;)Lwhiter/script/activity/LogoActivity;
    .locals 1

    iget-object v0, p0, Lwhiter/script/activity/LogoActivity$100000000;->this$0:Lwhiter/script/activity/LogoActivity;

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
    .line 33
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    iget-object v1, p0, Lwhiter/script/activity/LogoActivity$100000000;->this$0:Lwhiter/script/activity/LogoActivity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "whiter.script.activity.MainActivity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :try_start_2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    iget-object v1, p0, Lwhiter/script/activity/LogoActivity$100000000;->this$0:Lwhiter/script/activity/LogoActivity;

    invoke-virtual {v1, v0}, Lwhiter/script/activity/LogoActivity;->startActivity(Landroid/content/Intent;)V

    .line 36
    iget-object v0, p0, Lwhiter/script/activity/LogoActivity$100000000;->this$0:Lwhiter/script/activity/LogoActivity;

    invoke-virtual {v0}, Lwhiter/script/activity/LogoActivity;->finish()V

    .line 40
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 36
    :catch_1
    move-exception v0

    .line 40
    invoke-static {v0}, Lwhiter/script/debug/Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method
