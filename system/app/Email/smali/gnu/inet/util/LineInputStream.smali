.class public Lgnu/inet/util/LineInputStream;
.super Ljava/io/FilterInputStream;
.source "LineInputStream.java"


# instance fields
.field private final blockReads:Z

.field private buf:Ljava/io/ByteArrayOutputStream;

.field private encoding:Ljava/lang/String;

.field private eof:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    const-string v0, "US-ASCII"

    invoke-direct {p0, p1, v0}, Lgnu/inet/util/LineInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 92
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lgnu/inet/util/LineInputStream;->buf:Ljava/io/ByteArrayOutputStream;

    .line 93
    iput-object p2, p0, Lgnu/inet/util/LineInputStream;->encoding:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/inet/util/LineInputStream;->eof:Z

    .line 95
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    iput-boolean v0, p0, Lgnu/inet/util/LineInputStream;->blockReads:Z

    .line 96
    return-void
.end method

.method private indexOf([BIB)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 191
    aget-byte v1, p1, v0

    if-ne v1, p3, :cond_0

    .line 196
    :goto_1
    return v0

    .line 189
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x400

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, -0x1

    .line 104
    iget-boolean v0, p0, Lgnu/inet/util/LineInputStream;->eof:Z

    if-eqz v0, :cond_1

    move-object v0, v3

    .line 178
    :goto_0
    return-object v0

    .line 158
    :cond_0
    iget-object v5, p0, Lgnu/inet/util/LineInputStream;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v4, v6, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 110
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lgnu/inet/util/LineInputStream;->blockReads:Z

    if-eqz v0, :cond_7

    .line 116
    iget-object v0, p0, Lgnu/inet/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 117
    if-le v0, v1, :cond_2

    move v0, v1

    .line 118
    :cond_2
    new-array v4, v0, [B

    .line 119
    iget-object v5, p0, Lgnu/inet/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v0}, Ljava/io/InputStream;->mark(I)V

    .line 121
    iget-object v5, p0, Lgnu/inet/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v4, v6, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 123
    if-ne v0, v2, :cond_4

    .line 125
    iput-boolean v7, p0, Lgnu/inet/util/LineInputStream;->eof:Z

    .line 126
    iget-object v0, p0, Lgnu/inet/util/LineInputStream;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v3

    .line 128
    goto :goto_0

    .line 133
    :cond_3
    iget-object v0, p0, Lgnu/inet/util/LineInputStream;->buf:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lgnu/inet/util/LineInputStream;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_4
    const/16 v5, 0xa

    invoke-direct {p0, v4, v0, v5}, Lgnu/inet/util/LineInputStream;->indexOf([BIB)I

    move-result v5

    .line 138
    if-eq v5, v2, :cond_0

    .line 141
    iget-object v0, p0, Lgnu/inet/util/LineInputStream;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 143
    iget-object v0, p0, Lgnu/inet/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 144
    add-int/lit8 v0, v5, 0x1

    .line 145
    :goto_2
    if-lez v0, :cond_6

    .line 147
    iget-object v1, p0, Lgnu/inet/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v4, v6, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 148
    if-ne v1, v2, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    sub-int/2addr v0, v1

    goto :goto_2

    .line 151
    :cond_6
    iget-object v0, p0, Lgnu/inet/util/LineInputStream;->buf:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lgnu/inet/util/LineInputStream;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lgnu/inet/util/LineInputStream;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    .line 165
    :cond_7
    iget-object v0, p0, Lgnu/inet/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 166
    sparse-switch v0, :sswitch_data_0

    .line 180
    iget-object v4, p0, Lgnu/inet/util/LineInputStream;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 169
    :sswitch_0
    iput-boolean v7, p0, Lgnu/inet/util/LineInputStream;->eof:Z

    .line 170
    iget-object v0, p0, Lgnu/inet/util/LineInputStream;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v3

    .line 172
    goto/16 :goto_0

    .line 176
    :cond_8
    :sswitch_1
    iget-object v0, p0, Lgnu/inet/util/LineInputStream;->buf:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lgnu/inet/util/LineInputStream;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lgnu/inet/util/LineInputStream;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_0

    .line 166
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
