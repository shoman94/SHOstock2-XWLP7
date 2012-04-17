.class Lgnu/inet/ftp/StreamInputStream;
.super Lgnu/inet/ftp/DTPInputStream;
.source "StreamInputStream.java"


# direct methods
.method constructor <init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lgnu/inet/ftp/DTPInputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V

    .line 57
    return-void
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 62
    iget-boolean v1, p0, Lgnu/inet/ftp/DTPInputStream;->transferComplete:Z

    if-eqz v1, :cond_0

    .line 71
    :goto_0
    return v0

    .line 66
    :cond_0
    iget-object v1, p0, Lgnu/inet/ftp/StreamInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 67
    if-ne v1, v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lgnu/inet/ftp/StreamInputStream;->close()V

    :cond_1
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/ftp/StreamInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 83
    iget-boolean v1, p0, Lgnu/inet/ftp/DTPInputStream;->transferComplete:Z

    if-eqz v1, :cond_0

    .line 92
    :goto_0
    return v0

    .line 87
    :cond_0
    iget-object v1, p0, Lgnu/inet/ftp/StreamInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 88
    if-ne v1, v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lgnu/inet/ftp/StreamInputStream;->close()V

    :cond_1
    move v0, v1

    .line 92
    goto :goto_0
.end method
