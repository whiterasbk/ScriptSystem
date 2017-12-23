.class Lorg/mozilla/javascript/TokenStream;
.super Ljava/lang/Object;


# static fields
.field private static final BYTE_ORDER_MARK:C = '\ufeff'

.field private static final EOF_CHAR:I = -0x1


# instance fields
.field private allStrings:Lorg/mozilla/javascript/ObjToIntMap;

.field private commentCursor:I

.field private commentPrefix:Ljava/lang/String;

.field commentType:Lorg/mozilla/javascript/Token$CommentType;

.field cursor:I

.field private dirtyLine:Z

.field private hitEOF:Z

.field private isOctal:Z

.field private lineEndChar:I

.field private lineStart:I

.field lineno:I

.field private number:D

.field private parser:Lorg/mozilla/javascript/Parser;

.field private quoteChar:I

.field regExpFlags:Ljava/lang/String;

.field private sourceBuffer:[C

.field sourceCursor:I

.field private sourceEnd:I

.field private sourceReader:Ljava/io/Reader;

.field private sourceString:Ljava/lang/String;

.field private string:Ljava/lang/String;

.field private stringBuffer:[C

.field private stringBufferTop:I

.field tokenBeg:I

.field tokenEnd:I

.field private final ungetBuffer:[I

.field private ungetCursor:I

.field private xmlIsAttribute:Z

.field private xmlIsTagContent:Z

.field private xmlOpenTagsCount:I


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/Parser;Ljava/io/Reader;Ljava/lang/String;I)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iput-boolean v2, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iput p4, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iput-object p2, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    :goto_0
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    return-void

    :cond_1
    if-nez p3, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2
    iput-object p3, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    goto :goto_0
.end method

.method private addToString(I)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    int-to-char v2, p1

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    return-void
.end method

.method private canUngetChar()Z
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertLastCharToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "\\u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4

    if-ge v0, v3, :cond_0

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fillSourceBuffer()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    array-length v2, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    iget-object v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget-object v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    array-length v4, v4

    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-gez v1, :cond_3

    :goto_1
    return v0

    :cond_2
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private getChar()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->getChar(Z)I

    move-result v0

    return v0
.end method

.method private getChar(Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0xd

    const/4 v5, 0x1

    const/4 v2, -0x1

    const/16 v1, 0xa

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aget v0, v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_1
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ltz v3, :cond_6

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ne v3, v6, :cond_5

    if-ne v0, v1, :cond_5

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v0, v3, :cond_1

    iput-boolean v5, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v0, v3, :cond_4

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    move-result v0

    if-nez v0, :cond_4

    iput-boolean v5, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    move v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    aget-char v0, v0, v3

    goto :goto_1

    :cond_5
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    :cond_6
    const/16 v3, 0x7f

    if-gt v0, v3, :cond_8

    if-eq v0, v1, :cond_7

    if-ne v0, v6, :cond_0

    :cond_7
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    move v0, v1

    goto :goto_0

    :cond_8
    const v3, 0xfeff

    if-eq v0, v3, :cond_0

    if-eqz p1, :cond_9

    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isJSFormatChar(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_9
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    move v0, v1

    goto :goto_0
.end method

.method private getCharIgnoreLineEnd()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v2, -0x1

    const/16 v1, 0xa

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aget v0, v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isJSFormatChar(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v0, v3, :cond_3

    iput-boolean v5, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_1
    const/16 v3, 0x7f

    if-gt v0, v3, :cond_7

    if-eq v0, v1, :cond_4

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    :cond_4
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    move v0, v1

    goto :goto_0

    :cond_5
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v0, v3, :cond_6

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    move-result v0

    if-nez v0, :cond_6

    iput-boolean v5, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    move v0, v2

    goto :goto_0

    :cond_6
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    aget-char v0, v0, v3

    goto :goto_1

    :cond_7
    const v3, 0xfeff

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_8
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    move v0, v1

    goto :goto_0
.end method

.method private getStringFromBuffer()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private static isAlpha(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_2

    const/16 v2, 0x41

    if-gt v2, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v2, 0x61

    if-gt v2, p0, :cond_3

    const/16 v2, 0x7a

    if-le p0, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static isDigit(I)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isJSFormatChar(I)Z
    .locals 2

    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isJSSpace(I)Z
    .locals 4

    const/16 v3, 0xc

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x7f

    if-gt p0, v2, :cond_2

    const/16 v2, 0x20

    if-eq p0, v2, :cond_0

    const/16 v2, 0x9

    if-eq p0, v2, :cond_0

    if-eq p0, v3, :cond_0

    const/16 v2, 0xb

    if-ne p0, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v2, 0xa0

    if-eq p0, v2, :cond_3

    const v2, 0xfeff

    if-eq p0, v2, :cond_3

    int-to-char v2, p0

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v2

    if-ne v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static isKeyword(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lorg/mozilla/javascript/TokenStream;->stringToKeyword(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMarkingComment()Z
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markCommentStart()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->markCommentStart(Ljava/lang/String;)V

    return-void
.end method

.method private markCommentStart(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isRecordingComments()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    :cond_0
    return-void
.end method

.method private matchChar(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getCharIgnoreLineEnd()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private peekChar()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    return v0
.end method

.method private readCDATA()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x5d

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    if-ne v1, v4, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    goto :goto_0

    :cond_2
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private readEntity()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    move v3, v0

    move v0, v1

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v3

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_2
    return v0

    :cond_1
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.XML.bad.form"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private readPI()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    goto :goto_0

    :cond_1
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private readQuotedString(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    goto :goto_0

    :cond_1
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private readXmlComment()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x2d

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    if-ne v1, v4, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    goto :goto_0

    :cond_2
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private skipLine()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    :cond_1
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return-void
.end method

.method private static stringToKeyword(Ljava/lang/String;)I
    .locals 9

    const/16 v3, 0x72

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v1, v0

    :goto_0
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    :cond_1
    :goto_1
    if-nez v1, :cond_e

    :goto_2
    return v0

    :pswitch_1
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x66

    if-ne v1, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x69

    if-ne v1, v3, :cond_0

    const/16 v1, 0x70

    goto :goto_1

    :cond_2
    const/16 v3, 0x6e

    if-ne v1, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x69

    if-ne v1, v3, :cond_0

    const/16 v1, 0x34

    goto :goto_1

    :cond_3
    const/16 v3, 0x6f

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x64

    if-ne v1, v3, :cond_0

    const/16 v1, 0x76

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move v1, v0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_0

    const/16 v1, 0x77

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x74

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6e

    if-ne v3, v4, :cond_0

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x74

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x65

    if-ne v1, v3, :cond_0

    const/16 v1, 0x99

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x77

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x65

    if-ne v1, v3, :cond_0

    const/16 v1, 0x1e

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x79

    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    const/16 v1, 0x51

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x61

    if-ne v1, v3, :cond_0

    const/16 v1, 0x7a

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_1

    move v1, v0

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "byte"

    goto/16 :goto_0

    :sswitch_7
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x65

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x73

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x61

    if-ne v1, v3, :cond_0

    const/16 v1, 0x73

    goto/16 :goto_1

    :cond_4
    if-ne v4, v3, :cond_0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x68

    if-ne v3, v4, :cond_0

    goto/16 :goto_1

    :sswitch_8
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x65

    if-ne v3, v4, :cond_5

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x73

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_0

    const/16 v1, 0x71

    goto/16 :goto_1

    :cond_5
    const/16 v4, 0x6d

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x75

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6e

    if-ne v3, v4, :cond_0

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "goto"

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "long"

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "null"

    const/16 v2, 0x2a

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :sswitch_c
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x65

    if-ne v1, v4, :cond_6

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x75

    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    const/16 v1, 0x2d

    goto/16 :goto_1

    :cond_6
    const/16 v3, 0x73

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x69

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x68

    if-ne v1, v3, :cond_0

    const/16 v1, 0x2b

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "void"

    const/16 v2, 0x7e

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "with"

    const/16 v2, 0x7b

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_5
    move v1, v0

    goto/16 :goto_0

    :pswitch_6
    const-string v2, "class"

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x62

    if-ne v1, v3, :cond_7

    const-string v1, "break"

    const/16 v2, 0x78

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x79

    if-ne v1, v3, :cond_0

    const-string v1, "yield"

    const/16 v2, 0x48

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :pswitch_8
    const-string v1, "while"

    const/16 v2, 0x75

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :pswitch_9
    const-string v1, "false"

    const/16 v2, 0x2c

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x63

    if-ne v3, v4, :cond_8

    const-string v1, "const"

    const/16 v2, 0x9a

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0x66

    if-ne v3, v4, :cond_0

    const-string v2, "final"

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_9

    const-string v2, "float"

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x73

    if-ne v3, v4, :cond_0

    const-string v2, "short"

    goto/16 :goto_0

    :pswitch_c
    const-string v2, "super"

    goto/16 :goto_0

    :pswitch_d
    const-string v1, "throw"

    const/16 v2, 0x32

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :pswitch_e
    const-string v1, "catch"

    const/16 v2, 0x7c

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_2

    move v1, v0

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "native"

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x64

    if-ne v1, v4, :cond_a

    const-string v1, "delete"

    const/16 v2, 0x1f

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :cond_a
    if-ne v1, v3, :cond_0

    const-string v1, "return"

    const/4 v2, 0x4

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "throws"

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "import"

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "double"

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "static"

    goto/16 :goto_0

    :sswitch_15
    const-string v2, "public"

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "switch"

    move-object v2, v1

    move v1, v3

    goto/16 :goto_0

    :sswitch_17
    const-string v2, "export"

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "typeof"

    const/16 v2, 0x20

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_3

    move v1, v0

    goto/16 :goto_0

    :sswitch_19
    const-string v2, "package"

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "default"

    const/16 v2, 0x74

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "finally"

    const/16 v2, 0x7d

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :sswitch_1c
    const-string v2, "boolean"

    goto/16 :goto_0

    :sswitch_1d
    const-string v2, "private"

    goto/16 :goto_0

    :sswitch_1e
    const-string v2, "extends"

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_4

    move v1, v0

    goto/16 :goto_0

    :sswitch_1f
    const-string v2, "abstract"

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "continue"

    const/16 v2, 0x79

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "debugger"

    const/16 v2, 0xa0

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "function"

    const/16 v2, 0x6d

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :sswitch_23
    const-string v2, "volatile"

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x69

    if-ne v3, v4, :cond_b

    const-string v2, "interface"

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x70

    if-ne v3, v4, :cond_c

    const-string v2, "protected"

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0x74

    if-ne v3, v4, :cond_0

    const-string v2, "transient"

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6d

    if-ne v3, v4, :cond_d

    const-string v2, "implements"

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x6e

    if-ne v3, v1, :cond_0

    const-string v1, "instanceof"

    const/16 v2, 0x35

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_0

    :pswitch_14
    const-string v2, "synchronized"

    goto/16 :goto_0

    :cond_e
    and-int/lit16 v0, v1, 0xff

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6c -> :sswitch_2
        0x6e -> :sswitch_3
        0x74 -> :sswitch_4
        0x76 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x62 -> :sswitch_6
        0x63 -> :sswitch_7
        0x65 -> :sswitch_8
        0x67 -> :sswitch_9
        0x6c -> :sswitch_a
        0x6e -> :sswitch_b
        0x74 -> :sswitch_c
        0x76 -> :sswitch_d
        0x77 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_5
        :pswitch_d
        :pswitch_5
        :pswitch_e
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x61 -> :sswitch_f
        0x65 -> :sswitch_10
        0x68 -> :sswitch_11
        0x6d -> :sswitch_12
        0x6f -> :sswitch_13
        0x74 -> :sswitch_14
        0x75 -> :sswitch_15
        0x77 -> :sswitch_16
        0x78 -> :sswitch_17
        0x79 -> :sswitch_18
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x61 -> :sswitch_19
        0x65 -> :sswitch_1a
        0x69 -> :sswitch_1b
        0x6f -> :sswitch_1c
        0x72 -> :sswitch_1d
        0x78 -> :sswitch_1e
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x61 -> :sswitch_1f
        0x63 -> :sswitch_20
        0x64 -> :sswitch_21
        0x66 -> :sswitch_22
        0x76 -> :sswitch_23
    .end sparse-switch
.end method

.method private ungetChar(I)V
    .locals 3

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aput p1, v0, v1

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    return-void
.end method

.method private ungetCharIgnoreLineEnd(I)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aput p1, v0, v1

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    return-void
.end method


# virtual methods
.method final eof()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v0
.end method

.method final getAndResetCurrentComment()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getTokenLength()I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCommentType()Lorg/mozilla/javascript/Token$CommentType;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return-object v0
.end method

.method public getCursor()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    return v0
.end method

.method getFirstXMLToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->canUngetChar()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getNextXMLToken()I

    move-result v0

    goto :goto_0
.end method

.method final getLine()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ltz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ltz v1, :cond_6

    add-int/lit8 v0, v0, -0x1

    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    :cond_6
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v1, v2, :cond_7

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    add-int/2addr v1, v0

    :cond_7
    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    aget-char v1, v2, v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method final getLineno()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    return v0
.end method

.method getNextXMLToken()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x41

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    :goto_0
    if-eq v1, v0, :cond_6

    iget-boolean v2, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    if-eqz v2, :cond_1

    sparse-switch v1, :sswitch_data_0

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    iput-boolean v3, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    :cond_0
    :goto_1
    iget-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    if-nez v1, :cond_2

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v0, 0x94

    :goto_2
    return v0

    :sswitch_0
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    iput-boolean v3, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    iput-boolean v3, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    iput-boolean v3, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto :goto_1

    :sswitch_2
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v0, 0x91

    goto :goto_2

    :sswitch_3
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->readQuotedString(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :sswitch_4
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    iput-boolean v6, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    goto :goto_1

    :sswitch_5
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_1

    :cond_1
    sparse-switch v1, :sswitch_data_1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    :cond_2
    :goto_3
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    goto :goto_0

    :sswitch_6
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    iput-boolean v6, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto :goto_3

    :sswitch_7
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    sparse-switch v1, :sswitch_data_3

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readEntity()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :sswitch_8
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_3

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readXmlComment()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_3
    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    iput-object v5, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_9
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v2, 0x44

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v4, :cond_4

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v4, :cond_4

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_4

    const/16 v1, 0x43

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v1, 0x44

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v1, 0x54

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v1, 0x5b

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readCDATA()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_4
    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    iput-object v5, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_a
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readPI()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :sswitch_b
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    if-nez v1, :cond_5

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    iput-object v5, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    iput-boolean v6, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto/16 :goto_3

    :sswitch_c
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v0, 0x91

    goto/16 :goto_2

    :cond_6
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    iput-object v5, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x20 -> :sswitch_5
        0x22 -> :sswitch_3
        0x27 -> :sswitch_3
        0x2f -> :sswitch_1
        0x3d -> :sswitch_4
        0x3e -> :sswitch_0
        0x7b -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3c -> :sswitch_6
        0x7b -> :sswitch_c
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x21 -> :sswitch_7
        0x2f -> :sswitch_b
        0x3f -> :sswitch_a
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x2d -> :sswitch_8
        0x5b -> :sswitch_9
    .end sparse-switch
.end method

.method final getNumber()D
    .locals 2

    iget-wide v0, p0, Lorg/mozilla/javascript/TokenStream;->number:D

    return-wide v0
.end method

.method final getOffset()I
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method final getQuoteChar()C
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    int-to-char v0, v0

    return v0
.end method

.method final getSourceString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    return-object v0
.end method

.method final getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    return-object v0
.end method

.method final getToken()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0xa

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/16 v7, 0x3d

    const/4 v3, 0x0

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    if-ne v4, v5, :cond_2

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move v1, v3

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-ne v4, v1, :cond_3

    iput-boolean v3, p0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lorg/mozilla/javascript/TokenStream;->isJSSpace(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    if-eq v4, v0, :cond_4

    iput-boolean v2, p0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    :cond_4
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/16 v0, 0x40

    if-ne v4, v0, :cond_5

    const/16 v1, 0x93

    goto :goto_0

    :cond_5
    const/16 v0, 0x5c

    if-ne v4, v0, :cond_8

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/16 v4, 0x75

    if-ne v0, v4, :cond_7

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    move v4, v2

    move v6, v2

    :goto_1
    if-eqz v6, :cond_15

    move v0, v4

    :goto_2
    if-eqz v0, :cond_c

    move v1, v3

    move v0, v3

    :goto_3
    const/4 v6, 0x4

    if-eq v1, v6, :cond_6

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v6

    invoke-static {v6, v0}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v0

    if-gez v0, :cond_a

    :cond_6
    if-gez v0, :cond_b

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.invalid.escape"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    move v1, v5

    goto :goto_0

    :cond_7
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    const/16 v0, 0x5c

    move v4, v3

    move v6, v3

    goto :goto_1

    :cond_8
    int-to-char v0, v4

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-eqz v0, :cond_9

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    :cond_9
    move v6, v0

    move v0, v4

    move v4, v3

    goto :goto_1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    move v0, v3

    goto :goto_2

    :cond_c
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v6, 0x5c

    if-ne v1, v6, :cond_e

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_d

    move v4, v2

    move v0, v2

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.illegal.character"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    move v1, v5

    goto/16 :goto_0

    :cond_e
    if-eq v1, v5, :cond_f

    const v6, 0xfeff

    if-eq v1, v6, :cond_f

    int-to-char v6, v1

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-nez v6, :cond_12

    :cond_f
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v2

    if-nez v4, :cond_14

    invoke-static {v2}, Lorg/mozilla/javascript/TokenStream;->stringToKeyword(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    const/16 v1, 0x99

    if-eq v0, v1, :cond_10

    const/16 v1, 0x48

    if-ne v0, v1, :cond_5c

    :cond_10
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    const/16 v3, 0xaa

    if-ge v1, v3, :cond_5c

    const/16 v1, 0x99

    if-ne v0, v1, :cond_13

    const-string v0, "let"

    :goto_4
    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v0, 0x27

    move v1, v0

    :goto_5
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v0, 0x7f

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_11
    move-object v0, v2

    :goto_6
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v1, 0x27

    goto/16 :goto_0

    :cond_12
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_2

    :cond_13
    const-string v0, "yield"

    goto :goto_4

    :cond_14
    invoke-static {v2}, Lorg/mozilla/javascript/TokenStream;->isKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->convertLastCharToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_15
    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v4

    if-nez v4, :cond_16

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_28

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v4

    invoke-static {v4}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_28

    :cond_16
    iput-boolean v3, p0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/16 v4, 0x30

    if-ne v0, v4, :cond_1a

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/16 v4, 0x78

    if-eq v0, v4, :cond_17

    const/16 v4, 0x58

    if-ne v0, v4, :cond_18

    :cond_17
    const/16 v4, 0x10

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    :goto_7
    const/16 v6, 0x10

    if-ne v4, v6, :cond_5a

    :goto_8
    invoke-static {v0, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-ltz v6, :cond_1e

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_8

    :cond_18
    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_19

    const/16 v4, 0x8

    iput-boolean v2, p0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    goto :goto_7

    :cond_19
    const/16 v4, 0x30

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    :cond_1a
    move v4, v1

    goto :goto_7

    :goto_9
    const/16 v6, 0x30

    if-gt v6, v4, :cond_1d

    const/16 v6, 0x39

    if-gt v4, v6, :cond_1d

    const/16 v6, 0x8

    if-ne v0, v6, :cond_1b

    const/16 v6, 0x38

    if-lt v4, v6, :cond_1b

    iget-object v6, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v7, "msg.bad.octal.literal"

    const/16 v0, 0x38

    if-ne v4, v0, :cond_1c

    const-string v0, "8"

    :goto_a
    invoke-virtual {v6, v7, v0}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_1b
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    goto :goto_9

    :cond_1c
    const-string v0, "9"

    goto :goto_a

    :cond_1d
    move v8, v0

    move v0, v4

    move v4, v8

    :cond_1e
    if-ne v4, v1, :cond_59

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_1f

    const/16 v6, 0x65

    if-eq v0, v6, :cond_1f

    const/16 v6, 0x45

    if-ne v0, v6, :cond_59

    :cond_1f
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_21

    :cond_20
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_21
    const/16 v2, 0x65

    if-eq v0, v2, :cond_22

    const/16 v2, 0x45

    if-ne v0, v2, :cond_26

    :cond_22
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_23

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_24

    :cond_23
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    :cond_24
    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.missing.exponent"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    move v1, v5

    goto/16 :goto_0

    :cond_25
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_26
    move v2, v0

    move v0, v3

    :goto_b
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    if-ne v4, v1, :cond_27

    if-nez v0, :cond_27

    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_c
    iput-wide v0, p0, Lorg/mozilla/javascript/TokenStream;->number:D

    const/16 v1, 0x28

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.caught.nfe"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    move v1, v5

    goto/16 :goto_0

    :cond_27
    invoke-static {v2, v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->stringToNumber(Ljava/lang/String;II)D

    move-result-wide v0

    goto :goto_c

    :cond_28
    const/16 v4, 0x22

    if-eq v0, v4, :cond_29

    const/16 v4, 0x27

    if-ne v0, v4, :cond_33

    :cond_29
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/TokenStream;->getChar(Z)I

    move-result v0

    :cond_2a
    :goto_d
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    if-eq v0, v2, :cond_32

    if-eq v0, v1, :cond_2b

    if-ne v0, v5, :cond_2c

    :cond_2b
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.unterminated.string.lit"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    move v1, v5

    goto/16 :goto_0

    :cond_2c
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_2e

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/16 v2, 0x30

    if-gt v2, v0, :cond_2e

    const/16 v2, 0x38

    if-ge v0, v2, :cond_2e

    add-int/lit8 v0, v0, -0x30

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v2

    const/16 v4, 0x30

    if-gt v4, v2, :cond_2d

    const/16 v4, 0x38

    if-ge v2, v4, :cond_2d

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x30

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v2

    const/16 v4, 0x30

    if-gt v4, v2, :cond_2d

    const/16 v4, 0x38

    if-ge v2, v4, :cond_2d

    const/16 v4, 0x1f

    if-gt v0, v4, :cond_2d

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x30

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v2

    :cond_2d
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    :cond_2e
    :goto_e
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/TokenStream;->getChar(Z)I

    move-result v0

    goto :goto_d

    :sswitch_0
    const/16 v0, 0x8

    goto :goto_e

    :sswitch_1
    const/16 v0, 0xc

    goto :goto_e

    :sswitch_2
    move v0, v1

    goto :goto_e

    :sswitch_3
    const/16 v0, 0xd

    goto :goto_e

    :sswitch_4
    const/16 v0, 0x9

    goto :goto_e

    :sswitch_5
    const/16 v0, 0xb

    goto :goto_e

    :sswitch_6
    iget v6, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/16 v0, 0x75

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    move v4, v3

    move v2, v3

    :goto_f
    const/4 v0, 0x4

    if-eq v4, v0, :cond_2f

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-static {v0, v2}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v2

    if-ltz v2, :cond_2a

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_f

    :cond_2f
    iput v6, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    move v0, v2

    goto :goto_e

    :sswitch_7
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-static {v0, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v4

    if-gez v4, :cond_30

    const/16 v2, 0x78

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_d

    :cond_30
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v2

    invoke-static {v2, v4}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v4

    if-gez v4, :cond_31

    const/16 v4, 0x78

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    move v0, v2

    goto/16 :goto_d

    :cond_31
    move v0, v4

    goto :goto_e

    :sswitch_8
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto/16 :goto_d

    :cond_32
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v1, 0x29

    goto/16 :goto_0

    :cond_33
    sparse-switch v0, :sswitch_data_1

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.illegal.character"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    move v1, v5

    goto/16 :goto_0

    :sswitch_9
    const/16 v1, 0x52

    goto/16 :goto_0

    :sswitch_a
    const/16 v1, 0x53

    goto/16 :goto_0

    :sswitch_b
    const/16 v1, 0x54

    goto/16 :goto_0

    :sswitch_c
    const/16 v1, 0x55

    goto/16 :goto_0

    :sswitch_d
    const/16 v1, 0x56

    goto/16 :goto_0

    :sswitch_e
    const/16 v1, 0x57

    goto/16 :goto_0

    :sswitch_f
    const/16 v1, 0x58

    goto/16 :goto_0

    :sswitch_10
    const/16 v1, 0x59

    goto/16 :goto_0

    :sswitch_11
    const/16 v1, 0x66

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_34

    const/16 v1, 0x90

    goto/16 :goto_0

    :cond_34
    const/16 v1, 0x67

    goto/16 :goto_0

    :sswitch_13
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_35

    const/16 v1, 0x8f

    goto/16 :goto_0

    :cond_35
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v1, 0x92

    goto/16 :goto_0

    :cond_36
    const/16 v1, 0x6c

    goto/16 :goto_0

    :sswitch_14
    const/16 v0, 0x7c

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v1, 0x68

    goto/16 :goto_0

    :cond_37
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v1, 0x5b

    goto/16 :goto_0

    :cond_38
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_15
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x5c

    goto/16 :goto_0

    :sswitch_16
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_39

    const/16 v1, 0x69

    goto/16 :goto_0

    :cond_39
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/16 v1, 0x5d

    goto/16 :goto_0

    :cond_3a
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_17
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 v1, 0x2e

    goto/16 :goto_0

    :cond_3b
    const/16 v1, 0xc

    goto/16 :goto_0

    :cond_3c
    const/16 v1, 0x5a

    goto/16 :goto_0

    :sswitch_18
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/16 v1, 0x2f

    goto/16 :goto_0

    :cond_3d
    const/16 v1, 0xd

    goto/16 :goto_0

    :cond_3e
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_19
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_41

    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_40

    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    sget-object v0, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    const/16 v1, 0xa1

    goto/16 :goto_0

    :cond_3f
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    :cond_40
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    :cond_41
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_42

    const/16 v1, 0x5e

    goto/16 :goto_0

    :cond_42
    const/16 v1, 0x12

    goto/16 :goto_0

    :cond_43
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_44

    const/16 v1, 0xf

    goto/16 :goto_0

    :cond_44
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_1a
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_48

    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_45

    const/16 v1, 0x60

    goto/16 :goto_0

    :cond_45
    const/16 v1, 0x14

    goto/16 :goto_0

    :cond_46
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_47

    const/16 v1, 0x5f

    goto/16 :goto_0

    :cond_47
    const/16 v1, 0x13

    goto/16 :goto_0

    :cond_48
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_49

    const/16 v1, 0x11

    goto/16 :goto_0

    :cond_49
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_1b
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/16 v1, 0x63

    goto/16 :goto_0

    :cond_4a
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_1c
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->markCommentStart()V

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    sget-object v0, Lorg/mozilla/javascript/Token$CommentType;->LINE:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    const/16 v1, 0xa1

    goto/16 :goto_0

    :cond_4b
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_51

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lorg/mozilla/javascript/Token$CommentType;->JSDOC:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    move v0, v2

    :cond_4c
    :goto_10
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v5, :cond_4e

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.unterminated.comment"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    const/16 v1, 0xa1

    goto/16 :goto_0

    :cond_4d
    sget-object v0, Lorg/mozilla/javascript/Token$CommentType;->BLOCK_COMMENT:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    move v0, v3

    goto :goto_10

    :cond_4e
    const/16 v4, 0x2a

    if-ne v1, v4, :cond_4f

    move v0, v2

    goto :goto_10

    :cond_4f
    const/16 v4, 0x2f

    if-ne v1, v4, :cond_50

    if-eqz v0, :cond_4c

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/16 v1, 0xa1

    goto/16 :goto_0

    :cond_50
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move v0, v3

    goto :goto_10

    :cond_51
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_52

    const/16 v1, 0x64

    goto/16 :goto_0

    :cond_52
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_1d
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_53

    const/16 v1, 0x65

    goto/16 :goto_0

    :cond_53
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_1e
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_1f
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_54

    const/16 v1, 0x61

    goto/16 :goto_0

    :cond_54
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_55

    const/16 v1, 0x6a

    goto/16 :goto_0

    :cond_55
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_20
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_56

    const/16 v0, 0x62

    :goto_11
    iput-boolean v2, p0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    move v1, v0

    goto/16 :goto_0

    :cond_56
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    if-nez v0, :cond_57

    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "--"

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->markCommentStart(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    sget-object v0, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    const/16 v1, 0xa1

    goto/16 :goto_0

    :cond_57
    const/16 v0, 0x6b

    goto :goto_11

    :cond_58
    const/16 v0, 0x16

    goto :goto_11

    :cond_59
    move v8, v2

    move v2, v0

    move v0, v8

    goto/16 :goto_b

    :cond_5a
    move v8, v4

    move v4, v0

    move v0, v8

    goto/16 :goto_9

    :cond_5b
    move-object v0, v2

    goto/16 :goto_6

    :cond_5c
    move v1, v0

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_8
        0x62 -> :sswitch_0
        0x66 -> :sswitch_1
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x74 -> :sswitch_4
        0x75 -> :sswitch_6
        0x76 -> :sswitch_5
        0x78 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x21 -> :sswitch_18
        0x25 -> :sswitch_1d
        0x26 -> :sswitch_16
        0x28 -> :sswitch_e
        0x29 -> :sswitch_f
        0x2a -> :sswitch_1b
        0x2b -> :sswitch_1f
        0x2c -> :sswitch_10
        0x2d -> :sswitch_20
        0x2e -> :sswitch_13
        0x2f -> :sswitch_1c
        0x3a -> :sswitch_12
        0x3b -> :sswitch_9
        0x3c -> :sswitch_19
        0x3d -> :sswitch_17
        0x3e -> :sswitch_1a
        0x3f -> :sswitch_11
        0x5b -> :sswitch_a
        0x5d -> :sswitch_b
        0x5e -> :sswitch_15
        0x7b -> :sswitch_c
        0x7c -> :sswitch_14
        0x7d -> :sswitch_d
        0x7e -> :sswitch_1e
    .end sparse-switch
.end method

.method public getTokenBeg()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    return v0
.end method

.method public getTokenEnd()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v0
.end method

.method public getTokenLength()I
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final isNumberOctal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    return v0
.end method

.method isXMLAttribute()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    return v0
.end method

.method readAndClearRegExpFlags()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    return-object v0
.end method

.method readRegExp(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x79

    const/16 v7, 0x6d

    const/16 v6, 0x69

    const/16 v5, 0x67

    const/4 v1, 0x0

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v2

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_1

    if-eqz v0, :cond_8

    :cond_1
    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    :cond_2
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.unterminated.re.lit"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_3
    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_0

    :cond_4
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_6

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v2

    :cond_5
    :goto_3
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_1

    :cond_6
    const/16 v4, 0x5b

    if-ne v2, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/16 v4, 0x5d

    if-ne v2, v4, :cond_5

    move v0, v1

    goto :goto_3

    :cond_8
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    :goto_4
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_4

    :cond_9
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_4

    :cond_a
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_4

    :cond_b
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_4

    :cond_c
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v2

    invoke-static {v2}, Lorg/mozilla/javascript/TokenStream;->isAlpha(I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v3, "msg.invalid.re.flag"

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_d
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    goto :goto_2
.end method

.method tokenToString(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
