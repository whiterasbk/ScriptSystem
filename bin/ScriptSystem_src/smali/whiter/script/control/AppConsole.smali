.class public Lwhiter/script/control/AppConsole;
.super Lorg/whiter/javascript/objects/NativeClass;
.source "AppConsole.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwhiter/script/control/AppConsole$100000000;
    }
.end annotation


# instance fields
.field private ctx:Landroid/app/Activity;

.field private scriptPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/whiter/javascript/objects/NativeClass;-><init>()V

    .line 18
    iput-object p1, p0, Lwhiter/script/control/AppConsole;->ctx:Landroid/app/Activity;

    .line 19
    iput-object p2, p0, Lwhiter/script/control/AppConsole;->scriptPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$L1000000(Lwhiter/script/control/AppConsole;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lwhiter/script/control/AppConsole;->ctx:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$S1000000(Lwhiter/script/control/AppConsole;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lwhiter/script/control/AppConsole;->ctx:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public print(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lwhiter/script/control/AppConsole;->ctx:Landroid/app/Activity;

    new-instance v1, Lwhiter/script/control/AppConsole$100000000;

    invoke-direct {v1, p0, p1}, Lwhiter/script/control/AppConsole$100000000;-><init>(Lwhiter/script/control/AppConsole;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
