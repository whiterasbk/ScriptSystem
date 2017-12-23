.class final Lorg/mozilla/classfile/ClassFileField;
.super Ljava/lang/Object;


# instance fields
.field private itsAttr1:S

.field private itsAttr2:S

.field private itsAttr3:S

.field private itsFlags:S

.field private itsHasAttributes:Z

.field private itsIndex:I

.field private itsNameIndex:S

.field private itsTypeIndex:S


# direct methods
.method constructor <init>(SSS)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileField;->itsNameIndex:S

    iput-short p2, p0, Lorg/mozilla/classfile/ClassFileField;->itsTypeIndex:S

    iput-short p3, p0, Lorg/mozilla/classfile/ClassFileField;->itsFlags:S

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsHasAttributes:Z

    return-void
.end method


# virtual methods
.method getWriteSize()I
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsHasAttributes:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method setAttributes(SSSI)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsHasAttributes:Z

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileField;->itsAttr1:S

    iput-short p2, p0, Lorg/mozilla/classfile/ClassFileField;->itsAttr2:S

    iput-short p3, p0, Lorg/mozilla/classfile/ClassFileField;->itsAttr3:S

    iput p4, p0, Lorg/mozilla/classfile/ClassFileField;->itsIndex:I

    return-void
.end method

.method write([BI)I
    .locals 2

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsFlags:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileField;->itsNameIndex:S

    invoke-static {v1, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileField;->itsTypeIndex:S

    invoke-static {v1, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iget-boolean v1, p0, Lorg/mozilla/classfile/ClassFileField;->itsHasAttributes:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileField;->itsAttr1:S

    invoke-static {v1, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileField;->itsAttr2:S

    invoke-static {v1, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileField;->itsAttr3:S

    invoke-static {v1, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iget v1, p0, Lorg/mozilla/classfile/ClassFileField;->itsIndex:I

    invoke-static {v1, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    goto :goto_0
.end method
