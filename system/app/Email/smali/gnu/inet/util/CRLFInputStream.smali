.class public Lgnu/inet/util/CRLFInputStream;
.super Ljava/io/FilterInputStream;
.source "CRLFInputStream.java"


# instance fields
.field private doReset:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 74
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private indexOfCRLF([BII)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/inet/util/CRLFInputStream;->doReset:Z

    .line 149
    add-int/lit8 v2, p3, -0x1

    move v0, p2

    .line 150
    :goto_0
    if-ge v0, p3, :cond_2

    .line 152
    aget-byte v1, p1, v0

    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    .line 155
    if-ne v0, v2, :cond_0

    .line 157
    iget-object v1, p0, Lgnu/inet/util/CRLFInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 158
    iput-boolean v4, p0, Lgnu/inet/util/CRLFInputStream;->doReset:Z

    .line 164
    :goto_1
    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 166
    iput-boolean v4, p0, Lgnu/inet/util/CRLFInputStream;->doReset:Z

    .line 171
    :goto_2
    return v0

    .line 162
    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    goto :goto_1

    .line 150
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lgnu/inet/util/CRLFInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 85
    const/16 v0, 0xd

    if-ne v1, v0, :cond_1

    .line 87
    iget-object v0, p0, Lgnu/inet/util/CRLFInputStream;->in:Ljava/io/InputStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 88
    iget-object v0, p0, Lgnu/inet/util/CRLFInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 89
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 98
    :goto_0
    return v0

    .line 95
    :cond_0
    iget-object v0, p0, Lgnu/inet/util/CRLFInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_1
    move v0, v1

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
    .line 110
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/util/CRLFInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lgnu/inet/util/CRLFInputStream;->in:Ljava/io/InputStream;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 123
    iget-object v0, p0, Lgnu/inet/util/CRLFInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 124
    if-lez v0, :cond_0

    .line 126
    invoke-direct {p0, p1, p2, v0}, Lgnu/inet/util/CRLFInputStream;->indexOfCRLF([BII)I

    move-result v1

    .line 127
    iget-boolean v2, p0, Lgnu/inet/util/CRLFInputStream;->doReset:Z

    if-eqz v2, :cond_0

    .line 129
    iget-object v0, p0, Lgnu/inet/util/CRLFInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 130
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 132
    iget-object v0, p0, Lgnu/inet/util/CRLFInputStream;->in:Ljava/io/InputStream;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 133
    iget-object v2, p0, Lgnu/inet/util/CRLFInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 134
    const/16 v2, 0xa

    aput-byte v2, p1, v1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    iget-object v0, p0, Lgnu/inet/util/CRLFInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method
