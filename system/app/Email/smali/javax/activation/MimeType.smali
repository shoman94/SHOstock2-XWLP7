.class public Ljavax/activation/MimeType;
.super Ljava/lang/Object;
.source "MimeType.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field private parameters:Ljavax/activation/MimeTypeParameterList;

.field private primaryType:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "application"

    iput-object v0, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    .line 56
    const-string v0, "*"

    iput-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    .line 57
    new-instance v0, Ljavax/activation/MimeTypeParameterList;

    invoke-direct {v0}, Ljavax/activation/MimeTypeParameterList;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-direct {p0, p1}, Ljavax/activation/MimeType;->parse(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method static checkValidity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 260
    if-nez v1, :cond_0

    .line 262
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    invoke-direct {v0, p1, p0}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 266
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 267
    invoke-static {v2}, Ljavax/activation/MimeType;->isValidChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    invoke-direct {v0, p1, p0}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_2
    return-void
.end method

.method static isValidChar(C)Z
    .locals 2
    .parameter

    .prologue
    .line 276
    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    const-string v0, "()<>@,;:/[]?=\\\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parse(Ljava/lang/String;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 230
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 231
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 232
    if-ne v0, v2, :cond_0

    .line 234
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    const-string v1, "Unable to find a sub type."

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    if-ne v1, v2, :cond_1

    .line 238
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    .line 239
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    .line 240
    new-instance v0, Ljavax/activation/MimeTypeParameterList;

    invoke-direct {v0}, Ljavax/activation/MimeTypeParameterList;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    .line 252
    :goto_0
    iget-object v0, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    const-string v1, "Primary type is invalid"

    invoke-static {v0, v1}, Ljavax/activation/MimeType;->checkValidity(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    const-string v1, "Sub type is invalid"

    invoke-static {v0, v1}, Ljavax/activation/MimeType;->checkValidity(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void

    .line 242
    :cond_1
    if-ge v0, v1, :cond_2

    .line 244
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    .line 245
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    .line 246
    new-instance v0, Ljavax/activation/MimeTypeParameterList;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParameterList;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    goto :goto_0

    .line 250
    :cond_2
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    const-string v1, "Unable to find a sub type."

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBaseType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/activation/MimeType;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 223
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/activation/MimeTypeParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    invoke-virtual {v1}, Ljavax/activation/MimeTypeParameterList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0}, Ljavax/activation/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 211
    invoke-interface {p1}, Ljava/io/ObjectOutput;->flush()V

    .line 212
    return-void
.end method
