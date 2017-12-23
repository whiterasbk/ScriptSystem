.class Lwhiter/script/debug/Log$100000003;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwhiter/script/debug/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation


# instance fields
.field private final val$icon:I

.field private final val$message:Ljava/lang/String;

.field private final val$round:I

.field private final val$tick:Ljava/lang/String;

.field private final val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwhiter/script/debug/Log$100000003;->val$tick:Ljava/lang/String;

    iput-object p2, p0, Lwhiter/script/debug/Log$100000003;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lwhiter/script/debug/Log$100000003;->val$title:Ljava/lang/String;

    iput p4, p0, Lwhiter/script/debug/Log$100000003;->val$icon:I

    iput p5, p0, Lwhiter/script/debug/Log$100000003;->val$round:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 187
    # getter for: Lwhiter/script/debug/Log;->activity:Landroid/app/Activity;
    invoke-static {}, Lwhiter/script/debug/Log;->access$L1000000()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 188
    new-instance v1, Landroid/app/Notification$Builder;

    # getter for: Lwhiter/script/debug/Log;->activity:Landroid/app/Activity;
    invoke-static {}, Lwhiter/script/debug/Log;->access$L1000000()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    iget-object v2, p0, Lwhiter/script/debug/Log$100000003;->val$tick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 190
    iget-object v2, p0, Lwhiter/script/debug/Log$100000003;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 191
    iget-object v2, p0, Lwhiter/script/debug/Log$100000003;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 192
    iget v2, p0, Lwhiter/script/debug/Log$100000003;->val$icon:I

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 193
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 196
    iget v2, p0, Lwhiter/script/debug/Log$100000003;->val$round:I

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
