.class public Lwhiter/script/util/BackupUtil;
.super Ljava/lang/Object;
.source "BackupUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwhiter/script/util/BackupUtil$100000000;
    }
.end annotation


# static fields
.field static count:I

.field public static data_dir:Ljava/lang/String;

.field private static zos:Ljava/util/zip/ZipOutputStream;


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lwhiter/script/util/BackupUtil;->data_dir:Ljava/lang/String;

    const/4 v0, 0x0

    check-cast v0, Ljava/util/zip/ZipOutputStream;

    sput-object v0, Lwhiter/script/util/BackupUtil;->zos:Ljava/util/zip/ZipOutputStream;

    const/4 v0, 0x0

    sput v0, Lwhiter/script/util/BackupUtil;->count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$L1000000()Ljava/util/zip/ZipOutputStream;
    .locals 1

    sget-object v0, Lwhiter/script/util/BackupUtil;->zos:Ljava/util/zip/ZipOutputStream;

    return-object v0
.end method

.method static synthetic access$S1000000(Ljava/util/zip/ZipOutputStream;)V
    .locals 0

    sput-object p0, Lwhiter/script/util/BackupUtil;->zos:Ljava/util/zip/ZipOutputStream;

    return-void
.end method

.method public static backup()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/AppProjects/AndroidForJavaScript/ScriptSystem/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lwhiter/script/util/BackupUtil;->data_dir:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lwhiter/script/util/BackupUtil$100000000;

    invoke-direct {v1}, Lwhiter/script/util/BackupUtil$100000000;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 115
    sget-object v1, Lwhiter/script/util/BackupUtil;->zos:Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 117
    const v1, 0x32000

    new-array v1, v1, [B

    .line 118
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 123
    sget v0, Lwhiter/script/util/BackupUtil;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lwhiter/script/util/BackupUtil;->count:I

    .line 127
    :goto_1
    return-void

    .line 120
    :cond_0
    sget-object v3, Lwhiter/script/util/BackupUtil;->zos:Ljava/util/zip/ZipOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 127
    invoke-static {v0}, Lwhiter/script/debug/Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Lwhiter/script/util/BackupUtil;->zos:Ljava/util/zip/ZipOutputStream;

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "drawable-mdpi"

    invoke-static {p0, v0, v1}, Lwhiter/script/util/BackupUtil;->zipping(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lwhiter/script/util/BackupUtil;->zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 84
    sget-object v0, Lwhiter/script/util/BackupUtil;->zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 88
    invoke-static {v0}, Lwhiter/script/debug/Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static zipping(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    .line 101
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 99
    aget-object v2, v1, v0

    .line 101
    invoke-static {p0, v2, p2}, Lwhiter/script/util/BackupUtil;->zipping(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lwhiter/script/util/BackupUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
