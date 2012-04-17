.class public Lorg/apache/commons/httpclient/HttpVersion;
.super Ljava/lang/Object;
.source "HttpVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final HTTP_0_9:Lorg/apache/commons/httpclient/HttpVersion;

.field public static final HTTP_1_0:Lorg/apache/commons/httpclient/HttpVersion;

.field public static final HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;


# instance fields
.field private major:I

.field private minor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 114
    new-instance v0, Lorg/apache/commons/httpclient/HttpVersion;

    const/16 v1, 0x9

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/httpclient/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_0_9:Lorg/apache/commons/httpclient/HttpVersion;

    .line 118
    new-instance v0, Lorg/apache/commons/httpclient/HttpVersion;

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/httpclient/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_0:Lorg/apache/commons/httpclient/HttpVersion;

    .line 122
    new-instance v0, Lorg/apache/commons/httpclient/HttpVersion;

    invoke-direct {v0, v2, v2}, Lorg/apache/commons/httpclient/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "major"
    .parameter "minor"

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    .line 110
    iput v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    .line 135
    if-gez p1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP major version number may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iput p1, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    .line 143
    if-gez p2, :cond_1

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP minor version number may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    iput p2, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    .line 151
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 243
    check-cast p1, Lorg/apache/commons/httpclient/HttpVersion;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I
    .locals 3
    .parameter "anotherVer"

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 221
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Version parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpVersion;->getMajor()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpVersion;->getMajor()I

    move-result v2

    sub-int v0, v1, v2

    .line 227
    .local v0, delta:I
    if-nez v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpVersion;->getMinor()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpVersion;->getMinor()I

    move-result v2

    sub-int v0, v1, v2

    .line 233
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 193
    if-ne p0, p1, :cond_0

    .line 195
    const/4 v0, 0x1

    .line 205
    .end local p1
    :goto_0
    return v0

    .line 199
    .restart local p1
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/httpclient/HttpVersion;

    if-nez v0, :cond_1

    .line 201
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    :cond_1
    check-cast p1, Lorg/apache/commons/httpclient/HttpVersion;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->equals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Lorg/apache/commons/httpclient/HttpVersion;)Z
    .locals 1
    .parameter "version"

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMajor()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    return v0
.end method

.method public greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z
    .locals 1
    .parameter "version"

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 183
    iget v0, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    const v1, 0x186a0

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    add-int/2addr v0, v1

    return v0
.end method

.method public lessEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z
    .locals 1
    .parameter "version"

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpVersion;->compareTo(Lorg/apache/commons/httpclient/HttpVersion;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 295
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    iget v1, p0, Lorg/apache/commons/httpclient/HttpVersion;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 299
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 301
    iget v1, p0, Lorg/apache/commons/httpclient/HttpVersion;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
