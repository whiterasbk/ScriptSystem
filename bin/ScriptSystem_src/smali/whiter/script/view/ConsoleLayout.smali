.class public Lwhiter/script/view/ConsoleLayout;
.super Landroid/widget/LinearLayout;
.source "ConsoleLayout.java"


# instance fields
.field protected consoleView:Lwhiter/script/view/ConsoleView;

.field private ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lwhiter/script/view/ConsoleLayout;->ctx:Landroid/content/Context;

    new-instance v0, Lwhiter/script/view/ConsoleView;

    iget-object v1, p0, Lwhiter/script/view/ConsoleLayout;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lwhiter/script/view/ConsoleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwhiter/script/view/ConsoleLayout;->consoleView:Lwhiter/script/view/ConsoleView;

    .line 16
    iput-object p1, p0, Lwhiter/script/view/ConsoleLayout;->ctx:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lwhiter/script/view/ConsoleLayout;->ctx:Landroid/content/Context;

    new-instance v0, Lwhiter/script/view/ConsoleView;

    iget-object v1, p0, Lwhiter/script/view/ConsoleLayout;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lwhiter/script/view/ConsoleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwhiter/script/view/ConsoleLayout;->consoleView:Lwhiter/script/view/ConsoleView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lwhiter/script/view/ConsoleLayout;->ctx:Landroid/content/Context;

    new-instance v0, Lwhiter/script/view/ConsoleView;

    iget-object v1, p0, Lwhiter/script/view/ConsoleLayout;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lwhiter/script/view/ConsoleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwhiter/script/view/ConsoleLayout;->consoleView:Lwhiter/script/view/ConsoleView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lwhiter/script/view/ConsoleLayout;->ctx:Landroid/content/Context;

    new-instance v0, Lwhiter/script/view/ConsoleView;

    iget-object v1, p0, Lwhiter/script/view/ConsoleLayout;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lwhiter/script/view/ConsoleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwhiter/script/view/ConsoleLayout;->consoleView:Lwhiter/script/view/ConsoleView;

    return-void
.end method


# virtual methods
.method public getConsoleView()Lwhiter/script/view/ConsoleView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lwhiter/script/view/ConsoleLayout;->consoleView:Lwhiter/script/view/ConsoleView;

    return-object v0
.end method

.method public init()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 41
    new-instance v0, Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lwhiter/script/view/ConsoleLayout;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lwhiter/script/view/ConsoleLayout;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lwhiter/script/view/ConsoleLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lwhiter/script/view/ConsoleLayout;->consoleView:Lwhiter/script/view/ConsoleView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
