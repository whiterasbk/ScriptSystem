.class public Lwhiter/script/service/AppLogService$LogServiceIBinder;
.super Landroid/os/Binder;
.source "AppLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwhiter/script/service/AppLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x21
    name = "LogServiceIBinder"
.end annotation


# instance fields
.field private final this$0:Lwhiter/script/service/AppLogService;


# direct methods
.method public constructor <init>(Lwhiter/script/service/AppLogService;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lwhiter/script/service/AppLogService$LogServiceIBinder;->this$0:Lwhiter/script/service/AppLogService;

    return-void
.end method

.method static access$0(Lwhiter/script/service/AppLogService$LogServiceIBinder;)Lwhiter/script/service/AppLogService;
    .locals 1

    iget-object v0, p0, Lwhiter/script/service/AppLogService$LogServiceIBinder;->this$0:Lwhiter/script/service/AppLogService;

    return-object v0
.end method


# virtual methods
.method public Alert(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lwhiter/script/service/AppLogService$LogServiceIBinder;->this$0:Lwhiter/script/service/AppLogService;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 31
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 32
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 33
    const-string v2, "Yes"

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 34
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
