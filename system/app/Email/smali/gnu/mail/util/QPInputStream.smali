.class public Lgnu/mail/util/QPInputStream;
.super Ljava/io/FilterInputStream;
.source "QPInputStream.java"


# instance fields
.field protected buf:[B

.field protected spaceCount:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 59
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    new-array v0, v1, [B

    iput-object v0, p0, Lgnu/mail/util/QPInputStream;->buf:[B

    .line 61
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lgnu/mail/util/QPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xd

    const/4 v5, -0x1

    const/16 v4, 0xa

    const/4 v3, 0x0

    const/16 v1, 0x20

    .line 69
    iget v0, p0, Lgnu/mail/util/QPInputStream;->spaceCount:I

    if-lez v0, :cond_1

    .line 71
    iget v0, p0, Lgnu/mail/util/QPInputStream;->spaceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/mail/util/QPInputStream;->spaceCount:I

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    iget-object v0, p0, Lgnu/mail/util/QPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 76
    if-ne v2, v1, :cond_5

    .line 78
    :goto_1
    iget-object v0, p0, Lgnu/mail/util/QPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 79
    iget v0, p0, Lgnu/mail/util/QPInputStream;->spaceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/mail/util/QPInputStream;->spaceCount:I

    goto :goto_1

    .line 80
    :cond_2
    if-eq v2, v4, :cond_3

    if-eq v2, v6, :cond_3

    if-ne v2, v5, :cond_4

    .line 81
    :cond_3
    iput v3, p0, Lgnu/mail/util/QPInputStream;->spaceCount:I

    move v0, v2

    :goto_2
    move v1, v0

    .line 87
    goto :goto_0

    .line 84
    :cond_4
    iget-object v0, p0, Lgnu/mail/util/QPInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    move v0, v1

    .line 85
    goto :goto_2

    .line 89
    :cond_5
    const/16 v0, 0x3d

    if-ne v2, v0, :cond_9

    .line 91
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 92
    if-ne v1, v4, :cond_6

    .line 93
    invoke-virtual {p0}, Lgnu/mail/util/QPInputStream;->read()I

    move-result v1

    goto :goto_0

    .line 94
    :cond_6
    if-ne v1, v6, :cond_8

    .line 96
    iget-object v0, p0, Lgnu/mail/util/QPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 97
    if-eq v1, v4, :cond_7

    .line 98
    iget-object v0, p0, Lgnu/mail/util/QPInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 99
    :cond_7
    invoke-virtual {p0}, Lgnu/mail/util/QPInputStream;->read()I

    move-result v1

    goto :goto_0

    .line 101
    :cond_8
    if-eq v1, v5, :cond_0

    .line 104
    iget-object v0, p0, Lgnu/mail/util/QPInputStream;->buf:[B

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 105
    iget-object v0, p0, Lgnu/mail/util/QPInputStream;->buf:[B

    const/4 v1, 0x1

    iget-object v3, p0, Lgnu/mail/util/QPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 108
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/mail/util/QPInputStream;->buf:[B

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 112
    iget-object v0, p0, Lgnu/mail/util/QPInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    iget-object v1, p0, Lgnu/mail/util/QPInputStream;->buf:[B

    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->unread([B)V

    move v1, v2

    .line 114
    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 117
    goto/16 :goto_0
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

    .line 126
    const/4 v1, 0x0

    .line 129
    :goto_0
    if-ge v1, p3, :cond_1

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lgnu/mail/util/QPInputStream;->read()I

    move-result v2

    .line 132
    if-ne v2, v0, :cond_0

    .line 134
    if-nez v1, :cond_1

    .line 147
    :goto_1
    return v0

    .line 138
    :cond_0
    add-int v3, p2, v1

    int-to-byte v2, v2

    aput-byte v2, p1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    add-int/lit8 v1, v1, 0x1

    .line 140
    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
