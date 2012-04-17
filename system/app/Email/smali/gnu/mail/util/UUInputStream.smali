.class public Lgnu/mail/util/UUInputStream;
.super Ljava/io/FilterInputStream;
.source "UUInputStream.java"


# instance fields
.field body:Z

.field pending:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    new-instance v0, Lgnu/inet/util/LineInputStream;

    invoke-direct {v0, p1}, Lgnu/inet/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lgnu/mail/util/UUInputStream;->pending:Ljava/io/ByteArrayOutputStream;

    .line 61
    return-void
.end method

.method static decode(B)I
    .locals 1
    .parameter

    .prologue
    .line 172
    .line 173
    if-gez p0, :cond_0

    .line 175
    add-int/lit16 p0, p0, 0x100

    .line 177
    :cond_0
    add-int/lit8 v0, p0, -0x20

    and-int/lit8 v0, v0, 0x3f

    return v0
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

    .line 66
    new-array v1, v2, [B

    .line 70
    :cond_0
    invoke-virtual {p0, v1, v3, v2}, Lgnu/mail/util/UUInputStream;->read([BII)I

    move-result v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    aget-byte v0, v1, v3

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
    .line 79
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/mail/util/UUInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 86
    iget-object v0, p0, Lgnu/mail/util/UUInputStream;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 87
    if-nez v0, :cond_a

    .line 90
    iget-object v0, p0, Lgnu/mail/util/UUInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lgnu/inet/util/LineInputStream;

    .line 92
    iget-boolean v1, p0, Lgnu/mail/util/UUInputStream;->body:Z

    if-nez v1, :cond_2

    .line 95
    invoke-virtual {v0}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    const-string v3, "begin "

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No `begin\' line"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iput-boolean v2, p0, Lgnu/mail/util/UUInputStream;->body:Z

    .line 105
    :cond_2
    invoke-virtual {v0}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 108
    if-nez v1, :cond_3

    .line 110
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 112
    :cond_3
    const-string v3, "US-ASCII"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 114
    aget-byte v1, v3, v6

    invoke-static {v1}, Lgnu/mail/util/UUInputStream;->decode(B)I

    move-result v1

    .line 115
    if-gtz v1, :cond_6

    .line 117
    iput-boolean v6, p0, Lgnu/mail/util/UUInputStream;->body:Z

    .line 119
    invoke-virtual {v0}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_4

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 122
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No `end\' line"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_5
    const/4 p3, -0x1

    .line 163
    :goto_0
    return p3

    :cond_6
    move v0, v1

    move v1, v2

    .line 126
    :goto_1
    if-lez v0, :cond_a

    .line 130
    if-lt v0, v2, :cond_7

    .line 132
    aget-byte v4, v3, v1

    invoke-static {v4}, Lgnu/mail/util/UUInputStream;->decode(B)I

    move-result v4

    shl-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v3, v5

    invoke-static {v5}, Lgnu/mail/util/UUInputStream;->decode(B)I

    move-result v5

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    .line 133
    iget-object v5, p0, Lgnu/mail/util/UUInputStream;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 135
    :cond_7
    const/4 v4, 0x2

    if-lt v0, v4, :cond_8

    .line 137
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v3, v4

    invoke-static {v4}, Lgnu/mail/util/UUInputStream;->decode(B)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, v3, v5

    invoke-static {v5}, Lgnu/mail/util/UUInputStream;->decode(B)I

    move-result v5

    shr-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    .line 138
    iget-object v5, p0, Lgnu/mail/util/UUInputStream;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 140
    :cond_8
    const/4 v4, 0x3

    if-lt v0, v4, :cond_9

    .line 142
    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v3, v4

    invoke-static {v4}, Lgnu/mail/util/UUInputStream;->decode(B)I

    move-result v4

    shl-int/lit8 v4, v4, 0x6

    add-int/lit8 v5, v1, 0x3

    aget-byte v5, v3, v5

    invoke-static {v5}, Lgnu/mail/util/UUInputStream;->decode(B)I

    move-result v5

    or-int/2addr v4, v5

    .line 143
    iget-object v5, p0, Lgnu/mail/util/UUInputStream;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 126
    :cond_9
    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 149
    :cond_a
    iget-object v0, p0, Lgnu/mail/util/UUInputStream;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 150
    array-length v0, v1

    .line 151
    iget-object v2, p0, Lgnu/mail/util/UUInputStream;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 152
    if-le v0, p3, :cond_b

    .line 154
    invoke-static {v1, v6, p1, v6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    sub-int/2addr v0, p3

    new-array v0, v0, [B

    .line 156
    array-length v2, v0

    invoke-static {v1, p3, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget-object v1, p0, Lgnu/mail/util/UUInputStream;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 162
    :cond_b
    invoke-static {v1, v6, p1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p3, v0

    .line 163
    goto :goto_0
.end method
