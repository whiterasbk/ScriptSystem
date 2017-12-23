.class public Lwhiter/script/util/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntArrayFromDrawableArray(Landroid/app/Activity;II)[I
    .locals 4

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v2, v0, [I

    .line 18
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 23
    return-object v2

    .line 20
    :cond_0
    invoke-virtual {v1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
