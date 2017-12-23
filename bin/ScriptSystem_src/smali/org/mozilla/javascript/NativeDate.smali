.class final Lorg/mozilla/javascript/NativeDate;
.super Lorg/mozilla/javascript/IdScriptableObject;


# static fields
.field private static final ConstructorId_UTC:I = -0x1

.field private static final ConstructorId_now:I = -0x3

.field private static final ConstructorId_parse:I = -0x2

.field private static final DATE_TAG:Ljava/lang/Object;

.field private static final HalfTimeDomain:D = 8.64E15

.field private static final HoursPerDay:D = 24.0

.field private static final Id_constructor:I = 0x1

.field private static final Id_getDate:I = 0x11

.field private static final Id_getDay:I = 0x13

.field private static final Id_getFullYear:I = 0xd

.field private static final Id_getHours:I = 0x15

.field private static final Id_getMilliseconds:I = 0x1b

.field private static final Id_getMinutes:I = 0x17

.field private static final Id_getMonth:I = 0xf

.field private static final Id_getSeconds:I = 0x19

.field private static final Id_getTime:I = 0xb

.field private static final Id_getTimezoneOffset:I = 0x1d

.field private static final Id_getUTCDate:I = 0x12

.field private static final Id_getUTCDay:I = 0x14

.field private static final Id_getUTCFullYear:I = 0xe

.field private static final Id_getUTCHours:I = 0x16

.field private static final Id_getUTCMilliseconds:I = 0x1c

.field private static final Id_getUTCMinutes:I = 0x18

.field private static final Id_getUTCMonth:I = 0x10

.field private static final Id_getUTCSeconds:I = 0x1a

.field private static final Id_getYear:I = 0xc

.field private static final Id_setDate:I = 0x27

.field private static final Id_setFullYear:I = 0x2b

.field private static final Id_setHours:I = 0x25

.field private static final Id_setMilliseconds:I = 0x1f

.field private static final Id_setMinutes:I = 0x23

.field private static final Id_setMonth:I = 0x29

.field private static final Id_setSeconds:I = 0x21

.field private static final Id_setTime:I = 0x1e

.field private static final Id_setUTCDate:I = 0x28

.field private static final Id_setUTCFullYear:I = 0x2c

.field private static final Id_setUTCHours:I = 0x26

.field private static final Id_setUTCMilliseconds:I = 0x20

.field private static final Id_setUTCMinutes:I = 0x24

.field private static final Id_setUTCMonth:I = 0x2a

.field private static final Id_setUTCSeconds:I = 0x22

.field private static final Id_setYear:I = 0x2d

.field private static final Id_toDateString:I = 0x4

.field private static final Id_toGMTString:I = 0x8

.field private static final Id_toISOString:I = 0x2e

.field private static final Id_toJSON:I = 0x2f

.field private static final Id_toLocaleDateString:I = 0x7

.field private static final Id_toLocaleString:I = 0x5

.field private static final Id_toLocaleTimeString:I = 0x6

.field private static final Id_toSource:I = 0x9

.field private static final Id_toString:I = 0x2

.field private static final Id_toTimeString:I = 0x3

.field private static final Id_toUTCString:I = 0x8

.field private static final Id_valueOf:I = 0xa

.field private static LocalTZA:D = 0.0

.field private static final MAXARGS:I = 0x7

.field private static final MAX_PROTOTYPE_ID:I = 0x2f

.field private static final MinutesPerDay:D = 1440.0

.field private static final MinutesPerHour:D = 60.0

.field private static final SecondsPerDay:D = 86400.0

.field private static final SecondsPerHour:D = 3600.0

.field private static final SecondsPerMinute:D = 60.0

.field private static final isoFormat:Ljava/text/DateFormat;

.field private static final js_NaN_date_str:Ljava/lang/String; = "Invalid Date"

.field private static localeDateFormatter:Ljava/text/DateFormat; = null

.field private static localeDateTimeFormatter:Ljava/text/DateFormat; = null

.field private static localeTimeFormatter:Ljava/text/DateFormat; = null

.field private static final msPerDay:D = 8.64E7

.field private static final msPerHour:D = 3600000.0

.field private static final msPerMinute:D = 60000.0

.field private static final msPerSecond:D = 1000.0

.field static final serialVersionUID:J = -0x7349f3ade5310b76L

.field private static thisTimeZone:Ljava/util/TimeZone;

.field private static timeZoneFormatter:Ljava/text/DateFormat;


# instance fields
.field private date:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Date"

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->isoFormat:Ljava/text/DateFormat;

    sget-object v0, Lorg/mozilla/javascript/NativeDate;->isoFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, "UTC"

    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    sget-object v0, Lorg/mozilla/javascript/NativeDate;->isoFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->setLenient(Z)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    sget-object v0, Lorg/mozilla/javascript/NativeDate;->thisTimeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->thisTimeZone:Ljava/util/TimeZone;

    sget-object v0, Lorg/mozilla/javascript/NativeDate;->thisTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-double v0, v0

    sput-wide v0, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    :cond_0
    return-void
.end method

.method private static DateFromTime(D)I
    .locals 9

    const/16 v2, 0x1e

    const/16 v1, 0x1f

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v3

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide v4

    int-to-double v6, v3

    invoke-static {v6, v7}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-int v0, v4

    add-int/lit8 v0, v0, -0x3b

    if-gez v0, :cond_1

    const/16 v1, -0x1c

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x1c

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    const/16 v0, 0x1d

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :cond_3
    div-int/lit8 v3, v0, 0x1e

    packed-switch v3, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    move v2, v1

    :goto_1
    sub-int/2addr v0, v1

    if-gez v0, :cond_4

    add-int/2addr v0, v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x3d

    goto :goto_1

    :pswitch_3
    const/16 v2, 0x5c

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_1

    :pswitch_4
    const/16 v1, 0x7a

    goto :goto_1

    :pswitch_5
    const/16 v2, 0x99

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_1

    :pswitch_6
    const/16 v2, 0xb8

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_1

    :pswitch_7
    const/16 v1, 0xd6

    goto :goto_1

    :pswitch_8
    const/16 v2, 0xf5

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_1

    :pswitch_9
    const/16 v1, 0x113

    goto :goto_1

    :pswitch_a
    add-int/lit16 v0, v0, -0x113

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static Day(D)D
    .locals 2

    const-wide v0, 0x4194997000000000L    # 8.64E7

    div-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static DayFromMonth(II)D
    .locals 3

    const/4 v2, 0x2

    mul-int/lit8 v0, p0, 0x1e

    const/4 v1, 0x7

    if-lt p0, v1, :cond_1

    div-int/lit8 v1, p0, 0x2

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-lt p0, v2, :cond_0

    invoke-static {p1}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    int-to-double v0, v0

    return-wide v0

    :cond_1
    if-lt p0, v2, :cond_2

    add-int/lit8 v1, p0, -0x1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    add-int/2addr v0, p0

    goto :goto_0
.end method

