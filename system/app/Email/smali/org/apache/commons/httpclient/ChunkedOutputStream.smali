.class public Lorg/apache/commons/httpclient/ChunkedOutputStream;
.super Ljava/io/OutputStream;
.source "ChunkedOutputStream.java"


# static fields
.field private static final CRLF:[B

.field private static final ENDCHUNK:[B

.field private static final ZERO:[B


# instance fields
.field private cache:[B

.field private cachePosition:I

.field private stream:Ljava/io/OutputStream;

.field private wroteLastChunk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->CRLF:[B

    .line 85
    sget-object v0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->CRLF:[B

    sput-object v0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->ENDCHUNK:[B

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    sput-object v0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->ZERO:[B

    return-void

    .line 79
    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ChunkedOutputStream;->finish()V

    .line 308
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 310
    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->wroteLastChunk:Z

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ChunkedOutputStream;->flushCache()V

    .line 224
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ChunkedOutputStream;->writeClosingChunk()V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->wroteLastChunk:Z

    .line 230
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 295
    return-void
.end method

.method protected flushCache()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 148
    iget v1, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cachePosition:I

    if-lez v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cachePosition:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 154
    .local v0, chunkHeader:[B
    iget-object v1, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->stream:Ljava/io/OutputStream;

    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 156
    iget-object v1, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->stream:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cache:[B

    iget v3, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cachePosition:I

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 158
    iget-object v1, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->stream:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/commons/httpclient/ChunkedOutputStream;->ENDCHUNK:[B

    sget-object v3, Lorg/apache/commons/httpclient/ChunkedOutputStream;->ENDCHUNK:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 160
    iput v4, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cachePosition:I

    .line 164
    .end local v0           #chunkHeader:[B
    :cond_0
    return-void
.end method

.method protected flushCacheWithAppend([BII)V
    .locals 5
    .parameter "bufferToAppend"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cachePosition:I

    add-int/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 183
    .local v0, chunkHeader:[B
    iget-object v1, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->stream:Ljava/io/OutputStream;

    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 185
    iget-object v1, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->stream:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cache:[B

    iget v3, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cachePosition:I

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 187
    iget-object v1, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 189
    iget-object v1, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->stream:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/commons/httpclient/ChunkedOutputStream;->ENDCHUNK:[B

    sget-object v3, Lorg/apache/commons/httpclient/ChunkedOutputStream;->ENDCHUNK:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 191
    iput v4, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cachePosition:I

    .line 193
    return-void
.end method

.method public write(I)V
    .locals 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cache:[B

    iget v1, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cachePosition:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 247
    iget v0, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cachePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cachePosition:I

    .line 249
    iget v0, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cachePosition:I

    iget-object v1, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cache:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ChunkedOutputStream;->flushCache()V

    .line 252
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/httpclient/ChunkedOutputStream;->write([BII)V

    .line 267
    return-void
.end method

.method public write([BII)V
    .locals 2
    .parameter "src"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cache:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cachePosition:I

    sub-int/2addr v0, v1

    if-lt p3, v0, :cond_0

    .line 273
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/httpclient/ChunkedOutputStream;->flushCacheWithAppend([BII)V

    .line 283
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cache:[B

    iget v1, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cachePosition:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    iget v0, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cachePosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->cachePosition:I

    goto :goto_0
.end method

.method protected writeClosingChunk()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 199
    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->stream:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/httpclient/ChunkedOutputStream;->ZERO:[B

    sget-object v2, Lorg/apache/commons/httpclient/ChunkedOutputStream;->ZERO:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 201
    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->stream:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/httpclient/ChunkedOutputStream;->CRLF:[B

    sget-object v2, Lorg/apache/commons/httpclient/ChunkedOutputStream;->CRLF:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 203
    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedOutputStream;->stream:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/httpclient/ChunkedOutputStream;->ENDCHUNK:[B

    sget-object v2, Lorg/apache/commons/httpclient/ChunkedOutputStream;->ENDCHUNK:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 205
    return-void
.end method
