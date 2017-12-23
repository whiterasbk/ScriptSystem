.class public Lwhiter/script/base/BaseActivity;
.super Lwhiter/script/test/TestActivity;
.source "BaseActivity.java"


# instance fields
.field public final SCRIPT_PATH:Ljava/lang/String;

.field public final SCRIPT_TYPE:Ljava/lang/String;

.field public final SCRIPT_TYPE_FILE:Ljava/lang/String;

.field public final SCRIPT_TYPE_PACKAGE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lwhiter/script/test/TestActivity;-><init>()V

    const-string v0, "JAVASCRIPT"

    iput-object v0, p0, Lwhiter/script/base/BaseActivity;->SCRIPT_TYPE_FILE:Ljava/lang/String;

    const-string v0, "JAVASCRIPT_PACKAGE"

    iput-object v0, p0, Lwhiter/script/base/BaseActivity;->SCRIPT_TYPE_PACKAGE:Ljava/lang/String;

    const-string v0, "JAVASCRIPT_PATH"

    iput-object v0, p0, Lwhiter/script/base/BaseActivity;->SCRIPT_PATH:Ljava/lang/String;

    const-string v0, "JAVASCRIPT_TYPE"

    iput-object v0, p0, Lwhiter/script/base/BaseActivity;->SCRIPT_TYPE:Ljava/lang/String;

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
    .line 19
    invoke-super {p0, p1}, Lwhiter/script/test/TestActivity;->onCreateTest(Landroid/os/Bundle;)V

    return-void
.end method
