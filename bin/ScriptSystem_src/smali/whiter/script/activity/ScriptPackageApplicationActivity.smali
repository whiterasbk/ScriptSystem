.class public Lwhiter/script/activity/ScriptPackageApplicationActivity;
.super Lwhiter/script/base/BaseActivity;
.source "ScriptPackageApplicationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lwhiter/script/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateTest(Landroid/os/Bundle;)V
    .locals 0
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
    .line 12
    invoke-super {p0, p1}, Lwhiter/script/base/BaseActivity;->onCreateTest(Landroid/os/Bundle;)V

    return-void
.end method
