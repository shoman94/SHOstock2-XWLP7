.class public Lmyorg/bouncycastle/crypto/tls/RecordStream;
.super Ljava/lang/Object;
.source "RecordStream.java"


# instance fields
.field private handler:Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;

.field protected hash1:Lmyorg/bouncycastle/crypto/tls/CombinedHash;

.field protected hash2:Lmyorg/bouncycastle/crypto/tls/CombinedHash;

.field private is:Ljava/io/InputStream;

.field private os:Ljava/io/OutputStream;

.field protected readSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

.field protected writeSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;


# virtual methods
.method protected close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, e:Ljava/io/IOException;
    :try_start_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    :try_start_1
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :goto_1
    if-eqz v0, :cond_0

    .line 77
    throw v0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, ex:Ljava/io/IOException;
    move-object v0, v1

    goto :goto_0

    .line 73
    .end local v1           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 74
    .restart local v1       #ex:Ljava/io/IOException;
    move-object v0, v1

    goto :goto_1

    .line 79
    .end local v1           #ex:Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method protected decodeAndVerify(SLjava/io/InputStream;I)[B
    .locals 7
    .parameter "type"
    .parameter "is"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    new-array v2, p3, [B

    .line 42
    .local v2, buf:[B
    invoke-static {v2, p2}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    .line 43
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->readSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    const/4 v3, 0x0

    array-length v4, v2

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->handler:Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;->decodeCiphertext(S[BIILmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;)[B

    move-result-object v6

    .line 44
    .local v6, result:[B
    return-object v6
.end method

.method protected flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 83
    return-void
.end method

.method public readData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-static {v3}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    .line 33
    .local v2, type:S
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->handler:Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    invoke-static {v3, v4}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->checkVersion(Ljava/io/InputStream;Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;)V

    .line 34
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-static {v3}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    .line 35
    .local v1, size:I
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0, v2, v3, v1}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->decodeAndVerify(SLjava/io/InputStream;I)[B

    move-result-object v0

    .line 36
    .local v0, buf:[B
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->handler:Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v2, v0, v4, v5}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processData(S[BII)V

    .line 38
    return-void
.end method

.method protected writeMessage(S[BII)V
    .locals 6
    .parameter "type"
    .parameter "message"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 48
    const/16 v2, 0x16

    if-ne p1, v2, :cond_0

    .line 50
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->hash1:Lmyorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-virtual {v2, p2, p3, p4}, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    .line 51
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->hash2:Lmyorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-virtual {v2, p2, p3, p4}, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    .line 53
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    invoke-virtual {v2, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;->encodePlaintext(S[BII)[B

    move-result-object v0

    .line 54
    .local v0, ciphertext:[B
    array-length v2, v0

    add-int/lit8 v2, v2, 0x5

    new-array v1, v2, [B

    .line 55
    .local v1, writeMessage:[B
    invoke-static {p1, v1, v4}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 56
    invoke-static {v5, v1, v3}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 57
    const/4 v2, 0x2

    invoke-static {v3, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 58
    array-length v2, v0

    invoke-static {v2, v1, v5}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 59
    const/4 v2, 0x5

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 61
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 62
    return-void
.end method
