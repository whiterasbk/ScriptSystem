.class Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "URLValidator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final entityTags:Ljava/lang/String;

.field private expiry:J

.field private final lastModified:J

.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/net/URLConnection;JLorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->uri:Ljava/net/URI;

    invoke-virtual {p2}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->lastModified:J

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->getEntityTags(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->entityTags:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->calculateExpiry(Ljava/net/URLConnection;JLorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->expiry:J

    return-void
.end method

.method private calculateExpiry(Ljava/net/URLConnection;JLorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;)J
    .locals 9

    const-wide/16 v7, 0x3e8

    const-wide/16 v5, -0x1

    const/4 v4, -0x1

    const-wide/16 v0, 0x0

    const-string v2, "no-cache"

    const-string v3, "Pragma"

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-string v2, "Cache-Control"

    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "no-cache"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->getMaxAge(Ljava/lang/String;)I

    move-result v2

    if-eq v4, v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v5

    sub-long v5, v3, v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-string v5, "Age"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v5, v7

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long v5, v3, p2

    add-long/2addr v0, v5

    sub-long v0, v3, v0

    int-to-long v2, v2

    mul-long/2addr v2, v7

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    const-string v2, "Expires"

    invoke-virtual {p1, v2, v5, v6}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-eqz v4, :cond_3

    move-wide v0, v2

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_0

    invoke-interface {p4, p1}, Lorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;->calculateExpiry(Ljava/net/URLConnection;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getEntityTags(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ETag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMaxAge(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    const-string v1, "max-age"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x3d

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/16 v2, 0x2c

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isResourceChanged(Ljava/net/URLConnection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x130

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->lastModified:J

    invoke-virtual {p1}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method appliesTo(Ljava/net/URI;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->uri:Ljava/net/URI;

    invoke-virtual {v0, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method applyConditionals(Ljava/net/URLConnection;)V
    .locals 4

    iget-wide v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->lastModified:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->lastModified:J

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->entityTags:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->entityTags:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "If-None-Match"

    iget-object v1, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->entityTags:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method entityNeedsRevalidation()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->expiry:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateValidator(Ljava/net/URLConnection;JLorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->isResourceChanged(Ljava/net/URLConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->calculateExpiry(Ljava/net/URLConnection;JLorg/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/mozilla/javascript/commonjs/module/provider/UrlModuleSourceProvider$URLValidator;->expiry:J

    :cond_0
    return v0
.end method
