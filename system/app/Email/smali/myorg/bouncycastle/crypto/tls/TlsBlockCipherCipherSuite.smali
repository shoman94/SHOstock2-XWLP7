.class public Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;
.super Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;
.source "TlsBlockCipherCipherSuite.java"


# instance fields
.field private cipherKeySize:I

.field private decryptCipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field private encryptCipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field private keyExchange:S

.field private readDigest:Lmyorg/bouncycastle/crypto/Digest;

.field private readMac:Lmyorg/bouncycastle/crypto/tls/TlsMac;

.field private writeDigest:Lmyorg/bouncycastle/crypto/Digest;

.field private writeMac:Lmyorg/bouncycastle/crypto/tls/TlsMac;


# direct methods
.method protected constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/Digest;IS)V
    .locals 0
    .parameter "encrypt"
    .parameter "decrypt"
    .parameter "writeDigest"
    .parameter "readDigest"
    .parameter "cipherKeySize"
    .parameter "keyExchange"

    .prologue
    .line 34
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;-><init>()V

    .line 35
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->encryptCipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 36
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->decryptCipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 37
    iput-object p3, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeDigest:Lmyorg/bouncycastle/crypto/Digest;

    .line 38
    iput-object p4, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->readDigest:Lmyorg/bouncycastle/crypto/Digest;

    .line 39
    iput p5, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->cipherKeySize:I

    .line 40
    iput-short p6, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->keyExchange:S

    .line 41
    return-void
.end method

