.class public Lwhiter/script/service/AppLogService;
.super Lwhiter/script/base/BaseService;
.source "AppLogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwhiter/script/service/AppLogService$LogServiceIBinder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lwhiter/script/base/BaseService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindTest(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lwhiter/script/service/AppLogService$LogServiceIBinder;

    invoke-direct {v0, p0}, Lwhiter/script/service/AppLogService$LogServiceIBinder;-><init>(Lwhiter/script/service/AppLogService;)V

    return-object v0
.end method

.method public onStartCommandTest(Landroid/content/Intent;II)I
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lwhiter/script/test/TestService;->onStartCommandTest(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
