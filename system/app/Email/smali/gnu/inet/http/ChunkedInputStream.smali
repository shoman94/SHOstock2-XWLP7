.class public Lgnu/inet/http/ChunkedInputStream;
.super Ljava/io/FilterInputStream;
.source "ChunkedInputStream.java"


# instance fields
.field count:I

.field eof:Z

.field headers:Lgnu/inet/http/Headers;

.field meta:Z

.field size:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lgnu/inet/http/Headers;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    iput-object p2, p0, Lgnu/inet/http/ChunkedInputStream;->headers:Lgnu/inet/http/Headers;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lgnu/inet/http/ChunkedInputStream;->size:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lgnu/inet/http/ChunkedInputStream;->count:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/inet/http/ChunkedInputStream;->meta:Z

    .line 76
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 81
    new-array v1, v2, [B

    .line 82
    invoke-virtual {p0, v1, v3, v2}, Lgnu/inet/http/ChunkedInputStream;->read([BII)I

    move-result v2

    .line 83
    if-ne v2, v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    aget-byte v0, v1, v3

    .line 88
    if-gez v0, :cond_0

    .line 90
    add-int/lit16 v0, v0, 0x100

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
    .line 98
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/http/ChunkedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 104
    iget-boolean v0, p0, Lgnu/inet/http/ChunkedInputStream;->eof:Z

    if-eqz v0, :cond_1

    move v1, v4

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 108
    :cond_1
    iget-boolean v0, p0, Lgnu/inet/http/ChunkedInputStream;->meta:Z

    if-eqz v0, :cond_3

    .line 113
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    move v2, v1

    .line 116
    :goto_1
    iget-object v3, p0, Lgnu/inet/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 117
    const/16 v7, 0x3b

    if-ne v3, v7, :cond_4

    move v0, v5

    .line 132
    :cond_2
    :goto_2
    if-ne v3, v4, :cond_c

    .line 133
    :goto_3
    iput v1, p0, Lgnu/inet/http/ChunkedInputStream;->count:I

    .line 134
    iput-boolean v1, p0, Lgnu/inet/http/ChunkedInputStream;->meta:Z

    .line 136
    :cond_3
    iget v0, p0, Lgnu/inet/http/ChunkedInputStream;->size:I

    if-nez v0, :cond_6

    .line 139
    iget-object v0, p0, Lgnu/inet/http/ChunkedInputStream;->headers:Lgnu/inet/http/Headers;

    iget-object v1, p0, Lgnu/inet/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lgnu/inet/http/Headers;->parse(Ljava/io/InputStream;)V

    .line 140
    iput-boolean v5, p0, Lgnu/inet/http/ChunkedInputStream;->eof:Z

    move v1, v4

    .line 141
    goto :goto_0

    .line 121
    :cond_4
    if-ne v3, v8, :cond_5

    if-ne v2, v9, :cond_5

    .line 123
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lgnu/inet/http/ChunkedInputStream;->size:I

    goto :goto_3

    .line 126
    :cond_5
    if-nez v0, :cond_2

    const/16 v2, 0x30

    if-lt v3, v2, :cond_2

    .line 128
    int-to-char v2, v3

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 145
    :cond_6
    sub-int v0, p3, p2

    .line 146
    iget v2, p0, Lgnu/inet/http/ChunkedInputStream;->size:I

    iget v3, p0, Lgnu/inet/http/ChunkedInputStream;->count:I

    sub-int/2addr v2, v3

    .line 147
    if-ge v0, v2, :cond_8

    .line 148
    :goto_4
    if-lez v0, :cond_7

    iget-object v1, p0, Lgnu/inet/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 149
    :cond_7
    iget v0, p0, Lgnu/inet/http/ChunkedInputStream;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/inet/http/ChunkedInputStream;->count:I

    .line 150
    iget v0, p0, Lgnu/inet/http/ChunkedInputStream;->count:I

    iget v2, p0, Lgnu/inet/http/ChunkedInputStream;->size:I

    if-ne v0, v2, :cond_0

    .line 153
    iget-object v0, p0, Lgnu/inet/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 154
    iget-object v2, p0, Lgnu/inet/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 155
    if-ne v0, v4, :cond_9

    if-ne v2, v4, :cond_9

    .line 158
    iput-boolean v5, p0, Lgnu/inet/http/ChunkedInputStream;->eof:Z

    move v1, v4

    .line 159
    goto :goto_0

    :cond_8
    move v0, v2

    .line 147
    goto :goto_4

    .line 161
    :cond_9
    if-ne v0, v9, :cond_a

    if-eq v2, v8, :cond_b

    .line 163
    :cond_a
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expecting CRLF: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_b
    iput-boolean v5, p0, Lgnu/inet/http/ChunkedInputStream;->meta:Z

    goto/16 :goto_0

    :cond_c
    move v2, v3

    goto/16 :goto_1
.end method
