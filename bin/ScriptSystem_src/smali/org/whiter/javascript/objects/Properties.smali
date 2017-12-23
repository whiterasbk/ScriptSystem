.class public final Lorg/whiter/javascript/objects/Properties;
.super Ljava/lang/Object;
.source "Properties.java"


# static fields
.field public static readme:Ljava/lang/String;

.field public static testText:Ljava/lang/String;

.field public static version:Ljava/lang/String;

.field public static versionCode:I


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    const-string v0, "script runner : v1.0.0"

    sput-object v0, Lorg/whiter/javascript/objects/Properties;->version:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lorg/whiter/javascript/objects/Properties;->versionCode:I

    const-string v0, "It\'s a test text.\n (\u0e05\u00b4\u03c9`\u0e05)\u5df2\u9605\u7559\u722a"

    sput-object v0, Lorg/whiter/javascript/objects/Properties;->testText:Ljava/lang/String;

    const-string v0, "\n\u8282\u64cd\u7c89\u788e\u4e2d \u8bf7\u7a0d\u540e\n \u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501 \n \u2589\u2589\u2589\u2589\u2589\u2589\u2589\u2589 99.9% \n \u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\u2501\n"

    sput-object v0, Lorg/whiter/javascript/objects/Properties;->readme:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
