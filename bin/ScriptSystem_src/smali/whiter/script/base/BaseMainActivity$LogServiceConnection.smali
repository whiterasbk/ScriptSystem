.class public Lwhiter/script/base/BaseMainActivity$LogServiceConnection;
.super Ljava/lang/Object;
.source "BaseMainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwhiter/script/base/BaseMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x21
    name = "LogServiceConnection"
.end annotation


# instance fields
.field private final this$0:Lwhiter/script/base/BaseMainActivity;


# direct methods
.method public constructor <init>(Lwhiter/script/base/BaseMainActivity;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwhiter/script/base/BaseMainActivity$LogServiceConnection;->this$0:Lwhiter/script/base/BaseMainActivity;

    return-void
.end method

.method static access$0(Lwhiter/script/base/BaseMainActivity$LogServiceConnection;)Lwhiter/script/base/BaseMainActivity;
    .locals 1

    iget-object v0, p0, Lwhiter/script/base/BaseMainActivity$LogServiceConnection;->this$0:Lwhiter/script/base/BaseMainActivity;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lwhiter/script/base/BaseMainActivity$LogServiceConnection;->this$0:Lwhiter/script/base/BaseMainActivity;

    check-cast p2, Lwhiter/script/service/AppLogService$LogServiceIBinder;

    iput-object p2, v0, Lwhiter/script/base/BaseMainActivity;->logBinder:Lwhiter/script/service/AppLogService$LogServiceIBinder;

    .line 162
    iget-object v0, p0, Lwhiter/script/base/BaseMainActivity$LogServiceConnection;->this$0:Lwhiter/script/base/BaseMainActivity;

    invoke-virtual {v0, p1}, Lwhiter/script/base/BaseMainActivity;->onServiceBind(Landroid/content/ComponentName;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lwhiter/script/base/BaseMainActivity$LogServiceConnection;->this$0:Lwhiter/script/base/BaseMainActivity;

    invoke-virtual {v0, p1}, Lwhiter/script/base/BaseMainActivity;->onServiceUnBind(Landroid/content/ComponentName;)V

    return-void
.end method
