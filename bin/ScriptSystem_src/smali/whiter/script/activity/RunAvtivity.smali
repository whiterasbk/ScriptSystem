.class public Lwhiter/script/activity/RunAvtivity;
.super Lwhiter/script/base/BaseActivity;
.source "RunAvtivity.java"


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
    .line 11
    invoke-super {p0, p1}, Lwhiter/script/base/BaseActivity;->onCreateTest(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f040009

    invoke-virtual {p0, v0}, Lwhiter/script/activity/RunAvtivity;->setContentView(I)V

    return-void
.end method
