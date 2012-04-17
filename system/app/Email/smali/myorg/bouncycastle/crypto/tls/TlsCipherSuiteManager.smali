.class public Lmyorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;
.super Ljava/lang/Object;
.source "TlsCipherSuiteManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAESCipher()Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method private static createAESCipherSuite(IS)Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;
    .locals 7
    .parameter "cipherKeySize"
    .parameter "keyExchange"

    .prologue
    .line 134
    new-instance v0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;

    invoke-static {}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->createAESCipher()Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-result-object v1

    invoke-static {}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->createAESCipher()Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-result-object v2

    new-instance v3, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v3}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    new-instance v4, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    move v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/Digest;IS)V

    return-object v0
.end method

.method private static createDESedeCipher()Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method private static createDESedeCipherSuite(IS)Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;
    .locals 7
    .parameter "cipherKeySize"
    .parameter "keyExchange"

    .prologue
    .line 139
    new-instance v0, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;

    invoke-static {}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->createDESedeCipher()Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-result-object v1

    invoke-static {}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->createDESedeCipher()Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    move-result-object v2

    new-instance v3, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v3}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    new-instance v4, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    move v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/crypto/tls/TlsBlockCipherCipherSuite;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/Digest;IS)V

    return-object v0
.end method

.method protected static getCipherSuite(ILmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;)Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;
    .locals 5
    .parameter "number"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x18

    const/16 v0, 0x10

    const/4 v3, 0x5

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 64
    sparse-switch p0, :sswitch_data_0

    .line 122
    const/4 v0, 0x2

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 129
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 66
    :sswitch_0
    invoke-static {v4, v1}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->createDESedeCipherSuite(IS)Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-result-object v0

    goto :goto_0

    .line 69
    :sswitch_1
    invoke-static {v4, v2}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->createDESedeCipherSuite(IS)Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-result-object v0

    goto :goto_0

    .line 72
    :sswitch_2
    invoke-static {v4, v3}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->createDESedeCipherSuite(IS)Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-result-object v0

    goto :goto_0

    .line 75
    :sswitch_3
    invoke-static {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->createAESCipherSuite(IS)Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-result-object v0

    goto :goto_0

    .line 78
    :sswitch_4
    invoke-static {v0, v2}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->createAESCipherSuite(IS)Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-result-object v0

    goto :goto_0

    .line 81
    :sswitch_5
    invoke-static {v0, v3}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->createAESCipherSuite(IS)Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-result-object v0

    goto :goto_0

    .line 84
    :sswitch_6
    const/16 v0, 0x20

    invoke-static {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->createAESCipherSuite(IS)Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-result-object v0

    goto :goto_0

    .line 87
    :sswitch_7
    const/16 v0, 0x20

    invoke-static {v0, v2}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->createAESCipherSuite(IS)Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-result-object v0

    goto :goto_0

    .line 90
    :sswitch_8
    const/16 v0, 0x20

    invoke-static {v0, v3}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->createAESCipherSuite(IS)Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-result-object v0

    goto :goto_0

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x13 -> :sswitch_1
        0x16 -> :sswitch_2
        0x2f -> :sswitch_3
        0x32 -> :sswitch_4
        0x33 -> :sswitch_5
        0x35 -> :sswitch_6
        0x38 -> :sswitch_7
        0x39 -> :sswitch_8
    .end sparse-switch
.end method
