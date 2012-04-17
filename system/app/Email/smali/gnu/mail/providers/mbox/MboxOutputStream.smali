.class Lgnu/mail/providers/mbox/MboxOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MboxOutputStream.java"


# static fields
.field private static KET:B


# instance fields
.field protected buf:[B

.field protected count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x3e

    sput-byte v0, Lgnu/mail/providers/mbox/MboxOutputStream;->KET:B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lgnu/mail/providers/mbox/MboxOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->count:I

    .line 74
    new-array v0, p2, [B

    iput-object v0, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    .line 75
    return-void
.end method


# virtual methods
.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lgnu/mail/providers/mbox/MboxOutputStream;->validateAndFlushBuffer()V

    .line 174
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected validateAndFlushBuffer()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 83
    iget v0, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->count:I

    if-lez v0, :cond_3

    move v0, v1

    move v2, v1

    .line 86
    :goto_0
    iget v4, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->count:I

    add-int/lit8 v4, v4, -0x5

    if-ge v0, v4, :cond_2

    if-nez v2, :cond_2

    .line 88
    iget-object v4, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    aget-byte v4, v4, v0

    const/16 v5, 0x46

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0x72

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    add-int/lit8 v5, v0, 0x2

    aget-byte v4, v4, v5

    const/16 v5, 0x6f

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    add-int/lit8 v5, v0, 0x3

    aget-byte v4, v4, v5

    const/16 v5, 0x6d

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    add-int/lit8 v5, v0, 0x4

    aget-byte v4, v4, v5

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 94
    iget-object v2, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    .line 95
    iget-object v4, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    iget-object v5, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    array-length v5, v5

    invoke-static {v4, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    sget-byte v4, Lgnu/mail/providers/mbox/MboxOutputStream;->KET:B

    aput-byte v4, v2, v0

    .line 97
    iget-object v4, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    array-length v6, v6

    sub-int/2addr v6, v0

    invoke-static {v4, v0, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iput-object v2, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    .line 99
    iget v2, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->count:I

    move v2, v3

    .line 86
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_1
    iget-object v4, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    aget-byte v4, v4, v0

    sget-byte v5, Lgnu/mail/providers/mbox/MboxOutputStream;->KET:B

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    aget-byte v4, v4, v0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    move v2, v3

    .line 104
    goto :goto_1

    .line 107
    :cond_2
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    iget v3, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->count:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 108
    iput v1, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->count:I

    .line 110
    :cond_3
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    monitor-enter p0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 120
    :cond_1
    :try_start_0
    iget v0, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->count:I

    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 121
    invoke-virtual {p0}, Lgnu/mail/providers/mbox/MboxOutputStream;->validateAndFlushBuffer()V

    .line 122
    :cond_2
    iget-object v0, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    iget v1, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 123
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lgnu/mail/providers/mbox/MboxOutputStream;->validateAndFlushBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    monitor-enter p0

    move v0, p2

    move v1, p3

    move-object v3, p1

    :goto_0
    add-int v2, p2, v1

    if-ge v0, v2, :cond_0

    .line 137
    :try_start_0
    aget-byte v2, v3, v0

    const/16 v4, 0xd

    if-ne v2, v4, :cond_5

    .line 139
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [B

    .line 140
    add-int/lit8 v4, v1, -0x1

    invoke-static {v3, p2, v2, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    add-int/lit8 v4, v0, 0x1

    sub-int v5, v0, p2

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    add-int/lit8 v1, v1, -0x1

    .line 144
    add-int/lit8 v0, v0, -0x1

    .line 135
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v3, v2

    goto :goto_0

    :cond_0
    move v0, p2

    move-object v2, v3

    .line 148
    :goto_2
    add-int v3, p2, v1

    if-ge v0, v3, :cond_4

    .line 150
    aget-byte v3, v2, v0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    sub-int v3, v0, p2

    iget-object v4, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    array-length v4, v4

    if-le v3, v4, :cond_2

    .line 152
    :cond_1
    sub-int v3, v0, p2

    iget-object v4, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    array-length v4, v4

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    array-length v3, v3

    .line 153
    :goto_3
    iget-object v4, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    iget v5, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->count:I

    invoke-static {v2, p2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget v4, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->count:I

    add-int/2addr v3, v4

    iput v3, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->count:I

    .line 155
    invoke-virtual {p0}, Lgnu/mail/providers/mbox/MboxOutputStream;->validateAndFlushBuffer()V

    .line 156
    sub-int v3, v0, p2

    sub-int/2addr v1, v3

    .line 157
    array-length v3, v2

    new-array v3, v3, [B

    .line 158
    invoke-static {v2, v0, v3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, p2

    move-object v2, v3

    .line 148
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 152
    :cond_3
    sub-int v3, v0, p2

    goto :goto_3

    .line 163
    :cond_4
    iget-object v0, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->buf:[B

    iget v3, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->count:I

    invoke-static {v2, p2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget v0, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/mail/providers/mbox/MboxOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move-object v2, v3

    goto :goto_1
.end method
