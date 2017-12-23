.class public Lwhiter/script/test/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
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
    const-string v0, "com.aide.ui"

    invoke-static {p0, v0}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-static {p0}, Lwhiter/script/debug/Log;->setActivity(Landroid/app/Activity;)V

    .line 21
    invoke-virtual {p0, p1}, Lwhiter/script/test/TestActivity;->onCreateTest(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 23
    invoke-static {v0}, Lwhiter/script/debug/Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreateTest(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onDestroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 70
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 71
    invoke-virtual {p0}, Lwhiter/script/test/TestActivity;->onDestroyTest()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 73
    invoke-static {v0}, Lwhiter/script/debug/Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDestroyTest()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public onRestart()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 50
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 51
    invoke-virtual {p0}, Lwhiter/script/test/TestActivity;->onRestartTest()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 53
    invoke-static {v0}, Lwhiter/script/debug/Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onRestartTest()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 60
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 61
    invoke-virtual {p0}, Lwhiter/script/test/TestActivity;->onRestartTest()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 63
    invoke-static {v0}, Lwhiter/script/debug/Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onResumeTest()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public onStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 30
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 31
    invoke-virtual {p0}, Lwhiter/script/test/TestActivity;->onStartTest()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 33
    invoke-static {v0}, Lwhiter/script/debug/Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStartTest()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 40
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 41
    invoke-virtual {p0}, Lwhiter/script/test/TestActivity;->onStopTest()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 43
    invoke-static {v0}, Lwhiter/script/debug/Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStopTest()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method
