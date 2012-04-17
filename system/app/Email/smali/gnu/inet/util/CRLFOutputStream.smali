.class public Lgnu/inet/util/CRLFOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CRLFOutputStream.java"


# static fields
.field public static final CRLF:[B


# instance fields
.field protected last:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lgnu/inet/util/CRLFOutputStream;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lgnu/inet/util/CRLFOutputStream;->last:I

    .line 84
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xd

    .line 92
    if-ne p1, v1, :cond_1

    .line 94
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lgnu/inet/util/CRLFOutputStream;->CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 107
    :cond_0
    :goto_0
    iput p1, p0, Lgnu/inet/util/CRLFOutputStream;->last:I

    .line 108
    return-void

    .line 96
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 98
    iget v0, p0, Lgnu/inet/util/CRLFOutputStream;->last:I

    if-eq v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lgnu/inet/util/CRLFOutputStream;->CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 165
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lgnu/inet/util/CRLFOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 169
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The US-ASCII encoding is not supported on this system"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 117
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/util/CRLFOutputStream;->write([BII)V

    .line 118
    return-void
.end method

.method public write([BII)V
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
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 127
    .line 128
    add-int v1, p3, p2

    move v0, p2

    .line 129
    :goto_0
    if-ge p2, v1, :cond_1

    .line 131
    aget-byte v2, p1, p2

    packed-switch v2, :pswitch_data_0

    .line 147
    :goto_1
    :pswitch_0
    aget-byte v2, p1, p2

    iput v2, p0, Lgnu/inet/util/CRLFOutputStream;->last:I

    .line 129
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sub-int v3, p2, v0

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 135
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lgnu/inet/util/CRLFOutputStream;->CRLF:[B

    invoke-virtual {v0, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 136
    add-int/lit8 v0, p2, 0x1

    .line 137
    goto :goto_1

    .line 139
    :pswitch_2
    iget v2, p0, Lgnu/inet/util/CRLFOutputStream;->last:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    .line 141
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sub-int v3, p2, v0

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 142
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lgnu/inet/util/CRLFOutputStream;->CRLF:[B

    invoke-virtual {v0, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 144
    :cond_0
    add-int/lit8 v0, p2, 0x1

    goto :goto_1

    .line 149
    :cond_1
    sub-int v2, v1, v0

    if-lez v2, :cond_2

    .line 151
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sub-int/2addr v1, v0

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 153
    :cond_2
    return-void

    .line 131
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public writeln()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lgnu/inet/util/CRLFOutputStream;->CRLF:[B

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 182
    return-void
.end method
