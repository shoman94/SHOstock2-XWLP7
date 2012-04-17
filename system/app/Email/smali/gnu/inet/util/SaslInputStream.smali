.class public Lgnu/inet/util/SaslInputStream;
.super Ljava/io/FilterInputStream;
.source "SaslInputStream.java"


# instance fields
.field private buf:[B

.field private pos:I

.field private final sasl:Ljavax/security/sasl/SaslClient;


# virtual methods
.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    iget-object v0, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    iget v1, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    aget-byte v0, v0, v1

    .line 93
    iget v1, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    iget-object v2, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 100
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 104
    new-array v0, v5, [B

    .line 105
    iget-object v1, p0, Lgnu/inet/util/SaslInputStream;->sasl:Ljavax/security/sasl/SaslClient;

    invoke-interface {v1, v0, v4, v5}, Ljavax/security/sasl/SaslClient;->unwrap([BII)[B

    move-result-object v1

    .line 107
    aget-byte v0, v1, v4

    .line 108
    array-length v2, v1

    if-le v2, v5, :cond_0

    .line 111
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 112
    new-array v3, v2, [B

    iput-object v3, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    .line 113
    iget-object v3, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    invoke-static {v1, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iput v4, p0, Lgnu/inet/util/SaslInputStream;->pos:I

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
    .line 122
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/util/SaslInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
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
    const/4 v4, 0x0

    .line 131
    iget-object v0, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    array-length v0, v0

    .line 135
    iget v1, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    sub-int v1, v0, v1

    if-gt v1, p3, :cond_0

    .line 137
    iget-object v1, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    iget v2, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    move p3, v0

    .line 174
    :goto_0
    return p3

    .line 143
    :cond_0
    iget-object v0, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    iget v1, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget v0, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    goto :goto_0

    .line 148
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 149
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    move p3, v0

    .line 151
    goto :goto_0

    .line 153
    :cond_2
    iget-object v1, p0, Lgnu/inet/util/SaslInputStream;->sasl:Ljavax/security/sasl/SaslClient;

    invoke-interface {v1, p1, p2, v0}, Ljavax/security/sasl/SaslClient;->unwrap([BII)[B

    move-result-object v2

    .line 154
    array-length v1, v2

    .line 155
    if-le v1, p3, :cond_3

    .line 158
    sub-int v0, v1, p3

    .line 159
    new-array v1, v0, [B

    iput-object v1, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    .line 160
    invoke-static {v2, v4, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v1, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    invoke-static {v2, p3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iput v4, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    goto :goto_0

    .line 167
    :cond_3
    invoke-static {v2, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v1

    .line 170
    :goto_1
    if-ge v2, v0, :cond_4

    .line 172
    add-int v3, p2, v1

    aput-byte v4, p1, v3

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move p3, v1

    .line 174
    goto :goto_0
.end method
