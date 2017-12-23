.class public Lwhiter/script/activity/ConsoleActivity;
.super Lwhiter/script/base/BaseActivity;
.source "ConsoleActivity.java"


# instance fields
.field protected layout:Lwhiter/script/view/ConsoleLayout;

.field protected runParams:Lorg/whiter/javascript/params/RunParams;

.field protected runner:Lorg/whiter/javascript/runner/ScriptRunner;

.field protected view:Lwhiter/script/view/ConsoleView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lwhiter/script/base/BaseActivity;-><init>()V

    move-object v0, v1

    check-cast v0, Lwhiter/script/view/ConsoleLayout;

    iput-object v0, p0, Lwhiter/script/activity/ConsoleActivity;->layout:Lwhiter/script/view/ConsoleLayout;

    move-object v0, v1

    check-cast v0, Lwhiter/script/view/ConsoleView;

    iput-object v0, p0, Lwhiter/script/activity/ConsoleActivity;->view:Lwhiter/script/view/ConsoleView;

    move-object v0, v1

    check-cast v0, Lorg/whiter/javascript/runner/ScriptRunner;

    iput-object v0, p0, Lwhiter/script/activity/ConsoleActivity;->runner:Lorg/whiter/javascript/runner/ScriptRunner;

    check-cast v1, Lorg/whiter/javascript/params/RunParams;

    iput-object v1, p0, Lwhiter/script/activity/ConsoleActivity;->runParams:Lorg/whiter/javascript/params/RunParams;

    return-void
.end method


# virtual methods
.method protected getScriptPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lwhiter/script/activity/ConsoleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "JAVASCRIPT_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getScriptType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lwhiter/script/activity/ConsoleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "JAVASCRIPT_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadScriptByConsole()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    :try_start_0
    invoke-static {p0}, Lorg/whiter/javascript/run/Whiter;->setObject(Ljava/lang/Object;)V

    .line 37
    new-instance v0, Lorg/whiter/javascript/params/RunParams;

    invoke-direct {v0}, Lorg/whiter/javascript/params/RunParams;-><init>()V

    iput-object v0, p0, Lwhiter/script/activity/ConsoleActivity;->runParams:Lorg/whiter/javascript/params/RunParams;

    .line 38
    iget-object v0, p0, Lwhiter/script/activity/ConsoleActivity;->runParams:Lorg/whiter/javascript/params/RunParams;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "org.whiter.javascript.objects.ScriptObject"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :try_start_2
    invoke-virtual {v0, v1}, Lorg/whiter/javascript/params/RunParams;->addClasses(Ljava/lang/Class;)V

    .line 39
    iget-object v0, p0, Lwhiter/script/activity/ConsoleActivity;->runParams:Lorg/whiter/javascript/params/RunParams;

    const-string v1, "Properties"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v2, "org.whiter.javascript.objects.Properties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    :try_start_4
    invoke-virtual {v0, v1, v2}, Lorg/whiter/javascript/params/RunParams;->addProperties(Ljava/lang/String;Ljava/lang/Class;)V

    .line 40
    iget-object v0, p0, Lwhiter/script/activity/ConsoleActivity;->runParams:Lorg/whiter/javascript/params/RunParams;

    new-instance v1, Lwhiter/script/control/ScriptConsole;

    invoke-virtual {p0}, Lwhiter/script/activity/ConsoleActivity;->getScriptPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lwhiter/script/control/ScriptConsole;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/whiter/javascript/params/RunParams;->setConsole(Lorg/mozilla/javascript/ScriptableObject;)V

    .line 41
    new-instance v0, Lorg/whiter/javascript/runner/ScriptRunner;

    invoke-virtual {p0}, Lwhiter/script/activity/ConsoleActivity;->getScriptPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lwhiter/script/activity/ConsoleActivity;->runParams:Lorg/whiter/javascript/params/RunParams;

    invoke-direct {v0, v1, v2}, Lorg/whiter/javascript/runner/ScriptRunner;-><init>(Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V

    iput-object v0, p0, Lwhiter/script/activity/ConsoleActivity;->runner:Lorg/whiter/javascript/runner/ScriptRunner;

    .line 42
    iget-object v0, p0, Lwhiter/script/activity/ConsoleActivity;->runner:Lorg/whiter/javascript/runner/ScriptRunner;

    invoke-virtual {v0}, Lorg/whiter/javascript/runner/ScriptRunner;->load()V

    .line 43
    iget-object v0, p0, Lwhiter/script/activity/ConsoleActivity;->runner:Lorg/whiter/javascript/runner/ScriptRunner;

    iget-object v1, p0, Lwhiter/script/activity/ConsoleActivity;->view:Lwhiter/script/view/ConsoleView;

    invoke-virtual {v0, v1}, Lorg/whiter/javascript/runner/ScriptRunner;->setThreadListener(Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;)V

    .line 44
    iget-object v0, p0, Lwhiter/script/activity/ConsoleActivity;->runner:Lorg/whiter/javascript/runner/ScriptRunner;

    invoke-virtual {v0}, Lorg/whiter/javascript/runner/ScriptRunner;->executeWithThread()V

    .line 45
    iget-object v0, p0, Lwhiter/script/activity/ConsoleActivity;->view:Lwhiter/script/view/ConsoleView;

    iget-object v1, p0, Lwhiter/script/activity/ConsoleActivity;->runner:Lorg/whiter/javascript/runner/ScriptRunner;

    invoke-virtual {v0, v1}, Lwhiter/script/view/ConsoleView;->setScriptRunner(Lorg/whiter/javascript/runner/ScriptRunner;)V

    .line 49
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 45
    :catch_1
    move-exception v0

    .line 49
    invoke-static {v0}, Lwhiter/script/debug/Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 39
    :catch_2
    move-exception v0

    :try_start_5
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method public onCreateTest(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 25
    invoke-super {p0, p1}, Lwhiter/script/base/BaseActivity;->onCreateTest(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lwhiter/script/activity/ConsoleActivity;->setContentView(I)V

    .line 28
    const/high16 v0, 0x7f0b0000

    invoke-virtual {p0, v0}, Lwhiter/script/activity/ConsoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lwhiter/script/view/ConsoleView;

    iput-object v0, p0, Lwhiter/script/activity/ConsoleActivity;->view:Lwhiter/script/view/ConsoleView;

    .line 29
    invoke-virtual {p0}, Lwhiter/script/activity/ConsoleActivity;->loadScriptByConsole()V

    return-void
.end method
