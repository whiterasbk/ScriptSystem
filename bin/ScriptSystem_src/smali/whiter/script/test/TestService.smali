.class public Lwhiter/script/test/TestService;
.super Landroid/app/Service;
.source "TestService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lwhiter/script/test/TestService;->onBindTest(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 17
    :goto_0
    return-object v0

    .line 13
    :catch_0
    move-exception v0

    .line 15
    invoke-static {v0}, Lwhiter/script/debug/Log;->w(Ljava/lang/Object;)V

    .line 17
    const/4 v0, 0x0

    check-cast v0, Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onBindTest(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const-string v0, "com.aide.ui"

    invoke-static {p0, v0}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lwhiter/script/test/TestService;->onCreateTest()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 47
    invoke-static {v0}, Lwhiter/script/debug/Log;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreateTest()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
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
    .line 76
    :try_start_0
    invoke-virtual {p0}, Lwhiter/script/test/TestService;->onDestroyTest()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lwhiter/script/debug/Log;->w(Ljava/lang/Object;)V

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

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 24
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lwhiter/script/test/TestService;->onStartTest(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 26
    invoke-static {v0}, Lwhiter/script/debug/Log;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lwhiter/script/test/TestService;->onStartCommandTest(Landroid/content/Intent;II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 38
    :goto_0
    return v0

    .line 34
    :catch_0
    move-exception v0

    .line 36
    invoke-static {v0}, Lwhiter/script/debug/Log;->w(Ljava/lang/Object;)V

    .line 38
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartCommandTest(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public onStartTest(Landroid/content/Intent;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)V"
        }
    .end annotation

    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 66
    :try_start_0
    invoke-virtual {p0, p1}, Lwhiter/script/test/TestService;->onTaskRemovedTest(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Lwhiter/script/debug/Log;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onTaskRemovedTest(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p0, p1}, Lwhiter/script/test/TestService;->onUnbindTest(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 59
    :goto_0
    return v0

    .line 55
    :catch_0
    move-exception v0

    .line 57
    invoke-static {v0}, Lwhiter/script/debug/Log;->w(Ljava/lang/Object;)V

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUnbindTest(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method
