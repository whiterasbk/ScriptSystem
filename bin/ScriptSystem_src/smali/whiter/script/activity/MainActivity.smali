.class public Lwhiter/script/activity/MainActivity;
.super Lwhiter/script/base/BaseMainActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwhiter/script/activity/MainActivity$100000000;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lwhiter/script/base/BaseMainActivity;-><init>()V

    return-void
.end method

.method private showOptionsDialog()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lwhiter/script/activity/MainActivity;->getScriptPathFromIntent()Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lwhiter/script/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 39
    const/high16 v2, 0x7f070000

    const v3, 0x7f020047

    invoke-static {p0, v2, v3}, Lwhiter/script/util/ResourceUtil;->getIntArrayFromDrawableArray(Landroid/app/Activity;II)[I

    move-result-object v2

    .line 41
    invoke-virtual {p0, v2, v0}, Lwhiter/script/activity/MainActivity;->getSimpleAdapter([I[Ljava/lang/String;)Landroid/widget/SimpleAdapter;

    move-result-object v2

    .line 42
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    const v0, 0x7f02008a

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 45
    const v0, 0x7f090006

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 46
    const v4, 0x7f090007

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    new-instance v0, Lwhiter/script/activity/MainActivity$100000000;

    invoke-direct {v0, p0, v1}, Lwhiter/script/activity/MainActivity$100000000;-><init>(Lwhiter/script/activity/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateTest(Landroid/os/Bundle;)V
    .locals 3
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
    .line 23
    invoke-super {p0, p1}, Lwhiter/script/base/BaseMainActivity;->onCreateTest(Landroid/os/Bundle;)V

    .line 24
    invoke-static {}, Lwhiter/script/util/BackupUtil;->backup()V

    .line 25
    invoke-direct {p0}, Lwhiter/script/activity/MainActivity;->showOptionsDialog()V

    .line 27
    new-instance v0, Landroid/content/Intent;

    :try_start_0
    const-string v1, "whiter.script.service.AppLogService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    new-instance v1, Lwhiter/script/base/BaseMainActivity$LogServiceConnection;

    invoke-direct {v1, p0}, Lwhiter/script/base/BaseMainActivity$LogServiceConnection;-><init>(Lwhiter/script/base/BaseMainActivity;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lwhiter/script/activity/MainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    .line 27
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
