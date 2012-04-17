.class public Lorg/apache/james/mime4j/util/PositionInputStream;
.super Ljava/io/InputStream;
.source "PositionInputStream.java"


# instance fields
.field private final inputStream:Ljava/io/InputStream;

.field private markedPosition:J

.field protected position:J


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 52
    return-void
.end method

.method public mark(I)V
    .locals 2
    .parameter "readlimit"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 65
    iget-wide v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    iput-wide v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->markedPosition:J

    .line 66
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 45
    .local v0, b:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 46
    iget-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    .line 47
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 5
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 76
    .local v0, c:I
    iget-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    .line 77
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
    .line 81
    iget-object v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 82
    .local v0, c:I
    iget-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    .line 83
    return v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 56
    iget-wide v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->markedPosition:J

    iput-wide v0, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    .line 57
    return-void
.end method

.method public skip(J)J
    .locals 4
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v2, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 70
    .local v0, c:J
    iget-wide v2, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/james/mime4j/util/PositionInputStream;->position:J

    .line 71
    return-wide v0
.end method
