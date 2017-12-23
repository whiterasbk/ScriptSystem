.class public Lorg/mozilla/javascript/tools/SourceReader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFileOrUrl(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, -0x2

    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {p0}, Lorg/mozilla/javascript/tools/SourceReader;->toUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    const/4 v1, 0x0

    if-nez v5, :cond_3

    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    move-object v2, v3

    move-object v3, v0

    :goto_0
    if-gtz v1, :cond_0

    const/16 v1, 0x1000

    :cond_0
    :try_start_1
    invoke-static {v2, v1}, Lorg/mozilla/javascript/Kit;->readStream(Ljava/io/InputStream;I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    if-nez p1, :cond_6

    move-object v0, v1

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    :try_start_2
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz p1, :cond_4

    new-instance v2, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lorg/mozilla/javascript/commonjs/module/provider/ParsedContentType;->getEncoding()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    const/high16 v6, 0x100000

    if-le v3, v6, :cond_10

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    move v1, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v0

    :cond_6
    if-nez v0, :cond_f

    array-length v0, v1

    const/4 v2, 0x3

    if-le v0, v2, :cond_8

    aget-byte v0, v1, v8

    if-ne v0, v4, :cond_8

    aget-byte v0, v1, v7

    if-ne v0, v9, :cond_8

    aget-byte v0, v1, v10

    if-nez v0, :cond_8

    const/4 v0, 0x3

    aget-byte v0, v1, v0

    if-nez v0, :cond_8

    const-string p2, "UTF-32LE"

    :cond_7
    :goto_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xfeff

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    array-length v0, v1

    const/4 v2, 0x3

    if-le v0, v2, :cond_9

    aget-byte v0, v1, v8

    if-nez v0, :cond_9

    aget-byte v0, v1, v7

    if-nez v0, :cond_9

    aget-byte v0, v1, v10

    if-ne v0, v9, :cond_9

    const/4 v0, 0x3

    aget-byte v0, v1, v0

    if-ne v0, v4, :cond_9

    const-string p2, "UTF-32BE"

    goto :goto_4

    :cond_9
    array-length v0, v1

    if-le v0, v10, :cond_a

    aget-byte v0, v1, v8

    const/16 v2, -0x11

    if-ne v0, v2, :cond_a

    aget-byte v0, v1, v7

    const/16 v2, -0x45

    if-ne v0, v2, :cond_a

    aget-byte v0, v1, v10

    const/16 v2, -0x41

    if-ne v0, v2, :cond_a

    const-string p2, "UTF-8"

    goto :goto_4

    :cond_a
    array-length v0, v1

    if-le v0, v7, :cond_b

    aget-byte v0, v1, v8

    if-ne v0, v4, :cond_b

    aget-byte v0, v1, v7

    if-ne v0, v9, :cond_b

    const-string p2, "UTF-16LE"

    goto :goto_4

    :cond_b
    array-length v0, v1

    if-le v0, v7, :cond_c

    aget-byte v0, v1, v8

    if-ne v0, v9, :cond_c

    aget-byte v0, v1, v7

    if-ne v0, v4, :cond_c

    const-string p2, "UTF-16BE"

    goto :goto_4

    :cond_c
    if-nez p2, :cond_7

    if-nez v5, :cond_d

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_d
    if-eqz v3, :cond_e

    const-string v0, "application/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p2, "UTF-8"

    goto :goto_4

    :cond_e
    const-string p2, "US-ASCII"

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :cond_f
    move-object p2, v0

    goto/16 :goto_4

    :cond_10
    move-object v11, v0

    move-object v0, v2

    move-object v2, v1

    move v1, v3

    move-object v3, v11

    goto/16 :goto_0
.end method

.method public static toUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
