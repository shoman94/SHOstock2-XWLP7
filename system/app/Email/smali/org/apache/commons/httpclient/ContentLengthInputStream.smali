.class public Lorg/apache/commons/httpclient/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# instance fields
.field private closed:Z

.field private contentLength:J

.field private pos:J

.field private wrappedStream:Ljava/io/InputStream;


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    if-eqz v1, :cond_1

    .line 306
    const/4 v0, 0x0

    .line 318
    :cond_0
    :goto_0
    return v0

    .line 310
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 312
    .local v0, avail:I
    iget-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 314
    iget-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    iget-wide v3, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 164
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 168
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->exhaustInputStream(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    .line 182
    :cond_0
    return-void

    .line 176
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 202
    const/4 v0, -0x1

    .line 208
    :goto_0
    return v0

    .line 206
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    .line 208
    iget-object v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/httpclient/ContentLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 228
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attempted read from closed stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_0
    iget-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    iget-wide v3, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 234
    const/4 v0, -0x1

    .line 248
    :goto_0
    return v0

    .line 238
    :cond_1
    iget-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 240
    iget-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    iget-wide v3, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    sub-long/2addr v1, v3

    long-to-int p3, v1

    .line 244
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 246
    .local v0, count:I
    iget-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    goto :goto_0
.end method

.method public skip(J)J
    .locals 6
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-wide v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    iget-wide v4, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    sub-long/2addr v2, v4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 286
    .local v0, length:J
    iget-object v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 292
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 294
    iget-wide v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    .line 298
    :cond_0
    return-wide v0
.end method
