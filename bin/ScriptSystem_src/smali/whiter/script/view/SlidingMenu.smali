.class public Lwhiter/script/view/SlidingMenu;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingMenu.java"


# instance fields
.field private isOpen:Z

.field private mContent:Landroid/view/ViewGroup;

.field private mMenu:Landroid/view/ViewGroup;

.field private mMenuRightPadding:I

.field private mMenuWidth:I

.field private mScreenWidth:I

.field private mWapper:Landroid/widget/LinearLayout;

.field private once:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x32

    iput v0, p0, Lwhiter/script/view/SlidingMenu;->mMenuRightPadding:I

    .line 30
    invoke-direct {p0, p1}, Lwhiter/script/view/SlidingMenu;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x32

    iput v0, p0, Lwhiter/script/view/SlidingMenu;->mMenuRightPadding:I

    .line 36
    invoke-direct {p0, p1}, Lwhiter/script/view/SlidingMenu;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x32

    iput v0, p0, Lwhiter/script/view/SlidingMenu;->mMenuRightPadding:I

    .line 42
    invoke-direct {p0, p1}, Lwhiter/script/view/SlidingMenu;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x32

    iput v0, p0, Lwhiter/script/view/SlidingMenu;->mMenuRightPadding:I

    .line 48
    invoke-direct {p0, p1}, Lwhiter/script/view/SlidingMenu;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 54
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 55
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lwhiter/script/view/SlidingMenu;->mScreenWidth:I

    return-void
.end method


# virtual methods
.method public closeMenu()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-boolean v0, p0, Lwhiter/script/view/SlidingMenu;->isOpen:Z

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    iget v0, p0, Lwhiter/script/view/SlidingMenu;->mMenuWidth:I

    invoke-virtual {p0, v0, v1}, Lwhiter/script/view/SlidingMenu;->smoothScrollTo(II)V

    .line 165
    iput-boolean v1, p0, Lwhiter/script/view/SlidingMenu;->isOpen:Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 121
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 122
    if-eqz p1, :cond_0

    .line 124
    iget v0, p0, Lwhiter/script/view/SlidingMenu;->mMenuWidth:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lwhiter/script/view/SlidingMenu;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 106
    iget-boolean v0, p0, Lwhiter/script/view/SlidingMenu;->once:Z

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0, v1}, Lwhiter/script/view/SlidingMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lwhiter/script/view/SlidingMenu;->mWapper:Landroid/widget/LinearLayout;

    .line 109
    iget-object v0, p0, Lwhiter/script/view/SlidingMenu;->mWapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lwhiter/script/view/SlidingMenu;->mMenu:Landroid/view/ViewGroup;

    .line 110
    iget-object v0, p0, Lwhiter/script/view/SlidingMenu;->mWapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lwhiter/script/view/SlidingMenu;->mContent:Landroid/view/ViewGroup;

    .line 111
    iget-object v0, p0, Lwhiter/script/view/SlidingMenu;->mMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lwhiter/script/view/SlidingMenu;->mScreenWidth:I

    iget v2, p0, Lwhiter/script/view/SlidingMenu;->mMenuRightPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lwhiter/script/view/SlidingMenu;->mMenuWidth:I

    .line 112
    iget-object v0, p0, Lwhiter/script/view/SlidingMenu;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lwhiter/script/view/SlidingMenu;->mScreenWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 113
    iput-boolean v3, p0, Lwhiter/script/view/SlidingMenu;->once:Z

    .line 115
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 184
    int-to-float v0, p1

    mul-float/2addr v0, v4

    iget v1, p0, Lwhiter/script/view/SlidingMenu;->mMenuWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 186
    const v1, 0x3f333333    # 0.7f

    mul-float v2, v3, v0

    add-float/2addr v1, v2

    .line 187
    mul-float v2, v0, v3

    sub-float v2, v4, v2

    .line 188
    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, 0x1

    int-to-float v5, v5

    sub-float/2addr v5, v0

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 190
    iget-object v4, p0, Lwhiter/script/view/SlidingMenu;->mMenu:Landroid/view/ViewGroup;

    iget v5, p0, Lwhiter/script/view/SlidingMenu;->mMenuWidth:I

    int-to-float v5, v5

    mul-float/2addr v0, v5

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v5

    invoke-static {v4, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 192
    iget-object v0, p0, Lwhiter/script/view/SlidingMenu;->mMenu:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 193
    iget-object v0, p0, Lwhiter/script/view/SlidingMenu;->mMenu:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 194
    iget-object v0, p0, Lwhiter/script/view/SlidingMenu;->mMenu:Landroid/view/ViewGroup;

    invoke-static {v0, v3}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 196
    iget-object v0, p0, Lwhiter/script/view/SlidingMenu;->mContent:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/nineoldandroids/view/ViewHelper;->setPivotX(Landroid/view/View;F)V

    .line 197
    iget-object v0, p0, Lwhiter/script/view/SlidingMenu;->mContent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lwhiter/script/view/SlidingMenu;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/nineoldandroids/view/ViewHelper;->setPivotY(Landroid/view/View;F)V

    .line 198
    iget-object v0, p0, Lwhiter/script/view/SlidingMenu;->mContent:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 199
    iget-object v0, p0, Lwhiter/script/view/SlidingMenu;->mContent:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 132
    packed-switch v1, :pswitch_data_0

    .line 149
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 136
    :pswitch_0
    invoke-virtual {p0}, Lwhiter/script/view/SlidingMenu;->getScrollX()I

    move-result v1

    .line 137
    iget v2, p0, Lwhiter/script/view/SlidingMenu;->mMenuWidth:I

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    .line 139
    iget v1, p0, Lwhiter/script/view/SlidingMenu;->mMenuWidth:I

    invoke-virtual {p0, v1, v3}, Lwhiter/script/view/SlidingMenu;->smoothScrollTo(II)V

    .line 140
    iput-boolean v3, p0, Lwhiter/script/view/SlidingMenu;->isOpen:Z

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0, v3, v3}, Lwhiter/script/view/SlidingMenu;->smoothScrollTo(II)V

    .line 145
    iput-boolean v0, p0, Lwhiter/script/view/SlidingMenu;->isOpen:Z

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public openMenu()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-boolean v0, p0, Lwhiter/script/view/SlidingMenu;->isOpen:Z

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0, v1, v1}, Lwhiter/script/view/SlidingMenu;->smoothScrollTo(II)V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lwhiter/script/view/SlidingMenu;->isOpen:Z

    goto :goto_0
.end method

.method public setRightPadding(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 100
    iput p1, p0, Lwhiter/script/view/SlidingMenu;->mMenuRightPadding:I

    return-void
.end method

.method public toggle()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 170
    iget-boolean v0, p0, Lwhiter/script/view/SlidingMenu;->isOpen:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lwhiter/script/view/SlidingMenu;->closeMenu()V

    .line 176
    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lwhiter/script/view/SlidingMenu;->openMenu()V

    goto :goto_0
.end method
