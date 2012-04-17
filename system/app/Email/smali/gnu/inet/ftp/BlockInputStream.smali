.class Lgnu/inet/ftp/BlockInputStream;
.super Lgnu/inet/ftp/DTPInputStream;
.source "BlockInputStream.java"


# instance fields
.field count:I

.field descriptor:I

.field max:I


# direct methods
.method constructor <init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 62
    invoke-direct {p0, p1, p2}, Lgnu/inet/ftp/DTPInputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V

    .line 57
    iput v0, p0, Lgnu/inet/ftp/BlockInputStream;->max:I

    .line 58
    iput v0, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    .line 63
    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 68
    iget-boolean v1, p0, Lgnu/inet/ftp/DTPInputStream;->transferComplete:Z

    if-eqz v1, :cond_0

    .line 95
    :goto_0
    return v0

    .line 72
    :cond_0
    iget v1, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    if-ne v1, v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lgnu/inet/ftp/BlockInputStream;->readHeader()V

    .line 76
    :cond_1
    iget v1, p0, Lgnu/inet/ftp/BlockInputStream;->max:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 78
    invoke-virtual {p0}, Lgnu/inet/ftp/BlockInputStream;->close()V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v1, p0, Lgnu/inet/ftp/BlockInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 82
    if-ne v1, v0, :cond_3

    .line 84
    iget-object v2, p0, Lgnu/inet/ftp/DTPInputStream;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v2}, Lgnu/inet/ftp/DTP;->transferComplete()V

    .line 86
    :cond_3
    iget v2, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    .line 87
    iget v2, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    iget v3, p0, Lgnu/inet/ftp/BlockInputStream;->max:I

    if-lt v2, v3, :cond_4

    .line 89
    iput v0, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    .line 90
    iget v0, p0, Lgnu/inet/ftp/BlockInputStream;->descriptor:I

    const/16 v2, 0x40

    if-ne v0, v2, :cond_4

    .line 92
    invoke-virtual {p0}, Lgnu/inet/ftp/BlockInputStream;->close()V

    :cond_4
    move v0, v1

    .line 95
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
    .line 101
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/ftp/BlockInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
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

    .line 107
    iget-boolean v1, p0, Lgnu/inet/ftp/DTPInputStream;->transferComplete:Z

    if-eqz v1, :cond_0

    .line 134
    :goto_0
    return v0

    .line 111
    :cond_0
    iget v1, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    if-ne v1, v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lgnu/inet/ftp/BlockInputStream;->readHeader()V

    .line 115
    :cond_1
    iget v1, p0, Lgnu/inet/ftp/BlockInputStream;->max:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 117
    invoke-virtual {p0}, Lgnu/inet/ftp/BlockInputStream;->close()V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lgnu/inet/ftp/BlockInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 121
    if-ne v1, v0, :cond_3

    .line 123
    iget-object v2, p0, Lgnu/inet/ftp/DTPInputStream;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v2}, Lgnu/inet/ftp/DTP;->transferComplete()V

    .line 125
    :cond_3
    iget v2, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    add-int/2addr v2, v1

    iput v2, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    .line 126
    iget v2, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    iget v3, p0, Lgnu/inet/ftp/BlockInputStream;->max:I

    if-lt v2, v3, :cond_4

    .line 128
    iput v0, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    .line 129
    iget v0, p0, Lgnu/inet/ftp/BlockInputStream;->descriptor:I

    const/16 v2, 0x40

    if-ne v0, v2, :cond_4

    .line 131
    invoke-virtual {p0}, Lgnu/inet/ftp/BlockInputStream;->close()V

    :cond_4
    move v0, v1

    .line 134
    goto :goto_0
.end method

.method readHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lgnu/inet/ftp/BlockInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lgnu/inet/ftp/BlockInputStream;->descriptor:I

    .line 144
    iget-object v0, p0, Lgnu/inet/ftp/BlockInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 145
    iget-object v1, p0, Lgnu/inet/ftp/BlockInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 146
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/inet/ftp/BlockInputStream;->max:I

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    .line 148
    return-void
.end method
