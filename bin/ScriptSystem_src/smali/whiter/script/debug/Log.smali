.class public Lwhiter/script/debug/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwhiter/script/debug/Log$100000000;,
        Lwhiter/script/debug/Log$100000001;,
        Lwhiter/script/debug/Log$100000002;,
        Lwhiter/script/debug/Log$100000003;
    }
.end annotation


# static fields
.field private static CTX_ACTIVITY:I

.field private static CTX_SERVICE:I

.field public static EXTRA_DIALOG_ICON:Ljava/lang/String;

.field public static EXTRA_DIALOG_MESSAGE:Ljava/lang/String;

.field public static EXTRA_DIALOG_TITLE:Ljava/lang/String;

.field private static activity:Landroid/app/Activity;

.field private static ctx:I

.field private static service:Landroid/app/Service;


# direct methods
.method static final constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "DialogTitle"

    sput-object v0, Lwhiter/script/debug/Log;->EXTRA_DIALOG_TITLE:Ljava/lang/String;

    const-string v0, "DialogMessage"

    sput-object v0, Lwhiter/script/debug/Log;->EXTRA_DIALOG_MESSAGE:Ljava/lang/String;

    const-string v0, "DialogIcon"

    sput-object v0, Lwhiter/script/debug/Log;->EXTRA_DIALOG_ICON:Ljava/lang/String;

    sput v1, Lwhiter/script/debug/Log;->ctx:I

    const/4 v0, 0x0

    sput v0, Lwhiter/script/debug/Log;->CTX_SERVICE:I

    sput v1, Lwhiter/script/debug/Log;->CTX_ACTIVITY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AlertDialog(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 98
    sget-object v1, Lwhiter/script/debug/Log;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 99
    const-string v1, ""

    .line 100
    instance-of v4, p1, Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 101
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "<ErrorMessage:>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    const-string v5, "<Message:>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "<From:>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "<Current:>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<Content:>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    sget v1, Lwhiter/script/debug/Log;->ctx:I

    sget v2, Lwhiter/script/debug/Log;->CTX_ACTIVITY:I

    if-ne v1, v2, :cond_2

    .line 112
    sget-object v1, Lwhiter/script/debug/Log;->activity:Landroid/app/Activity;

    new-instance v2, Lwhiter/script/debug/Log$100000001;

    invoke-direct {v2, p0, p2, v4}, Lwhiter/script/debug/Log$100000001;-><init>(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    sget v1, Lwhiter/script/debug/Log;->ctx:I

    sget v2, Lwhiter/script/debug/Log;->CTX_SERVICE:I

    if-ne v1, v2, :cond_1

    .line 130
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lwhiter/script/debug/Log;->service:Landroid/app/Service;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 134
    const-string v3, "Yes"

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 140
    invoke-static {v1}, Lwhiter/script/debug/Log;->mE(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static Notify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7

    .prologue
    .line 179
    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const/16 v2, 0x64

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v5, v0

    .line 180
    sget v0, Lwhiter/script/debug/Log;->ctx:I

    sget v1, Lwhiter/script/debug/Log;->CTX_ACTIVITY:I

    if-ne v0, v1, :cond_1

    .line 182
    sget-object v6, Lwhiter/script/debug/Log;->activity:Landroid/app/Activity;

    new-instance v0, Lwhiter/script/debug/Log$100000003;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lwhiter/script/debug/Log$100000003;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 220
    :cond_0
    :goto_0
    return v5

    .line 201
    :cond_1
    sget v0, Lwhiter/script/debug/Log;->ctx:I

    sget v1, Lwhiter/script/debug/Log;->CTX_SERVICE:I

    if-ne v0, v1, :cond_0

    .line 203
    sget-object v0, Lwhiter/script/debug/Log;->service:Landroid/app/Service;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 204
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v2, Lwhiter/script/debug/Log;->service:Landroid/app/Service;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 206
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 207
    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 208
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 209
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 212
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 218
    invoke-static {v0}, Lwhiter/script/debug/Log;->mE(Ljava/lang/Throwable;)V

    .line 220
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static NotifyDialog(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 148
    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const/16 v2, 0x64

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 149
    sget v1, Lwhiter/script/debug/Log;->ctx:I

    sget v2, Lwhiter/script/debug/Log;->CTX_ACTIVITY:I

    if-ne v1, v2, :cond_1

    .line 151
    sget-object v1, Lwhiter/script/debug/Log;->activity:Landroid/app/Activity;

    new-instance v2, Lwhiter/script/debug/Log$100000002;

    invoke-direct {v2, p0, p1, p2}, Lwhiter/script/debug/Log$100000002;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    sget v1, Lwhiter/script/debug/Log;->ctx:I

    sget v2, Lwhiter/script/debug/Log;->CTX_SERVICE:I

    if-ne v1, v2, :cond_0

    .line 163
    invoke-static {p0, p1, p2}, Lwhiter/script/debug/Log;->AlertDialog(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 170
    invoke-static {v0}, Lwhiter/script/debug/Log;->mE(Ljava/lang/Throwable;)V

    .line 172
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Toast(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lwhiter/script/debug/Log;->Toast(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static Toast(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    sget v0, Lwhiter/script/debug/Log;->ctx:I

    sget v1, Lwhiter/script/debug/Log;->CTX_ACTIVITY:I

    if-ne v0, v1, :cond_1

    .line 72
    sget-object v0, Lwhiter/script/debug/Log;->activity:Landroid/app/Activity;

    new-instance v1, Lwhiter/script/debug/Log$100000000;

    invoke-direct {v1, p0, p1, p2}, Lwhiter/script/debug/Log$100000000;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    sget v0, Lwhiter/script/debug/Log;->ctx:I

    sget v1, Lwhiter/script/debug/Log;->CTX_SERVICE:I

    if-ne v0, v1, :cond_0

    .line 84
    sget-object v0, Lwhiter/script/debug/Log;->service:Landroid/app/Service;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    invoke-static {v0}, Lwhiter/script/debug/Log;->mE(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$L1000000()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lwhiter/script/debug/Log;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$S1000000(Landroid/app/Activity;)V
    .locals 0

    sput-object p0, Lwhiter/script/debug/Log;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    const-string v0, "Done"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lwhiter/script/debug/Log;->Toast(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static dn(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "Notify-Done"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "New Log-dn"

    const v3, 0x7f0200a3

    invoke-static {v0, v1, v2, v3}, Lwhiter/script/debug/Log;->Notify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    const-string v0, "Exception/Error"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200b0

    invoke-static {v0, v1, v2}, Lwhiter/script/debug/Log;->AlertDialog(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    const-string v0, "Information"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200b8

    invoke-static {v0, v1, v2}, Lwhiter/script/debug/Log;->AlertDialog(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private static mE(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v0, Lwhiter/script/debug/Log;->activity:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    const-string v0, "Inner Exception"

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 227
    const v0, 0x7f0200b0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 229
    const-string v2, "Yes"

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static n(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    const-string v0, "Notify"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "New Log-n"

    const v3, 0x7f0200ac

    invoke-static {v0, v1, v2, v3}, Lwhiter/script/debug/Log;->Notify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    sput-object p0, Lwhiter/script/debug/Log;->activity:Landroid/app/Activity;

    .line 28
    sget v0, Lwhiter/script/debug/Log;->CTX_ACTIVITY:I

    sput v0, Lwhiter/script/debug/Log;->ctx:I

    return-void
.end method

.method public static setService(Landroid/app/Service;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Service;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    sput-object p0, Lwhiter/script/debug/Log;->service:Landroid/app/Service;

    .line 22
    sget v0, Lwhiter/script/debug/Log;->CTX_SERVICE:I

    sput v0, Lwhiter/script/debug/Log;->ctx:I

    return-void
.end method

.method public static w(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    const-string v0, "Wornning!"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200b0

    invoke-static {v0, v1, v2}, Lwhiter/script/debug/Log;->AlertDialog(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method
