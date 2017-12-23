.class public Lwhiter/script/activity/LogoActivity;
.super Lwhiter/script/base/BaseActivity;
.source "LogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwhiter/script/activity/LogoActivity$100000000;
    }
.end annotation


# static fields
.field public static LOGO_ACTIVITY_SING:Ljava/lang/String;


# instance fields
.field private duration:I

.field private icon:Landroid/widget/ImageView;

.field private task:Ljava/util/TimerTask;

.field private timer:Ljava/util/Timer;


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    const-string v0, "whiter:///whiter/script/activity/LogoActivity/LOGO_ACTIVITY_SING"

    sput-object v0, Lwhiter/script/activity/LogoActivity;->LOGO_ACTIVITY_SING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lwhiter/script/base/BaseActivity;-><init>()V

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lwhiter/script/activity/LogoActivity;->icon:Landroid/widget/ImageView;

    const/16 v0, 0x1388

    iput v0, p0, Lwhiter/script/activity/LogoActivity;->duration:I

    move-object v0, v1

    check-cast v0, Ljava/util/Timer;

    iput-object v0, p0, Lwhiter/script/activity/LogoActivity;->timer:Ljava/util/Timer;

    check-cast v1, Ljava/util/TimerTask;

    iput-object v1, p0, Lwhiter/script/activity/LogoActivity;->task:Ljava/util/TimerTask;

    return-void
.end method


# virtual methods
.method public onCreateTest(Landroid/os/Bundle;)V
    .locals 4
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
    .line 24
    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lwhiter/script/activity/LogoActivity;->setContentView(I)V

    .line 26
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lwhiter/script/activity/LogoActivity;->timer:Ljava/util/Timer;

    .line 27
    new-instance v0, Lwhiter/script/activity/LogoActivity$100000000;

    invoke-direct {v0, p0}, Lwhiter/script/activity/LogoActivity$100000000;-><init>(Lwhiter/script/activity/LogoActivity;)V

    iput-object v0, p0, Lwhiter/script/activity/LogoActivity;->task:Ljava/util/TimerTask;

    .line 44
    iget-object v0, p0, Lwhiter/script/activity/LogoActivity;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lwhiter/script/activity/LogoActivity;->task:Ljava/util/TimerTask;

    iget v2, p0, Lwhiter/script/activity/LogoActivity;->duration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 46
    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lwhiter/script/activity/LogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lwhiter/script/activity/LogoActivity;->icon:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lwhiter/script/activity/LogoActivity;->icon:Landroid/widget/ImageView;

    const/high16 v1, 0x7f050000

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
