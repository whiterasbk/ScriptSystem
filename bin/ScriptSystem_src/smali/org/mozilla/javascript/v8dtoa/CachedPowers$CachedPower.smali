.class Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/v8dtoa/CachedPowers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CachedPower"
.end annotation


# instance fields
.field binaryExponent:S

.field decimalExponent:S

.field significand:J


# direct methods
.method constructor <init>(JSS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;->significand:J

    iput-short p3, p0, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;->binaryExponent:S

    iput-short p4, p0, Lorg/mozilla/javascript/v8dtoa/CachedPowers$CachedPower;->decimalExponent:S

    return-void
.end method