.method private static DayFromYear(D)D
    .locals 6

    const-wide v0, 0x4076d00000000000L    # 365.0

    const-wide v2, 0x409ec80000000000L    # 1970.0

    sub-double v2, p0, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x409ec40000000000L    # 1969.0

    sub-double v2, p0, v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide v2, 0x409db40000000000L    # 1901.0

    sub-double v2, p0, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x4099040000000000L    # 1601.0

    sub-double v2, p0, v2

    const-wide/high16 v4, 0x4079000000000000L    # 400.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static DaylightSavingTA(D)D
    .locals 8

    const-wide/16 v6, 0x0

    cmpg-double v0, p0, v6

    if-gez v0, :cond_0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/NativeDate;->EquivalentYear(I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v2

    int-to-double v2, v2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v4

    int-to-double v4, v4

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p0

    :cond_0
    new-instance v0, Ljava/util/Date;

    double-to-long v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sget-object v1, Lorg/mozilla/javascript/NativeDate;->thisTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide v0, 0x414b774000000000L    # 3600000.0

    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, v6

    goto :goto_0
.end method

.method private static EquivalentYear(I)I
    .locals 2

    int-to-double v0, p0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x7

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_1

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    const/16 v0, 0x7c0

    :goto_1
    return v0

    :pswitch_1
    const/16 v0, 0x7cc

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x7bc

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x7c8

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x7b8

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x7c4

    goto :goto_1

    :pswitch_6
    const/16 v0, 0x7b4

    goto :goto_1

    :cond_1
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x7ba

    goto :goto_1

    :pswitch_8
    const/16 v0, 0x7b5

    goto :goto_1

    :pswitch_9
    const/16 v0, 0x7c1

    goto :goto_1

    :pswitch_a
    const/16 v0, 0x7c2

    goto :goto_1

    :pswitch_b
    const/16 v0, 0x7bd

    goto :goto_1

    :pswitch_c
    const/16 v0, 0x7b3

    goto :goto_1

    :pswitch_d
    const/16 v0, 0x7b9

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static HourFromTime(D)I
    .locals 6

    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    const-wide v0, 0x414b774000000000L    # 3600000.0

    div-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    rem-double/2addr v0, v4

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    add-double/2addr v0, v4

    :cond_0
    double-to-int v0, v0

    return v0
.end method

.method private static IsLeapYear(I)Z
    .locals 1

    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static LocalTime(D)D
    .locals 4

    sget-wide v0, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    add-double/2addr v0, p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DaylightSavingTA(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static MakeDate(DD)D
    .locals 2

    const-wide v0, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v0, p0

    add-double/2addr v0, p2

    return-wide v0
.end method

.method private static MakeDay(DDD)D
    .locals 8

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    div-double v0, p2, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    add-double v2, p0, v0

    rem-double v0, p2, v6

    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    add-double/2addr v0, v6

    :cond_0
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->TimeFromYear(D)D

    move-result-wide v4

    const-wide v6, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v0

    double-to-int v1, v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->DayFromMonth(II)D

    move-result-wide v0

    add-double/2addr v0, v4

    add-double/2addr v0, p4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private static MakeTime(DDDD)D
    .locals 4

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double v0, p0, v2

    add-double/2addr v0, p2

    mul-double/2addr v0, v2

    add-double/2addr v0, p4

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    add-double/2addr v0, p6

    return-wide v0
.end method

.method private static MinFromTime(D)I
    .locals 6

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    const-wide v0, 0x40ed4c0000000000L    # 60000.0

    div-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    rem-double/2addr v0, v4

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    add-double/2addr v0, v4

    :cond_0
    double-to-int v0, v0

    return v0
.end method

.method private static MonthFromTime(D)I
    .locals 7

    const/4 v0, 0x1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide v3

    int-to-double v5, v2

    invoke-static {v5, v6}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-int v1, v3

    add-int/lit8 v1, v1, -0x3b

    if-gez v1, :cond_1

    const/16 v2, -0x1c

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v2}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    :goto_1
    div-int/lit8 v2, v0, 0x1e

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x1f

    :goto_2
    if-lt v0, v1, :cond_2

    add-int/lit8 v0, v2, 0x2

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x3d

    goto :goto_2

    :pswitch_3
    const/16 v1, 0x5c

    goto :goto_2

    :pswitch_4
    const/16 v1, 0x7a

    goto :goto_2

    :pswitch_5
    const/16 v1, 0x99

    goto :goto_2

    :pswitch_6
    const/16 v1, 0xb8

    goto :goto_2

    :pswitch_7
    const/16 v1, 0xd6

    goto :goto_2

    :pswitch_8
    const/16 v1, 0xf5

    goto :goto_2

    :pswitch_9
    const/16 v1, 0x113

    goto :goto_2

    :pswitch_a
    const/16 v0, 0xb

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static SecFromTime(D)I
    .locals 6

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    rem-double/2addr v0, v4

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    add-double/2addr v0, v4

    :cond_0
    double-to-int v0, v0

    return v0
.end method

.method private static TimeClip(D)D
    .locals 6

    const-wide/16 v4, 0x0

    cmpl-double v0, p0, p0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x433eb208c2dc0000L    # 8.64E15

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    :goto_0
    return-wide v0

    :cond_1
    cmpl-double v0, p0, v4

    if-lez v0, :cond_2

    add-double v0, p0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    add-double v0, p0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method private static TimeFromYear(D)D
    .locals 4

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static TimeWithinDay(D)D
    .locals 6

    const-wide v4, 0x4194997000000000L    # 8.64E7

    rem-double v0, p0, v4

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    add-double/2addr v0, v4

    :cond_0
    return-wide v0
.end method

.method private static WeekDay(D)I
    .locals 6

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    add-double/2addr v0, v2

    rem-double/2addr v0, v4

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    add-double/2addr v0, v4

    :cond_0
    double-to-int v0, v0

    return v0
.end method

.method private static YearFromTime(D)I
    .locals 6

    const-wide v4, 0x4194997000000000L    # 8.64E7

    div-double v0, p0, v4

    const-wide v2, 0x4076e00000000000L    # 366.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0x7b2

    div-double v1, p0, v4

    const-wide v3, 0x4076d00000000000L    # 365.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit16 v1, v1, 0x7b2

    if-ge v1, v0, :cond_3

    move v2, v0

    :cond_0
    :goto_0
    if-le v2, v1, :cond_2

    add-int v0, v2, v1

    div-int/lit8 v0, v0, 0x2

    int-to-double v3, v0

    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->TimeFromYear(D)D

    move-result-wide v3

    cmpl-double v3, v3, p0

    if-lez v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    int-to-double v3, v1

    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->TimeFromYear(D)D

    move-result-wide v3

    cmpl-double v3, v3, p0

    if-lez v3, :cond_0

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    move v1, v0

    goto :goto_0
.end method

.method private static append0PaddedUint(Ljava/lang/StringBuffer;II)V
    .locals 4

    const v0, 0x3b9aca00

    const/4 v1, 0x1

    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    add-int/lit8 v2, p2, -0x1

    const/16 v3, 0xa

    if-lt p1, v3, :cond_5

    if-ge p1, v0, :cond_2

    move v0, v1

    :goto_0
    mul-int/lit8 v3, v0, 0xa

    if-ge p1, v3, :cond_1

    :goto_1
    if-lez v2, :cond_3

    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    move v0, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, -0x9

    goto :goto_1

    :cond_3
    :goto_2
    if-eq v0, v1, :cond_4

    div-int v2, p1, v0

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/2addr p1, v0

    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    :cond_4
    add-int/lit8 v0, p1, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private static appendMonthName(Ljava/lang/StringBuffer;I)V
    .locals 4

    const-string v1, "JanFebMarAprMayJunJulAugSepOctNovDec"

    mul-int/lit8 v2, p1, 0x3

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    add-int v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static appendWeekDayName(Ljava/lang/StringBuffer;I)V
    .locals 4

    const-string v1, "SunMonTueWedThuFriSat"

    mul-int/lit8 v2, p1, 0x3

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    add-int v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static date_format(DI)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x3a

    const/16 v7, 0x20

    const/4 v5, 0x4

    const/4 v4, 0x2

    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v0, 0x3c

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->WeekDay(D)I

    move-result v0

    invoke-static {v6, v0}, Lorg/mozilla/javascript/NativeDate;->appendWeekDayName(Ljava/lang/StringBuffer;I)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v0

    invoke-static {v6, v0}, Lorg/mozilla/javascript/NativeDate;->appendMonthName(Ljava/lang/StringBuffer;I)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v0

    invoke-static {v6, v0, v4}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v3, 0x2d

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int v0, v0

    :cond_0
    invoke-static {v6, v0, v5}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    if-eq p2, v5, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    if-eq p2, v5, :cond_4

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result v0

    invoke-static {v6, v0, v4}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v0

    invoke-static {v6, v0, v4}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result v0

    invoke-static {v6, v0, v4}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    sget-wide v3, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DaylightSavingTA(D)D

    move-result-wide v7

    add-double/2addr v3, v7

    const-wide v7, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    div-int/lit8 v3, v0, 0x3c

    mul-int/lit8 v3, v3, 0x64

    rem-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v3

    if-lez v0, :cond_5

    const-string v3, " GMT+"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-static {v6, v0, v5}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    sget-object v0, Lorg/mozilla/javascript/NativeDate;->timeZoneFormatter:Ljava/text/DateFormat;

    if-nez v0, :cond_2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "zzz"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->timeZoneFormatter:Ljava/text/DateFormat;

    :cond_2
    const-wide/16 v3, 0x0

    cmpg-double v0, p0, v3

    if-gez v0, :cond_3

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/NativeDate;->EquivalentYear(I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v2

    int-to-double v2, v2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v4

    int-to-double v4, v4

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p0

    :cond_3
    const-string v0, " ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/util/Date;

    double-to-long v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sget-object v1, Lorg/mozilla/javascript/NativeDate;->timeZoneFormatter:Ljava/text/DateFormat;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lorg/mozilla/javascript/NativeDate;->timeZoneFormatter:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v3, " GMT-"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    neg-int v0, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static date_msecFromArgs([Ljava/lang/Object;)D
    .locals 14

    const/4 v8, 0x7

    const/4 v7, 0x2

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    new-array v12, v8, [D

    move v0, v1

    :goto_0
    if-ge v0, v8, :cond_4

    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    cmpl-double v4, v2, v2

    if-nez v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    :goto_1
    return-wide v0

    :cond_1
    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v2

    aput-wide v2, v12, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-ne v0, v7, :cond_3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v12, v0

    goto :goto_2

    :cond_3
    aput-wide v5, v12, v0

    goto :goto_2

    :cond_4
    aget-wide v2, v12, v1

    cmpl-double v0, v2, v5

    if-ltz v0, :cond_5

    aget-wide v2, v12, v1

    const-wide v4, 0x4058c00000000000L    # 99.0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_5

    aget-wide v2, v12, v1

    const-wide v4, 0x409db00000000000L    # 1900.0

    add-double/2addr v2, v4

    aput-wide v2, v12, v1

    :cond_5
    aget-wide v0, v12, v1

    const/4 v2, 0x1

    aget-wide v2, v12, v2

    aget-wide v4, v12, v7

    const/4 v6, 0x3

    aget-wide v6, v12, v6

    const/4 v8, 0x4

    aget-wide v8, v12, v8

    const/4 v10, 0x5

    aget-wide v10, v12, v10

    const/4 v13, 0x6

    aget-wide v12, v12, v13

    invoke-static/range {v0 .. v13}, Lorg/mozilla/javascript/NativeDate;->date_msecFromDate(DDDDDDD)D

    move-result-wide v0

    goto :goto_1
.end method

.method private static date_msecFromDate(DDDDDDD)D
    .locals 4

    invoke-static/range {p0 .. p5}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v0

    invoke-static/range {p6 .. p13}, Lorg/mozilla/javascript/NativeDate;->MakeTime(DDDD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static date_parseString(Ljava/lang/String;)D
    .locals 24

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_0

    sget-object v3, Lorg/mozilla/javascript/NativeDate;->isoFormat:Ljava/text/DateFormat;

    monitor-enter v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lorg/mozilla/javascript/NativeDate;->isoFormat:Ljava/text/DateFormat;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v2

    long-to-double v2, v2

    :goto_0
    return-wide v2

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    :cond_0
    const/4 v14, -0x1

    const/4 v13, -0x1

    const/4 v12, -0x1

    const/4 v11, -0x1

    const/4 v10, -0x1

    const/4 v9, -0x1

    const/4 v2, 0x0

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v19, v4

    :cond_1
    :goto_1
    move/from16 v0, v20

    if-ge v2, v0, :cond_2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x20

    if-le v4, v3, :cond_2

    const/16 v3, 0x2c

    if-eq v4, v3, :cond_2

    const/16 v3, 0x2d

    if-ne v4, v3, :cond_3

    :cond_2
    move/from16 v0, v20

    if-ge v2, v0, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    const/16 v5, 0x30

    if-gt v5, v3, :cond_1

    const/16 v5, 0x39

    if-gt v3, v5, :cond_1

    move/from16 v19, v4

    goto :goto_1

    :cond_3
    const/16 v3, 0x28

    if-ne v4, v3, :cond_6

    const/4 v3, 0x1

    move/from16 v22, v3

    move v3, v2

    move/from16 v2, v22

    :cond_4
    :goto_2
    move/from16 v0, v20

    if-ge v3, v0, :cond_36

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x28

    if-ne v4, v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/16 v5, 0x29

    if-ne v4, v5, :cond_4

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_4

    move v2, v3

    goto :goto_1

    :cond_6
    const/16 v3, 0x30

    if-gt v3, v4, :cond_1f

    const/16 v3, 0x39

    if-gt v4, v3, :cond_1f

    add-int/lit8 v3, v4, -0x30

    move v15, v2

    move v2, v3

    move v3, v4

    :goto_3
    move/from16 v0, v20

    if-ge v15, v0, :cond_7

    const/16 v4, 0x30

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v4, v3, :cond_7

    const/16 v4, 0x39

    if-gt v3, v4, :cond_7

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v4, v15, 0x1

    move v15, v4

    goto :goto_3

    :cond_7
    const/16 v4, 0x2b

    move/from16 v0, v19

    if-eq v0, v4, :cond_8

    const/16 v4, 0x2d

    move/from16 v0, v19

    if-ne v0, v4, :cond_c

    :cond_8
    const/4 v3, 0x1

    const/16 v4, 0x18

    if-ge v2, v4, :cond_a

    mul-int/lit8 v2, v2, 0x3c

    :goto_4
    const/16 v4, 0x2b

    move/from16 v0, v19

    if-ne v0, v4, :cond_9

    neg-int v2, v2

    :cond_9
    const-wide/16 v4, 0x0

    cmpl-double v4, v16, v4

    if-eqz v4, :cond_b

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v4, v16, v4

    if-eqz v4, :cond_b

    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    :cond_a
    rem-int/lit8 v4, v2, 0x64

    div-int/lit8 v2, v2, 0x64

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, v4

    goto :goto_4

    :cond_b
    int-to-double v4, v2

    move v2, v3

    move v6, v10

    move v7, v11

    move v8, v12

    move v10, v14

    move-wide/from16 v22, v4

    move-wide/from16 v3, v22

    move v5, v9

    move v9, v13

    :goto_5
    const/4 v11, 0x0

    move/from16 v19, v11

    move-wide/from16 v16, v3

    move v12, v8

    move v13, v9

    move v14, v10

    move v10, v6

    move v11, v7

    move v8, v2

    move v9, v5

    move v2, v15

    goto/16 :goto_1

    :cond_c
    const/16 v4, 0x46

    if-ge v2, v4, :cond_d

    const/16 v4, 0x2f

    move/from16 v0, v19

    if-ne v0, v4, :cond_12

    if-ltz v13, :cond_12

    if-ltz v12, :cond_12

    if-gez v14, :cond_12

    :cond_d
    if-ltz v14, :cond_e

    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    :cond_e
    const/16 v4, 0x20

    if-le v3, v4, :cond_f

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_f

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_f

    move/from16 v0, v20

    if-lt v15, v0, :cond_11

    :cond_f
    const/16 v3, 0x64

    if-ge v2, v3, :cond_10

    add-int/lit16 v2, v2, 0x76c

    :cond_10
    move-wide/from16 v3, v16

    move v5, v9

    move v6, v10

    move v7, v11

    move v9, v13

    move v10, v2

    move v2, v8

    move v8, v12

    goto :goto_5

    :cond_11
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    :cond_12
    const/16 v4, 0x3a

    if-ne v3, v4, :cond_15

    if-gez v11, :cond_13

    move-wide/from16 v3, v16

    move v5, v9

    move v6, v10

    move v7, v2

    move v2, v8

    move v9, v13

    move v10, v14

    move v8, v12

    goto :goto_5

    :cond_13
    if-gez v10, :cond_14

    move-wide/from16 v3, v16

    move v5, v9

    move v6, v2

    move v7, v11

    move v10, v14

    move v9, v13

    move v2, v8

    move v8, v12

    goto :goto_5

    :cond_14
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    :cond_15
    const/16 v4, 0x2f

    if-ne v3, v4, :cond_18

    if-gez v13, :cond_16

    add-int/lit8 v2, v2, -0x1

    move-wide/from16 v3, v16

    move v5, v9

    move v6, v10

    move v7, v11

    move v9, v2

    move v10, v14

    move v2, v8

    move v8, v12

    goto :goto_5

    :cond_16
    if-gez v12, :cond_17

    move-wide/from16 v3, v16

    move v5, v9

    move v6, v10

    move v7, v11

    move v9, v13

    move v10, v14

    move/from16 v22, v8

    move v8, v2

    move/from16 v2, v22

    goto/16 :goto_5

    :cond_17
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    :cond_18
    move/from16 v0, v20

    if-ge v15, v0, :cond_19

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_19

    const/16 v4, 0x20

    if-le v3, v4, :cond_19

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_19

    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    :cond_19
    if-eqz v8, :cond_1b

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_1b

    const-wide/16 v3, 0x0

    cmpg-double v3, v16, v3

    if-gez v3, :cond_1a

    int-to-double v2, v2

    sub-double v2, v16, v2

    move v5, v9

    move v6, v10

    move v7, v11

    move v9, v13

    move v10, v14

    move-wide/from16 v22, v2

    move-wide/from16 v3, v22

    move v2, v8

    move v8, v12

    goto/16 :goto_5

    :cond_1a
    int-to-double v2, v2

    add-double v2, v2, v16

    move v5, v9

    move v6, v10

    move v7, v11

    move v9, v13

    move v10, v14

    move-wide/from16 v22, v2

    move-wide/from16 v3, v22

    move v2, v8

    move v8, v12

    goto/16 :goto_5

    :cond_1b
    if-ltz v11, :cond_1c

    if-gez v10, :cond_1c

    move-wide/from16 v3, v16

    move v5, v9

    move v6, v2

    move v7, v11

    move v10, v14

    move v9, v13

    move v2, v8

    move v8, v12

    goto/16 :goto_5

    :cond_1c
    if-ltz v10, :cond_1d

    if-gez v9, :cond_1d

    move-wide/from16 v3, v16

    move v5, v2

    move v6, v10

    move v7, v11

    move v9, v13

    move v2, v8

    move v10, v14

    move v8, v12

    goto/16 :goto_5

    :cond_1d
    if-gez v12, :cond_1e

    move-wide/from16 v3, v16

    move v5, v9

    move v6, v10

    move v7, v11

    move v9, v13

    move v10, v14

    move/from16 v22, v8

    move v8, v2

    move/from16 v2, v22

    goto/16 :goto_5

    :cond_1e
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    :cond_1f
    const/16 v3, 0x2f

    if-eq v4, v3, :cond_20

    const/16 v3, 0x3a

    if-eq v4, v3, :cond_20

    const/16 v3, 0x2b

    if-eq v4, v3, :cond_20

    const/16 v3, 0x2d

    if-ne v4, v3, :cond_21

    :cond_20
    move/from16 v19, v4

    goto/16 :goto_1

    :cond_21
    add-int/lit8 v6, v2, -0x1

    move/from16 v18, v2

    :goto_6
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_23

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-gt v3, v2, :cond_22

    const/16 v3, 0x5a

    if-le v2, v3, :cond_24

    :cond_22
    const/16 v3, 0x61

    if-gt v3, v2, :cond_23

    const/16 v3, 0x7a

    if-le v2, v3, :cond_24

    :cond_23
    sub-int v7, v18, v6

    const/4 v2, 0x2

    if-ge v7, v2, :cond_25

    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    :cond_24
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto :goto_6

    :cond_25
    const-string v2, "am;pm;monday;tuesday;wednesday;thursday;friday;saturday;sunday;january;february;march;april;may;june;july;august;september;october;november;december;gmt;ut;utc;est;edt;cst;cdt;mst;mdt;pst;pdt;"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v15, v3

    :goto_7
    const/16 v3, 0x3b

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v21

    if-gez v21, :cond_26

    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    :cond_26
    const/4 v3, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v2, 0x2

    if-ge v15, v2, :cond_2c

    const/16 v2, 0xc

    if-gt v11, v2, :cond_27

    if-gez v11, :cond_29

    :cond_27
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    :cond_28
    add-int/lit8 v4, v21, 0x1

    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto :goto_7

    :cond_29
    if-nez v15, :cond_2b

    const/16 v2, 0xc

    if-ne v11, v2, :cond_2a

    const/4 v11, 0x0

    :cond_2a
    :goto_8
    move/from16 v2, v18

    goto/16 :goto_1

    :cond_2b
    const/16 v2, 0xc

    if-eq v11, v2, :cond_2a

    add-int/lit8 v11, v11, 0xc

    goto :goto_8

    :cond_2c
    add-int/lit8 v2, v15, -0x2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_2a

    add-int/lit8 v2, v2, -0x7

    const/16 v3, 0xc

    if-ge v2, v3, :cond_2e

    if-gez v13, :cond_2d

    move v13, v2

    goto :goto_8

    :cond_2d
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    :cond_2e
    add-int/lit8 v2, v2, -0xc

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_8

    :pswitch_0
    const-wide/16 v16, 0x0

    goto :goto_8

    :pswitch_1
    const-wide/16 v16, 0x0

    goto :goto_8

    :pswitch_2
    const-wide/16 v16, 0x0

    goto :goto_8

    :pswitch_3
    const-wide v16, 0x4072c00000000000L    # 300.0

    goto :goto_8

    :pswitch_4
    const-wide/high16 v16, 0x406e000000000000L    # 240.0

    goto :goto_8

    :pswitch_5
    const-wide v16, 0x4076800000000000L    # 360.0

    goto :goto_8

    :pswitch_6
    const-wide v16, 0x4072c00000000000L    # 300.0

    goto :goto_8

    :pswitch_7
    const-wide v16, 0x407a400000000000L    # 420.0

    goto :goto_8

    :pswitch_8
    const-wide v16, 0x4076800000000000L    # 360.0

    goto :goto_8

    :pswitch_9
    const-wide/high16 v16, 0x407e000000000000L    # 480.0

    goto :goto_8

    :pswitch_a
    const-wide v16, 0x407a400000000000L    # 420.0

    goto :goto_8

    :cond_2f
    if-ltz v14, :cond_30

    if-ltz v13, :cond_30

    if-gez v12, :cond_31

    :cond_30
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    :cond_31
    if-gez v9, :cond_35

    const/4 v9, 0x0

    move v15, v9

    :goto_9
    if-gez v10, :cond_32

    const/4 v10, 0x0

    :cond_32
    if-gez v11, :cond_33

    const/4 v11, 0x0

    :cond_33
    int-to-double v2, v14

    int-to-double v4, v13

    int-to-double v6, v12

    int-to-double v8, v11

    int-to-double v10, v10

    int-to-double v12, v15

    const-wide/16 v14, 0x0

    invoke-static/range {v2 .. v15}, Lorg/mozilla/javascript/NativeDate;->date_msecFromDate(DDDDDDD)D

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v4, v16, v4

    if-nez v4, :cond_34

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide v2

    goto/16 :goto_0

    :cond_34
    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    mul-double v4, v4, v16

    add-double/2addr v2, v4

    goto/16 :goto_0

    :cond_35
    move v15, v9

    goto :goto_9

    :cond_36
    move v2, v3

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/NativeDate;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeDate;-><init>()V

    sget-wide v1, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/NativeDate;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private static internalUTC(D)D
    .locals 4

    sget-wide v0, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    sub-double v0, p0, v0

    sget-wide v2, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    sub-double v2, p0, v2

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->DaylightSavingTA(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private static jsConstructor([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    new-instance v2, Lorg/mozilla/javascript/NativeDate;

    invoke-direct {v2}, Lorg/mozilla/javascript/NativeDate;-><init>()V

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->now()D

    move-result-wide v0

    iput-wide v0, v2, Lorg/mozilla/javascript/NativeDate;->date:D

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    aget-object v0, p0, v0

    instance-of v1, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/NativeDate;->date_parseString(Ljava/lang/String;)D

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v0

    iput-wide v0, v2, Lorg/mozilla/javascript/NativeDate;->date:D

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->date_msecFromArgs([Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v0

    :cond_4
    iput-wide v0, v2, Lorg/mozilla/javascript/NativeDate;->date:D

    move-object v0, v2

    goto :goto_0
.end method

.method private static jsStaticFunction_UTC([Ljava/lang/Object;)D
    .locals 2

    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->date_msecFromArgs([Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static js_toUTCString(D)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3a

    const/16 v4, 0x20

    const/4 v3, 0x2

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x3c

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->WeekDay(D)I

    move-result v0

    invoke-static {v1, v0}, Lorg/mozilla/javascript/NativeDate;->appendWeekDayName(Ljava/lang/StringBuffer;I)V

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v0

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v0

    invoke-static {v1, v0}, Lorg/mozilla/javascript/NativeDate;->appendMonthName(Ljava/lang/StringBuffer;I)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int v0, v0

    :cond_0
    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result v0

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v0

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result v0

    invoke-static {v1, v0, v3}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    const-string v0, " GMT"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeDate(D[Ljava/lang/Object;I)D
    .locals 11

    const/4 v0, 0x1

    packed-switch p3, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    move v6, v0

    move v4, v1

    :goto_0
    const/4 v0, 0x3

    new-array v8, v0, [D

    array-length v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->padArguments([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_3

    if-ge v0, v4, :cond_3

    aget-object v1, p2, v0

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    aput-wide v1, v8, v0

    aget-wide v1, v8, v0

    aget-wide v9, v8, v0

    cmpl-double v1, v1, v9

    if-nez v1, :cond_1

    aget-wide v1, v8, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    :goto_2
    return-wide v0

    :pswitch_0
    const/4 v0, 0x0

    :pswitch_1
    const/4 v1, 0x1

    move v6, v0

    move v4, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    :pswitch_3
    const/4 v1, 0x2

    move v6, v0

    move v4, v1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    :pswitch_5
    const/4 v1, 0x3

    move v6, v0

    move v4, v1

    goto :goto_0

    :cond_2
    aget-wide v1, v8, v0

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(D)D

    move-result-wide v1

    aput-wide v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_7

    array-length v0, p2

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto :goto_2

    :cond_4
    const-wide/16 p0, 0x0

    :cond_5
    :goto_3
    const/4 v2, 0x0

    array-length v9, p2

    const/4 v0, 0x3

    if-lt v4, v0, :cond_8

    if-ge v2, v9, :cond_8

    const/4 v7, 0x1

    aget-wide v0, v8, v2

    :goto_4
    const/4 v2, 0x2

    if-lt v4, v2, :cond_9

    if-ge v7, v9, :cond_9

    add-int/lit8 v5, v7, 0x1

    aget-wide v2, v8, v7

    :goto_5
    const/4 v7, 0x1

    if-lt v4, v7, :cond_a

    if-ge v5, v9, :cond_a

    add-int/lit8 v4, v5, 0x1

    aget-wide v4, v8, v5

    :goto_6
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide v0

    if-eqz v6, :cond_6

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide v0

    :cond_6
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v0

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_5

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide p0

    goto :goto_3

    :cond_8
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v0

    int-to-double v0, v0

    move v7, v2

    goto :goto_4

    :cond_9
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v2

    int-to-double v2, v2

    move v5, v7

    goto :goto_5

    :cond_a
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v4

    int-to-double v4, v4

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static makeTime(D[Ljava/lang/Object;I)D
    .locals 12

    const/4 v0, 0x1

    packed-switch p3, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    move v8, v0

    move v6, v1

    :goto_0
    const/4 v0, 0x4

    new-array v10, v0, [D

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    :goto_1
    return-wide p0

    :pswitch_0
    const/4 v0, 0x0

    :pswitch_1
    const/4 v1, 0x1

    move v8, v0

    move v6, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    :pswitch_3
    const/4 v1, 0x2

    move v8, v0

    move v6, v1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    :pswitch_5
    const/4 v1, 0x3

    move v8, v0

    move v6, v1

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x0

    :pswitch_7
    const/4 v1, 0x4

    move v8, v0

    move v6, v1

    goto :goto_0

    :cond_0
    array-length v0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->padArguments([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_4

    if-ge v0, v6, :cond_4

    aget-object v1, p2, v0

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    aput-wide v1, v10, v0

    aget-wide v1, v10, v0

    aget-wide v3, v10, v0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    aget-wide v1, v10, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    sget-wide p0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto :goto_1

    :cond_3
    aget-wide v1, v10, v0

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(D)D

    move-result-wide v1

    aput-wide v1, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_5

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide p0

    :cond_5
    const/4 v2, 0x0

    array-length v11, p2

    const/4 v0, 0x4

    if-lt v6, v0, :cond_7

    if-ge v2, v11, :cond_7

    const/4 v4, 0x1

    aget-wide v0, v10, v2

    :goto_3
    const/4 v2, 0x3

    if-lt v6, v2, :cond_8

    if-ge v4, v11, :cond_8

    add-int/lit8 v9, v4, 0x1

    aget-wide v2, v10, v4

    :goto_4
    const/4 v4, 0x2

    if-lt v6, v4, :cond_9

    if-ge v9, v11, :cond_9

    add-int/lit8 v7, v9, 0x1

    aget-wide v4, v10, v9

    :goto_5
    const/4 v9, 0x1

    if-lt v6, v9, :cond_a

    if-ge v7, v11, :cond_a

    add-int/lit8 v6, v7, 0x1

    aget-wide v6, v10, v7

    :goto_6
    invoke-static/range {v0 .. v7}, Lorg/mozilla/javascript/NativeDate;->MakeTime(DDDD)D

    move-result-wide v0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide v0

    if-eqz v8, :cond_6

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide v0

    :cond_6
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide p0

    goto/16 :goto_1

    :cond_7
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result v0

    int-to-double v0, v0

    move v4, v2

    goto :goto_3

    :cond_8
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v2

    int-to-double v2, v2

    move v9, v4

    goto :goto_4

    :cond_9
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result v4

    int-to-double v4, v4

    move v7, v9

    goto :goto_5

    :cond_a
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->msFromTime(D)I

    move-result v6

    int-to-double v6, v6

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private static msFromTime(D)I
    .locals 6

    const-wide v4, 0x408f400000000000L    # 1000.0

    rem-double v0, p0, v4

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    add-double/2addr v0, v4

    :cond_0
    double-to-int v0, v0

    return v0
.end method

.method private static now()D
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method private toISOString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeDate;->date:D

    iget-wide v2, p0, Lorg/mozilla/javascript/NativeDate;->date:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    sget-object v1, Lorg/mozilla/javascript/NativeDate;->isoFormat:Ljava/text/DateFormat;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->isoFormat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lorg/mozilla/javascript/NativeDate;->date:D

    double-to-long v3, v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const-string v0, "msg.invalid.date"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangeError"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method

.method private static toLocale_helper(DI)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->localeDateTimeFormatter:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->localeDateTimeFormatter:Ljava/text/DateFormat;

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->localeDateTimeFormatter:Ljava/text/DateFormat;

    :goto_0
    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/Date;

    double-to-long v2, p0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :pswitch_1
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->localeTimeFormatter:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->localeTimeFormatter:Ljava/text/DateFormat;

    :cond_1
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->localeTimeFormatter:Ljava/text/DateFormat;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->localeDateFormatter:Ljava/text/DateFormat;

    if-nez v0, :cond_2

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->localeDateFormatter:Ljava/text/DateFormat;

    :cond_2
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->localeDateFormatter:Ljava/text/DateFormat;

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const-wide v8, 0x409db00000000000L    # 1900.0

    sget-object v0, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    instance-of v0, p4, Lorg/mozilla/javascript/NativeDate;

    if-nez v0, :cond_8

    invoke-static {p1}, Lorg/mozilla/javascript/NativeDate;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :sswitch_0
    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->now()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {p5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/NativeDate;->date_parseString(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {p5}, Lorg/mozilla/javascript/NativeDate;->jsStaticFunction_UTC([Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    if-eqz p4, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->now()D

    move-result-wide v0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->date_format(DI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p5}, Lorg/mozilla/javascript/NativeDate;->jsConstructor([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    instance-of v0, p4, Lorg/mozilla/javascript/NativeDate;

    if-eqz v0, :cond_3

    check-cast p4, Lorg/mozilla/javascript/NativeDate;

    invoke-direct {p4}, Lorg/mozilla/javascript/NativeDate;->toISOString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toPrimitive(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v2, v2

    if-nez v0, :cond_4

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const-string v0, "toISOString"

    invoke-interface {v1, v0, v1}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lorg/mozilla/javascript/NativeDate;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v2, :cond_6

    const-string v0, "msg.function.not.found.in"

    const-string v2, "toISOString"

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_6
    instance-of v2, v0, Lorg/mozilla/javascript/Callable;

    if-nez v2, :cond_7

    const-string v2, "msg.isnt.function.in"

    const-string v3, "toISOString"

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_7
    check-cast v0, Lorg/mozilla/javascript/Callable;

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v0, p2, p3, v1, v2}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isPrimitive(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "msg.toisostring.must.return.primitive"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_8
    check-cast p4, Lorg/mozilla/javascript/NativeDate;

    iget-wide v0, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    cmpl-double v3, v0, v0

    if-nez v3, :cond_9

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->date_format(DI)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string v0, "Invalid Date"

    goto/16 :goto_0

    :pswitch_1
    cmpl-double v3, v0, v0

    if-nez v3, :cond_a

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->toLocale_helper(DI)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v0, "Invalid Date"

    goto/16 :goto_0

    :pswitch_2
    cmpl-double v2, v0, v0

    if-nez v2, :cond_b

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->js_toUTCString(D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string v0, "Invalid Date"

    goto/16 :goto_0

    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(new Date("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    cmpl-double v3, v0, v0

    if-nez v3, :cond_d

    const/16 v3, 0xe

    if-eq v2, v3, :cond_c

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v0

    :cond_c
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v0

    int-to-double v0, v0

    const/16 v3, 0xc

    if-ne v2, v3, :cond_d

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_e

    cmpg-double v2, v8, v0

    if-gtz v2, :cond_d

    const-wide v2, 0x409f400000000000L    # 2000.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_d

    sub-double/2addr v0, v8

    :cond_d
    :goto_1
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    sub-double/2addr v0, v8

    goto :goto_1

    :pswitch_6
    cmpl-double v3, v0, v0

    if-nez v3, :cond_10

    const/16 v3, 0xf

    if-ne v2, v3, :cond_f

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v0

    :cond_f
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v0

    int-to-double v0, v0

    :cond_10
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    cmpl-double v3, v0, v0

    if-nez v3, :cond_12

    const/16 v3, 0x11

    if-ne v2, v3, :cond_11

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v0

    :cond_11
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v0

    int-to-double v0, v0

    :cond_12
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    cmpl-double v3, v0, v0

    if-nez v3, :cond_14

    const/16 v3, 0x13

    if-ne v2, v3, :cond_13

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v0

    :cond_13
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->WeekDay(D)I

    move-result v0

    int-to-double v0, v0

    :cond_14
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    cmpl-double v3, v0, v0

    if-nez v3, :cond_16

    const/16 v3, 0x15

    if-ne v2, v3, :cond_15

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v0

    :cond_15
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result v0

    int-to-double v0, v0

    :cond_16
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    cmpl-double v3, v0, v0

    if-nez v3, :cond_18

    const/16 v3, 0x17

    if-ne v2, v3, :cond_17

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v0

    :cond_17
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v0

    int-to-double v0, v0

    :cond_18
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    cmpl-double v3, v0, v0

    if-nez v3, :cond_1a

    const/16 v3, 0x19

    if-ne v2, v3, :cond_19

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v0

    :cond_19
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result v0

    int-to-double v0, v0

    :cond_1a
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    cmpl-double v3, v0, v0

    if-nez v3, :cond_1c

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_1b

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v0

    :cond_1b
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->msFromTime(D)I

    move-result v0

    int-to-double v0, v0

    :cond_1c
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    cmpl-double v2, v0, v0

    if-nez v2, :cond_1d

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v0, v2

    :cond_1d
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    invoke-static {p5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v0

    iput-wide v0, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_f
    invoke-static {v0, v1, p5, v2}, Lorg/mozilla/javascript/NativeDate;->makeTime(D[Ljava/lang/Object;I)D

    move-result-wide v0

    iput-wide v0, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_10
    invoke-static {v0, v1, p5, v2}, Lorg/mozilla/javascript/NativeDate;->makeDate(D[Ljava/lang/Object;I)D

    move-result-wide v0

    iput-wide v0, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_11
    invoke-static {p5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v2

    cmpl-double v6, v2, v2

    if-nez v6, :cond_1e

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_1f

    :cond_1e
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    :goto_2
    iput-wide v0, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto/16 :goto_0

    :cond_1f
    cmpl-double v6, v0, v0

    if-eqz v6, :cond_20

    move-wide v6, v4

    :goto_3
    cmpl-double v0, v2, v4

    if-ltz v0, :cond_21

    const-wide v0, 0x4058c00000000000L    # 99.0

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_21

    add-double v0, v2, v8

    :goto_4
    invoke-static {v6, v7}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v6, v7}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v4

    int-to-double v4, v4

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v0

    invoke-static {v6, v7}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v0

    goto :goto_2

    :cond_20
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v0

    move-wide v6, v0

    goto :goto_3

    :pswitch_12
    invoke-direct {p4}, Lorg/mozilla/javascript/NativeDate;->toISOString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_21
    move-wide v0, v2

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2f -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 7

    const/4 v6, 0x1

    sget-object v2, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    const/4 v3, -0x3

    const-string v4, "now"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeDate;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    const/4 v3, -0x2

    const-string v4, "parse"

    move-object v0, p0

    move-object v1, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeDate;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    sget-object v2, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    const/4 v3, -0x1

    const-string v4, "UTC"

    move-object v0, p0

    move-object v1, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeDate;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 8

    const/16 v6, 0x74

    const/4 v2, 0x3

    const/16 v5, 0x73

    const/16 v4, 0x67

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v2, v1

    move v1, v0

    :goto_0
    if-eqz v2, :cond_1a

    if-eq v2, p1, :cond_1a

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    const-string v1, "getDay"

    const/16 v2, 0x13

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto :goto_0

    :cond_1
    if-ne v2, v6, :cond_0

    const-string v1, "toJSON"

    const/16 v2, 0x2f

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move-object v2, v1

    move v1, v0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    const-string v1, "getDate"

    const/16 v2, 0x11

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto :goto_0

    :cond_2
    if-ne v2, v5, :cond_0

    const-string v1, "setDate"

    const/16 v2, 0x27

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_3

    const-string v1, "getTime"

    const/16 v2, 0xb

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto :goto_0

    :cond_3
    if-ne v2, v5, :cond_0

    const-string v1, "setTime"

    const/16 v2, 0x1e

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_4

    const-string v1, "getYear"

    const/16 v2, 0xc

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto :goto_0

    :cond_4
    if-ne v2, v5, :cond_0

    const-string v1, "setYear"

    const/16 v2, 0x2d

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto :goto_0

    :sswitch_3
    const-string v1, "valueOf"

    const/16 v2, 0xa

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    move-object v2, v1

    move v1, v0

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_5

    const-string v1, "getHours"

    const/16 v2, 0x15

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_5
    if-ne v2, v5, :cond_0

    const-string v1, "setHours"

    const/16 v2, 0x25

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_6

    const-string v1, "getMonth"

    const/16 v2, 0xf

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_6
    if-ne v2, v5, :cond_0

    const-string v1, "setMonth"

    const/16 v2, 0x29

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "toSource"

    const/16 v2, 0x9

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "toString"

    const/4 v2, 0x2

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_4
    const-string v1, "getUTCDay"

    const/16 v2, 0x14

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_7

    const-string v1, "getMinutes"

    const/16 v2, 0x17

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_7
    if-ne v2, v5, :cond_0

    const-string v1, "setMinutes"

    const/16 v2, 0x23

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x53

    if-ne v2, v3, :cond_a

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_9

    const-string v1, "getSeconds"

    const/16 v2, 0x19

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_9
    if-ne v2, v5, :cond_0

    const-string v1, "setSeconds"

    const/16 v2, 0x21

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x55

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_b

    const-string v1, "getUTCDate"

    const/16 v2, 0x12

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_b
    if-ne v2, v5, :cond_0

    const-string v1, "setUTCDate"

    const/16 v2, 0x28

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_2

    move-object v2, v1

    move v1, v0

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_c

    const-string v1, "getFullYear"

    const/16 v2, 0xd

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_c
    if-ne v2, v5, :cond_0

    const-string v1, "setFullYear"

    const/16 v2, 0x2b

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "toGMTString"

    const/16 v2, 0x8

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "toISOString"

    const/16 v2, 0x2e

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "toUTCString"

    const/16 v2, 0x8

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_e

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_d

    const-string v1, "getUTCHours"

    const/16 v2, 0x16

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_d
    if-ne v2, v6, :cond_0

    const-string v1, "getUTCMonth"

    const/16 v2, 0x10

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_e
    if-ne v2, v5, :cond_0

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_f

    const-string v1, "setUTCHours"

    const/16 v2, 0x26

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_f
    if-ne v2, v6, :cond_0

    const-string v1, "setUTCMonth"

    const/16 v2, 0x2a

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "constructor"

    const/4 v2, 0x1

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_7
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x44

    if-ne v3, v4, :cond_10

    const-string v1, "toDateString"

    const/4 v2, 0x4

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_10
    const/16 v4, 0x54

    if-ne v3, v4, :cond_0

    const-string v1, "toTimeString"

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_12

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_11

    const-string v1, "getUTCMinutes"

    const/16 v2, 0x18

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x53

    if-ne v2, v3, :cond_0

    const-string v1, "getUTCSeconds"

    const/16 v2, 0x1a

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_12
    if-ne v2, v5, :cond_0

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_13

    const-string v1, "setUTCMinutes"

    const/16 v2, 0x24

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x53

    if-ne v2, v3, :cond_0

    const-string v1, "setUTCSeconds"

    const/16 v2, 0x22

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_14

    const-string v1, "getUTCFullYear"

    const/16 v2, 0xe

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_14
    if-ne v2, v5, :cond_15

    const-string v1, "setUTCFullYear"

    const/16 v2, 0x2c

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_15
    if-ne v2, v6, :cond_0

    const-string v1, "toLocaleString"

    const/4 v2, 0x5

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_16

    const-string v1, "getMilliseconds"

    const/16 v2, 0x1b

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_16
    if-ne v2, v5, :cond_0

    const-string v1, "setMilliseconds"

    const/16 v2, 0x1f

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_b
    const-string v1, "getTimezoneOffset"

    const/16 v2, 0x1d

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_17

    const-string v1, "getUTCMilliseconds"

    const/16 v2, 0x1c

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_17
    if-ne v2, v5, :cond_18

    const-string v1, "setUTCMilliseconds"

    const/16 v2, 0x20

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_18
    if-ne v2, v6, :cond_0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x44

    if-ne v2, v3, :cond_19

    const-string v1, "toLocaleDateString"

    const/4 v2, 0x7

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_19
    const/16 v3, 0x54

    if-ne v2, v3, :cond_0

    const-string v1, "toLocaleTimeString"

    const/4 v2, 0x6

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_1a
    move v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x54 -> :sswitch_1
        0x59 -> :sswitch_2
        0x75 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x48 -> :sswitch_4
        0x4d -> :sswitch_5
        0x6f -> :sswitch_6
        0x74 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x46 -> :sswitch_8
        0x4d -> :sswitch_9
        0x53 -> :sswitch_a
        0x54 -> :sswitch_b
        0x55 -> :sswitch_c
        0x73 -> :sswitch_d
    .end sparse-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Date"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getJSTimeValue()D
    .locals 2

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-wide v0
.end method

.method protected initPrototypeId(I)V
    .locals 6

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "constructor"

    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeDate;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    return-void

    :pswitch_1
    const-string v0, "toString"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_2
    const-string v0, "toTimeString"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_3
    const-string v0, "toDateString"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_4
    const-string v0, "toLocaleString"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_5
    const-string v0, "toLocaleTimeString"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_6
    const-string v0, "toLocaleDateString"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_7
    const-string v0, "toUTCString"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_8
    const-string v0, "toSource"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_9
    const-string v0, "valueOf"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_a
    const-string v0, "getTime"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_b
    const-string v0, "getYear"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_c
    const-string v0, "getFullYear"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_d
    const-string v0, "getUTCFullYear"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_e
    const-string v0, "getMonth"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_f
    const-string v0, "getUTCMonth"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_10
    const-string v0, "getDate"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_11
    const-string v0, "getUTCDate"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_12
    const-string v0, "getDay"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_13
    const-string v0, "getUTCDay"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_14
    const-string v0, "getHours"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_15
    const-string v0, "getUTCHours"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto/16 :goto_0

    :pswitch_16
    const-string v0, "getMinutes"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto/16 :goto_0

    :pswitch_17
    const-string v0, "getUTCMinutes"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto/16 :goto_0

    :pswitch_18
    const-string v0, "getSeconds"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto/16 :goto_0

    :pswitch_19
    const-string v0, "getUTCSeconds"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto/16 :goto_0

    :pswitch_1a
    const-string v0, "getMilliseconds"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto/16 :goto_0

    :pswitch_1b
    const-string v0, "getUTCMilliseconds"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto/16 :goto_0

    :pswitch_1c
    const-string v0, "getTimezoneOffset"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto/16 :goto_0

    :pswitch_1d
    const-string v1, "setTime"

    goto/16 :goto_0

    :pswitch_1e
    const-string v1, "setMilliseconds"

    goto/16 :goto_0

    :pswitch_1f
    const-string v1, "setUTCMilliseconds"

    goto/16 :goto_0

    :pswitch_20
    const-string v0, "setSeconds"

    move-object v1, v0

    move v0, v2

    goto/16 :goto_0

    :pswitch_21
    const-string v0, "setUTCSeconds"

    move-object v1, v0

    move v0, v2

    goto/16 :goto_0

    :pswitch_22
    const-string v0, "setMinutes"

    move-object v1, v0

    move v0, v3

    goto/16 :goto_0

    :pswitch_23
    const-string v0, "setUTCMinutes"

    move-object v1, v0

    move v0, v3

    goto/16 :goto_0

    :pswitch_24
    const-string v0, "setHours"

    move-object v1, v0

    move v0, v4

    goto/16 :goto_0

    :pswitch_25
    const-string v0, "setUTCHours"

    move-object v1, v0

    move v0, v4

    goto/16 :goto_0

    :pswitch_26
    const-string v1, "setDate"

    goto/16 :goto_0

    :pswitch_27
    const-string v1, "setUTCDate"

    goto/16 :goto_0

    :pswitch_28
    const-string v0, "setMonth"

    move-object v1, v0

    move v0, v2

    goto/16 :goto_0

    :pswitch_29
    const-string v0, "setUTCMonth"

    move-object v1, v0

    move v0, v2

    goto/16 :goto_0

    :pswitch_2a
    const-string v0, "setFullYear"

    move-object v1, v0

    move v0, v3

    goto/16 :goto_0

    :pswitch_2b
    const-string v0, "setUTCFullYear"

    move-object v1, v0

    move v0, v3

    goto/16 :goto_0

    :pswitch_2c
    const-string v1, "setYear"

    goto/16 :goto_0

    :pswitch_2d
    const-string v0, "toISOString"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto/16 :goto_0

    :pswitch_2e
    const-string v1, "toJSON"

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
    .end packed-switch
.end method