.method private initCipher(ZLmyorg/bouncycastle/crypto/BlockCipher;[BIII)V
    .locals 3
    .parameter "forEncryption"
    .parameter "cipher"
    .parameter "key_block"
    .parameter "key_size"
    .parameter "key_offset"
    .parameter "iv_offset"

    .prologue
    .line 70
    new-instance v0, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p3, p5, p4}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 71
    .local v0, key_parameter:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    new-instance v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-interface {p2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    invoke-direct {v1, v0, p3, p6, v2}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[BII)V

    .line 73
    .local v1, parameters_with_iv:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-interface {p2, p1, v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected decodeCiphertext(S[BIILmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;)[B
    .locals 10
    .parameter "type"
    .parameter "ciphertext"
    .parameter "offset"
    .parameter "len"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->decryptCipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 98
    .local v0, blocksize:I
    const/4 v2, 0x0

    .line 103
    .local v2, decrypterror:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 104
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->decryptCipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    add-int v8, v3, p3

    add-int v9, v3, p3

    invoke-interface {v7, p2, v8, p2, v9}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 103
    add-int/2addr v3, v0

    goto :goto_0

    .line 110
    :cond_0
    add-int v7, p3, p4

    add-int/lit8 v7, v7, -0x1

    aget-byte v4, p2, v7

    .line 111
    .local v4, paddingsize:I
    add-int v7, p3, p4

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v4

    if-gez v7, :cond_3

    .line 116
    const/4 v2, 0x1

    .line 117
    const/4 v4, 0x0

    .line 136
    :cond_1
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->readMac:Lmyorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v7

    sub-int v7, p4, v7

    sub-int/2addr v7, v4

    add-int/lit8 v6, v7, -0x1

    .line 137
    .local v6, plaintextlength:I
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->readMac:Lmyorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v7, p1, p2, p3, v6}, Lmyorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(S[BII)[B

    move-result-object v1

    .line 142
    .local v1, calculatedMac:[B
    const/4 v3, 0x0

    :goto_1
    array-length v7, v1

    if-ge v3, v7, :cond_5

    .line 143
    add-int v7, p3, v6

    add-int/2addr v7, v3

    aget-byte v7, p2, v7

    aget-byte v8, v1, v3

    if-eq v7, v8, :cond_2

    .line 144
    const/4 v2, 0x1

    .line 142
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    .end local v1           #calculatedMac:[B
    .end local v6           #plaintextlength:I
    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-gt v3, v4, :cond_1

    .line 123
    add-int v7, p3, p4

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v3

    aget-byte v7, p2, v7

    if-eq v7, v4, :cond_4

    .line 125
    const/4 v2, 0x1

    .line 122
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 151
    .restart local v1       #calculatedMac:[B
    .restart local v6       #plaintextlength:I
    :cond_5
    if-eqz v2, :cond_6

    .line 152
    const/4 v7, 0x2

    const/16 v8, 0x14

    invoke-virtual {p5, v7, v8}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 154
    :cond_6
    new-array v5, v6, [B

    .line 155
    .local v5, plaintext:[B
    const/4 v7, 0x0

    invoke-static {p2, p3, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    return-object v5
.end method

.method protected encodePlaintext(S[BII)[B
    .locals 9
    .parameter "type"
    .parameter "plaintext"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/4 v8, 0x0

    .line 77
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->encryptCipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 78
    .local v0, blocksize:I
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeMac:Lmyorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v7

    add-int/2addr v7, p4

    add-int/lit8 v7, v7, 0x1

    rem-int/2addr v7, v0

    sub-int v4, v0, v7

    .line 79
    .local v4, paddingsize:I
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeMac:Lmyorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v7

    add-int/2addr v7, p4

    add-int/2addr v7, v4

    add-int/lit8 v6, v7, 0x1

    .line 80
    .local v6, totalsize:I
    new-array v3, v6, [B

    .line 81
    .local v3, outbuf:[B
    invoke-static {p2, p3, v3, v8, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeMac:Lmyorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v7, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(S[BII)[B

    move-result-object v2

    .line 83
    .local v2, mac:[B
    array-length v7, v2

    invoke-static {v2, v8, v3, p4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    array-length v7, v2

    add-int v5, p4, v7

    .line 85
    .local v5, paddoffset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-gt v1, v4, :cond_0

    .line 86
    add-int v7, v1, v5

    int-to-byte v8, v4

    aput-byte v8, v3, v7

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_1

    .line 89
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->encryptCipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v3, v1, v3, v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 88
    add-int/2addr v1, v0

    goto :goto_1

    .line 91
    :cond_1
    return-object v3
.end method

.method protected getKeyExchangeAlgorithm()S
    .locals 1

    .prologue
    .line 161
    iget-short v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->keyExchange:S

    return v0
.end method

.method protected init([B[B[B)V
    .locals 10
    .parameter "ms"
    .parameter "cr"
    .parameter "sr"

    .prologue
    const/4 v9, 0x0

    .line 44
    iget v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->cipherKeySize:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeDigest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->encryptCipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    .line 46
    .local v7, prfSize:I
    new-array v3, v7, [B

    .line 47
    .local v3, key_block:[B
    array-length v0, p2

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v8, v0, [B

    .line 48
    .local v8, random:[B
    array-length v0, p3

    array-length v1, p2

    invoke-static {p2, v9, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    array-length v0, p3

    invoke-static {p3, v9, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    const-string v0, "key expansion"

    invoke-static {v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, v0, v8, v3}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->PRF([B[B[B[B)V

    .line 52
    const/4 v5, 0x0

    .line 55
    .local v5, offset:I
    new-instance v0, Lmyorg/bouncycastle/crypto/tls/TlsMac;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeDigest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeDigest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    invoke-direct {v0, v1, v3, v5, v2}, Lmyorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lmyorg/bouncycastle/crypto/Digest;[BII)V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeMac:Lmyorg/bouncycastle/crypto/tls/TlsMac;

    .line 56
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->writeDigest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    add-int/2addr v5, v0

    .line 57
    new-instance v0, Lmyorg/bouncycastle/crypto/tls/TlsMac;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->readDigest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->readDigest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    invoke-direct {v0, v1, v3, v5, v2}, Lmyorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lmyorg/bouncycastle/crypto/Digest;[BII)V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->readMac:Lmyorg/bouncycastle/crypto/tls/TlsMac;

    .line 58
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->readDigest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    add-int/2addr v5, v0

    .line 61
    const/4 v1, 0x1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->encryptCipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget v4, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->cipherKeySize:I

    iget v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->cipherKeySize:I

    mul-int/lit8 v0, v0, 0x2

    add-int v6, v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->initCipher(ZLmyorg/bouncycastle/crypto/BlockCipher;[BIII)V

    .line 63
    iget v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->cipherKeySize:I

    add-int/2addr v5, v0

    .line 64
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->decryptCipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget v4, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->cipherKeySize:I

    iget v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->cipherKeySize:I

    add-int/2addr v0, v5

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->decryptCipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    add-int v6, v0, v1

    move-object v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;->initCipher(ZLmyorg/bouncycastle/crypto/BlockCipher;[BIII)V

    .line 66
    return-void
.end method
