.class public Lgnu/mail/util/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# static fields
.field private static final src:[C


# instance fields
.field private buffer:[B

.field private buflen:I

.field private count:I

.field private lineLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lgnu/mail/util/Base64OutputStream;->src:[C

    return-void

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lgnu/mail/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lgnu/mail/util/Base64OutputStream;->buffer:[B

    .line 85
    iput p2, p0, Lgnu/mail/util/Base64OutputStream;->lineLength:I

    .line 86
    return-void
.end method

.method private encode()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/16 v5, 0x3d

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    iget v0, p0, Lgnu/mail/util/Base64OutputStream;->count:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lgnu/mail/util/Base64OutputStream;->lineLength:I

    if-le v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 153
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 154
    iput v2, p0, Lgnu/mail/util/Base64OutputStream;->count:I

    .line 156
    :cond_0
    iget v0, p0, Lgnu/mail/util/Base64OutputStream;->buflen:I

    if-ne v0, v3, :cond_1

    .line 158
    iget-object v0, p0, Lgnu/mail/util/Base64OutputStream;->buffer:[B

    aget-byte v0, v0, v2

    .line 161
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lgnu/mail/util/Base64OutputStream;->src:[C

    ushr-int/lit8 v3, v0, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 162
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lgnu/mail/util/Base64OutputStream;->src:[C

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x30

    add-int/lit8 v0, v0, 0x0

    aget-char v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 163
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 164
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 183
    :goto_0
    iget v0, p0, Lgnu/mail/util/Base64OutputStream;->count:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgnu/mail/util/Base64OutputStream;->count:I

    .line 184
    return-void

    .line 166
    :cond_1
    iget v0, p0, Lgnu/mail/util/Base64OutputStream;->buflen:I

    if-ne v0, v4, :cond_2

    .line 168
    iget-object v0, p0, Lgnu/mail/util/Base64OutputStream;->buffer:[B

    aget-byte v0, v0, v2

    iget-object v1, p0, Lgnu/mail/util/Base64OutputStream;->buffer:[B

    aget-byte v1, v1, v3

    .line 170
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v3, Lgnu/mail/util/Base64OutputStream;->src:[C

    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 171
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v3, Lgnu/mail/util/Base64OutputStream;->src:[C

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x30

    ushr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    add-int/2addr v0, v4

    aget-char v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 172
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lgnu/mail/util/Base64OutputStream;->src:[C

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3c

    add-int/lit8 v1, v1, 0x0

    aget-char v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 173
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lgnu/mail/util/Base64OutputStream;->buffer:[B

    aget-byte v0, v0, v2

    iget-object v1, p0, Lgnu/mail/util/Base64OutputStream;->buffer:[B

    aget-byte v1, v1, v3

    iget-object v2, p0, Lgnu/mail/util/Base64OutputStream;->buffer:[B

    aget-byte v2, v2, v4

    .line 178
    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v4, Lgnu/mail/util/Base64OutputStream;->src:[C

    ushr-int/lit8 v5, v0, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 179
    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v4, Lgnu/mail/util/Base64OutputStream;->src:[C

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x30

    ushr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    add-int/2addr v0, v5

    aget-char v0, v4, v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write(I)V

    .line 180
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v3, Lgnu/mail/util/Base64OutputStream;->src:[C

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3c

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    aget-char v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 181
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lgnu/mail/util/Base64OutputStream;->src:[C

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lgnu/mail/util/Base64OutputStream;->flush()V

    .line 144
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 145
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget v0, p0, Lgnu/mail/util/Base64OutputStream;->buflen:I

    if-lez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lgnu/mail/util/Base64OutputStream;->encode()V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lgnu/mail/util/Base64OutputStream;->buflen:I

    .line 133
    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 134
    return-void
.end method

.method public write(I)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lgnu/mail/util/Base64OutputStream;->buffer:[B

    iget v1, p0, Lgnu/mail/util/Base64OutputStream;->buflen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/mail/util/Base64OutputStream;->buflen:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 95
    iget v0, p0, Lgnu/mail/util/Base64OutputStream;->buflen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 96
    invoke-direct {p0}, Lgnu/mail/util/Base64OutputStream;->encode()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lgnu/mail/util/Base64OutputStream;->buflen:I

    .line 99
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/mail/util/Base64OutputStream;->write([BII)V

    .line 109
    return-void
.end method

.method public write([BII)V
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
    .line 118
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 119
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lgnu/mail/util/Base64OutputStream;->write(I)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method
