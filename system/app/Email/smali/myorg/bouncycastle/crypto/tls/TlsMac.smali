.class public Lmyorg/bouncycastle/crypto/tls/TlsMac;
.super Ljava/lang/Object;
.source "TlsMac.java"


# instance fields
.field private mac:Lmyorg/bouncycastle/crypto/macs/HMac;

.field private seqNo:J


# direct methods
.method protected constructor <init>(Lmyorg/bouncycastle/crypto/Digest;[BII)V
    .locals 3
    .parameter "digest"
    .parameter "key_block"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v1, Lmyorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v1, p1}, Lmyorg/bouncycastle/crypto/macs/HMac;-><init>(Lmyorg/bouncycastle/crypto/Digest;)V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->mac:Lmyorg/bouncycastle/crypto/macs/HMac;

    .line 30
    new-instance v0, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 31
    .local v0, param:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->mac:Lmyorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v1, v0}, Lmyorg/bouncycastle/crypto/macs/HMac;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 32
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->seqNo:J

    .line 33
    return-void
.end method


# virtual methods
.method protected calculateMac(S[BII)[B
    .locals 8
    .parameter "type"
    .parameter "message"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    .local v0, bosMac:Ljava/io/ByteArrayOutputStream;
    iget-wide v4, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->seqNo:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->seqNo:J

    invoke-static {v4, v5, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(JLjava/io/OutputStream;)V

    .line 57
    invoke-static {p1, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 58
    invoke-static {v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Ljava/io/OutputStream;)V

    .line 59
    invoke-static {p4, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 60
    invoke-virtual {v0, p2, p3, p4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 61
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 62
    .local v2, macData:[B
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->mac:Lmyorg/bouncycastle/crypto/macs/HMac;

    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Lmyorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 63
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->mac:Lmyorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v4}, Lmyorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v4

    new-array v3, v4, [B

    .line 64
    .local v3, result:[B
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->mac:Lmyorg/bouncycastle/crypto/macs/HMac;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lmyorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 65
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->mac:Lmyorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v4}, Lmyorg/bouncycastle/crypto/macs/HMac;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object v3

    .line 67
    .end local v0           #bosMac:Ljava/io/ByteArrayOutputStream;
    .end local v2           #macData:[B
    .end local v3           #result:[B
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Internal error during mac calculation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected getSize()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsMac;->mac:Lmyorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v0

    return v0
.end method
