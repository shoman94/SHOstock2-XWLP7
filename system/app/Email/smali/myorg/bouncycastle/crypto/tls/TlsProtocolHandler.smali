.class public Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;
.super Ljava/lang/Object;
.source "TlsProtocolHandler.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final emptybuf:[B


# instance fields
.field private SRP_A:Ljava/math/BigInteger;

.field private SRP_identity:[B

.field private SRP_password:[B

.field private Yc:Ljava/math/BigInteger;

.field private alertQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

.field private appDataReady:Z

.field private applicationDataQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

.field private changeCipherSpecQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

.field private chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

.field private clientRandom:[B

.field private closed:Z

.field private connection_state:S

.field private extendedClientHello:Z

.field private failedWithError:Z

.field private handshakeQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

.field private ms:[B

.field private pms:[B

.field private random:Ljava/security/SecureRandom;

.field private rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

.field private serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field private serverRandom:[B

.field private verifyer:Lmyorg/bouncycastle/crypto/tls/CertificateVerifyer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ONE:Ljava/math/BigInteger;

    .line 47
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->TWO:Ljava/math/BigInteger;

    .line 138
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->emptybuf:[B

    return-void
.end method

.method private processAlert()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 761
    :cond_0
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v3

    if-lt v3, v4, :cond_2

    .line 765
    new-array v2, v4, [B

    .line 766
    .local v2, tmp:[B
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3, v2, v5, v4, v5}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 767
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3, v4}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    .line 768
    aget-byte v3, v2, v5

    int-to-short v1, v3

    .line 769
    .local v1, level:S
    aget-byte v3, v2, v6

    int-to-short v0, v3

    .line 770
    .local v0, description:S
    if-ne v1, v4, :cond_1

    .line 774
    iput-boolean v6, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    .line 775
    iput-boolean v6, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    .line 780
    :try_start_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Internal TLS error, this could be an attack"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 789
    :cond_1
    if-nez v0, :cond_0

    .line 793
    invoke-virtual {p0, v6, v5}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_0

    .line 800
    .end local v0           #description:S
    .end local v1           #level:S
    .end local v2           #tmp:[B
    :cond_2
    return-void

    .line 781
    .restart local v0       #description:S
    .restart local v1       #level:S
    .restart local v2       #tmp:[B
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private processApplicationData()V
    .locals 0

    .prologue
    .line 758
    return-void
.end method

.method private processChangeCipherSpec()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 809
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 813
    new-array v0, v3, [B

    .line 814
    .local v0, b:[B
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, v0, v4, v3, v4}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 815
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, v3}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    .line 816
    aget-byte v1, v0, v4

    if-eq v1, v3, :cond_0

    .line 820
    invoke-virtual {p0, v5, v6}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_0

    .line 826
    :cond_0
    iget-short v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-ne v1, v6, :cond_1

    .line 827
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v2, v2, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    iput-object v2, v1, Lmyorg/bouncycastle/crypto/tls/RecordStream;->readSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    .line 828
    const/16 v1, 0xb

    iput-short v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto :goto_0

    .line 833
    :cond_1
    const/16 v1, 0x28

    invoke-virtual {p0, v5, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_0

    .line 838
    .end local v0           #b:[B
    :cond_2
    return-void
.end method

.method private processDHEKeyExchange(Ljava/io/ByteArrayInputStream;Lmyorg/bouncycastle/crypto/Signer;)V
    .locals 20
    .parameter "is"
    .parameter "signer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    move-object/from16 v16, p1

    .line 842
    .local v16, sigIn:Ljava/io/InputStream;
    if-eqz p2, :cond_0

    .line 843
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lmyorg/bouncycastle/crypto/Signer;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/Signer;->update([BII)V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/Signer;->update([BII)V

    .line 847
    new-instance v16, Lmyorg/bouncycastle/crypto/io/SignerInputStream;

    .end local v16           #sigIn:Ljava/io/InputStream;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/io/SignerInputStream;-><init>(Ljava/io/InputStream;Lmyorg/bouncycastle/crypto/Signer;)V

    .line 853
    .restart local v16       #sigIn:Ljava/io/InputStream;
    :cond_0
    invoke-static/range {v16 .. v16}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v14

    .line 854
    .local v14, pByte:[B
    invoke-static/range {v16 .. v16}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v12

    .line 855
    .local v12, gByte:[B
    invoke-static/range {v16 .. v16}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 857
    .local v5, YsByte:[B
    if-eqz p2, :cond_1

    .line 858
    invoke-static/range {p1 .. p1}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v15

    .line 863
    .local v15, sigByte:[B
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lmyorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result v17

    if-nez v17, :cond_1

    .line 864
    const/16 v17, 0x2

    const/16 v18, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 868
    .end local v15           #sigByte:[B
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 873
    new-instance v13, Ljava/math/BigInteger;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v13, v0, v14}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 874
    .local v13, p:Ljava/math/BigInteger;
    new-instance v11, Ljava/math/BigInteger;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v11, v0, v12}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 875
    .local v11, g:Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v4, v0, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 880
    .local v4, Ys:Ljava/math/BigInteger;
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v17

    if-nez v17, :cond_2

    .line 881
    const/16 v17, 0x2

    const/16 v18, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 883
    :cond_2
    sget-object v17, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-ltz v17, :cond_3

    sget-object v17, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-lez v17, :cond_4

    .line 884
    :cond_3
    const/16 v17, 0x2

    const/16 v18, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 888
    :cond_4
    sget-object v17, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-ltz v17, :cond_5

    sget-object v17, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-lez v17, :cond_6

    .line 889
    :cond_5
    const/16 v17, 0x2

    const/16 v18, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 895
    :cond_6
    new-instance v10, Lmyorg/bouncycastle/crypto/params/DHParameters;

    invoke-direct {v10, v13, v11}, Lmyorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 898
    .local v10, dhParams:Lmyorg/bouncycastle/crypto/params/DHParameters;
    new-instance v8, Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v8}, Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    .line 899
    .local v8, dhGen:Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;
    new-instance v17, Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v10}, Lmyorg/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lmyorg/bouncycastle/crypto/params/DHParameters;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 901
    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->generateKeyPair()Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v9

    .line 904
    .local v9, dhPair:Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v17

    check-cast v17, Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual/range {v17 .. v17}, Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->Yc:Ljava/math/BigInteger;

    .line 907
    new-instance v7, Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;

    invoke-direct {v7}, Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;-><init>()V

    .line 908
    .local v7, dhAgree:Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;
    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 910
    new-instance v17, Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v10}, Lmyorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/DHParameters;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lmyorg/bouncycastle/crypto/agreement/DHBasicAgreement;->calculateAgreement(Lmyorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v6

    .line 912
    .local v6, agreement:Ljava/math/BigInteger;
    invoke-static {v6}, Lmyorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    .line 913
    return-void
.end method

.method private processHandshake()V
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    :cond_0
    const/16 v31, 0x0

    .line 254
    .local v31, read:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v39

    const/16 v40, 0x4

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_2

    .line 255
    const/16 v39, 0x4

    move/from16 v0, v39

    new-array v7, v0, [B

    .line 256
    .local v7, beginning:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x4

    const/16 v42, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v7, v1, v2, v3}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 257
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 258
    .local v8, bis:Ljava/io/ByteArrayInputStream;
    invoke-static {v8}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v36

    .line 259
    .local v36, type:S
    invoke-static {v8}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v27

    .line 265
    .local v27, len:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v39

    add-int/lit8 v40, v27, 0x4

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_2

    .line 269
    move/from16 v0, v27

    new-array v10, v0, [B

    .line 270
    .local v10, buf:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x4

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v27

    move/from16 v3, v41

    invoke-virtual {v0, v10, v1, v2, v3}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    move-object/from16 v39, v0

    add-int/lit8 v40, v27, 0x4

    invoke-virtual/range {v39 .. v40}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    .line 277
    const/16 v39, 0x14

    move/from16 v0, v36

    move/from16 v1, v39

    if-eq v0, v1, :cond_1

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->hash1:Lmyorg/bouncycastle/crypto/tls/CombinedHash;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x4

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v7, v1, v2}, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->hash2:Lmyorg/bouncycastle/crypto/tls/CombinedHash;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x4

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v7, v1, v2}, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->hash1:Lmyorg/bouncycastle/crypto/tls/CombinedHash;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v27

    invoke-virtual {v0, v10, v1, v2}, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->hash2:Lmyorg/bouncycastle/crypto/tls/CombinedHash;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v27

    invoke-virtual {v0, v10, v1, v2}, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    .line 287
    :cond_1
    new-instance v24, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 292
    .local v24, is:Ljava/io/ByteArrayInputStream;
    sparse-switch v36, :sswitch_data_0

    .line 744
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 749
    .end local v7           #beginning:[B
    .end local v8           #bis:Ljava/io/ByteArrayInputStream;
    .end local v10           #buf:[B
    .end local v24           #is:Ljava/io/ByteArrayInputStream;
    .end local v27           #len:I
    .end local v36           #type:S
    :cond_2
    :goto_0
    if-nez v31, :cond_0

    .line 751
    return-void

    .line 294
    .restart local v7       #beginning:[B
    .restart local v8       #bis:Ljava/io/ByteArrayInputStream;
    .restart local v10       #buf:[B
    .restart local v24       #is:Ljava/io/ByteArrayInputStream;
    .restart local v27       #len:I
    .restart local v36       #type:S
    :sswitch_0
    move-object/from16 v0, p0

    iget-short v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_0

    .line 358
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 361
    :cond_3
    :goto_1
    const/16 v39, 0x3

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 362
    const/16 v31, 0x1

    .line 363
    goto :goto_0

    .line 299
    :pswitch_0
    invoke-static/range {v24 .. v24}, Lmyorg/bouncycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lmyorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v12

    .line 300
    .local v12, cert:Lmyorg/bouncycastle/crypto/tls/Certificate;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 302
    iget-object v0, v12, Lmyorg/bouncycastle/crypto/tls/Certificate;->certs:[Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aget-object v38, v39, v40

    .line 303
    .local v38, x509Cert:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;
    invoke-virtual/range {v38 .. v38}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSubjectPublicKeyInfo()Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v26

    .line 307
    .local v26, keyInfo:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :try_start_0
    invoke-static/range {v26 .. v26}, Lmyorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v39

    if-eqz v39, :cond_4

    .line 314
    const/16 v39, 0x2

    const/16 v40, 0x50

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 324
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;->getKeyExchangeAlgorithm()S

    move-result v39

    sparse-switch v39, :sswitch_data_1

    .line 345
    const/16 v39, 0x2

    const/16 v40, 0x2b

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 351
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->verifyer:Lmyorg/bouncycastle/crypto/tls/CertificateVerifyer;

    move-object/from16 v39, v0

    invoke-virtual {v12}, Lmyorg/bouncycastle/crypto/tls/Certificate;->getCerts()[Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v40

    invoke-interface/range {v39 .. v40}, Lmyorg/bouncycastle/crypto/tls/CertificateVerifyer;->isValid([Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;)Z

    move-result v39

    if-nez v39, :cond_3

    .line 352
    const/16 v39, 0x2

    const/16 v40, 0x5a

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_1

    .line 308
    :catch_0
    move-exception v16

    .line 309
    .local v16, e:Ljava/lang/RuntimeException;
    const/16 v39, 0x2

    const/16 v40, 0x2b

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_2

    .line 326
    .end local v16           #e:Ljava/lang/RuntimeException;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    instance-of v0, v0, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    move/from16 v39, v0

    if-nez v39, :cond_6

    .line 327
    const/16 v39, 0x2

    const/16 v40, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 329
    :cond_6
    const/16 v39, 0x20

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->validateKeyUsage(Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;I)V

    goto :goto_3

    .line 333
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    instance-of v0, v0, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    move/from16 v39, v0

    if-nez v39, :cond_7

    .line 334
    const/16 v39, 0x2

    const/16 v40, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 336
    :cond_7
    const/16 v39, 0x80

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->validateKeyUsage(Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;I)V

    goto :goto_3

    .line 340
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    instance-of v0, v0, Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    move/from16 v39, v0

    if-nez v39, :cond_5

    .line 341
    const/16 v39, 0x2

    const/16 v40, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_3

    .line 366
    .end local v12           #cert:Lmyorg/bouncycastle/crypto/tls/Certificate;
    .end local v26           #keyInfo:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v38           #x509Cert:Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;
    :sswitch_4
    move-object/from16 v0, p0

    iget-short v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_1

    .line 408
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_0

    .line 372
    :pswitch_1
    const/16 v39, 0xc

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v32, v0

    .line 373
    .local v32, receivedChecksum:[B
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    .line 374
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 379
    const/16 v39, 0xc

    move/from16 v0, v39

    new-array v13, v0, [B

    .line 380
    .local v13, checksum:[B
    const/16 v39, 0x24

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v28, v0

    .line 381
    .local v28, md5andsha1:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->hash2:Lmyorg/bouncycastle/crypto/tls/CombinedHash;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->doFinal([BI)I

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ms:[B

    move-object/from16 v39, v0

    const-string v40, "server finished"

    invoke-static/range {v40 .. v40}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2, v13}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->PRF([B[B[B[B)V

    .line 388
    const/16 v23, 0x0

    .local v23, i:I
    :goto_4
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v23

    move/from16 v1, v39

    if-ge v0, v1, :cond_9

    .line 389
    aget-byte v39, v32, v23

    aget-byte v40, v13, v23

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_8

    .line 394
    const/16 v39, 0x2

    const/16 v40, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 388
    :cond_8
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 398
    :cond_9
    const/16 v39, 0xc

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 404
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    .line 405
    const/16 v31, 0x1

    .line 406
    goto/16 :goto_0

    .line 412
    .end local v13           #checksum:[B
    .end local v23           #i:I
    .end local v28           #md5andsha1:[B
    .end local v32           #receivedChecksum:[B
    :sswitch_5
    move-object/from16 v0, p0

    iget-short v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_2

    .line 485
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_0

    .line 417
    :pswitch_2
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->checkVersion(Ljava/io/InputStream;Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;)V

    .line 422
    const/16 v39, 0x20

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    .line 428
    invoke-static/range {v24 .. v24}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v35

    .line 436
    .local v35, sessionId:[B
    invoke-static/range {v24 .. v24}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuiteManager;->getCipherSuite(ILmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;)Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    .line 443
    invoke-static/range {v24 .. v24}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v15

    .line 444
    .local v15, compressionMethod:S
    if-eqz v15, :cond_a

    .line 445
    const/16 v39, 0x2

    const/16 v40, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 457
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->extendedClientHello:Z

    move/from16 v39, v0

    if-eqz v39, :cond_b

    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v39

    if-lez v39, :cond_b

    .line 460
    invoke-static/range {v24 .. v24}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v20

    .line 463
    .local v20, extBytes:[B
    new-instance v34, Ljava/util/Hashtable;

    invoke-direct/range {v34 .. v34}, Ljava/util/Hashtable;-><init>()V

    .line 465
    .local v34, serverExtensions:Ljava/util/Hashtable;
    new-instance v19, Ljava/io/ByteArrayInputStream;

    invoke-direct/range {v19 .. v20}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 467
    .local v19, ext:Ljava/io/ByteArrayInputStream;
    :goto_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v39

    if-lez v39, :cond_b

    .line 468
    invoke-static/range {v19 .. v19}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v21

    .line 469
    .local v21, extType:I
    invoke-static/range {v19 .. v19}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v22

    .line 471
    .local v22, extValue:[B
    new-instance v39, Ljava/lang/Integer;

    move-object/from16 v0, v39

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 479
    .end local v19           #ext:Ljava/io/ByteArrayInputStream;
    .end local v20           #extBytes:[B
    .end local v21           #extType:I
    .end local v22           #extValue:[B
    .end local v34           #serverExtensions:Ljava/util/Hashtable;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 481
    const/16 v39, 0x2

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 482
    const/16 v31, 0x1

    .line 483
    goto/16 :goto_0

    .line 489
    .end local v15           #compressionMethod:S
    .end local v35           #sessionId:[B
    :sswitch_6
    move-object/from16 v0, p0

    iget-short v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_3

    .line 652
    const/16 v39, 0x2

    const/16 v40, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_0

    .line 496
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;->getKeyExchangeAlgorithm()S

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_c

    .line 497
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 508
    :cond_c
    :pswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 509
    move-object/from16 v0, p0

    iget-short v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    const/16 v40, 0x5

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_e

    const/16 v25, 0x1

    .line 510
    .local v25, isCertReq:Z
    :goto_6
    const/16 v39, 0x6

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 512
    if-eqz v25, :cond_d

    .line 513
    invoke-direct/range {p0 .. p0}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->sendClientCertificate()V

    .line 521
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;->getKeyExchangeAlgorithm()S

    move-result v39

    packed-switch v39, :pswitch_data_4

    .line 595
    :pswitch_5
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 599
    :goto_7
    const/16 v39, 0x7

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 604
    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v14, v0, [B

    .line 605
    .local v14, cmessage:[B
    const/16 v39, 0x0

    const/16 v40, 0x1

    aput-byte v40, v14, v39

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    const/16 v40, 0x14

    const/16 v41, 0x0

    array-length v0, v14

    move/from16 v42, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v14, v2, v3}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 609
    const/16 v39, 0x9

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 614
    const/16 v39, 0x30

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ms:[B

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    add-int v39, v39, v40

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 617
    .local v30, random:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v30

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v30

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    move-object/from16 v39, v0

    const-string v40, "master secret"

    invoke-static/range {v40 .. v40}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ms:[B

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v30

    move-object/from16 v3, v41

    invoke-static {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->PRF([B[B[B[B)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ms:[B

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v42, v0

    invoke-virtual/range {v39 .. v42}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;->init([B[B[B)V

    .line 633
    const/16 v39, 0xc

    move/from16 v0, v39

    new-array v13, v0, [B

    .line 634
    .restart local v13       #checksum:[B
    const/16 v39, 0x24

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v28, v0

    .line 635
    .restart local v28       #md5andsha1:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/RecordStream;->hash1:Lmyorg/bouncycastle/crypto/tls/CombinedHash;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->doFinal([BI)I

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->ms:[B

    move-object/from16 v39, v0

    const-string v40, "client finished"

    invoke-static/range {v40 .. v40}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2, v13}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->PRF([B[B[B[B)V

    .line 639
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 640
    .local v9, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v39, 0x14

    move/from16 v0, v39

    invoke-static {v0, v9}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 641
    const/16 v39, 0xc

    move/from16 v0, v39

    invoke-static {v0, v9}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 642
    invoke-virtual {v9, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 643
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v29

    .line 645
    .local v29, message:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    const/16 v40, 0x16

    const/16 v41, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v42, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v29

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 648
    const/16 v39, 0xa

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 649
    const/16 v31, 0x1

    .line 650
    goto/16 :goto_0

    .line 509
    .end local v9           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v13           #checksum:[B
    .end local v14           #cmessage:[B
    .end local v25           #isCertReq:Z
    .end local v28           #md5andsha1:[B
    .end local v29           #message:[B
    .end local v30           #random:[B
    :cond_e
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 530
    .restart local v25       #isCertReq:Z
    :pswitch_6
    const/16 v39, 0x30

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x3

    aput-byte v41, v39, v40

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    move-object/from16 v39, v0

    const/16 v40, 0x1

    const/16 v41, 0x1

    aput-byte v41, v39, v40

    .line 540
    new-instance v33, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct/range {v33 .. v33}, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    .line 541
    .local v33, rsa:Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;
    new-instance v17, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    .line 542
    .local v17, encoding:Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;
    const/16 v39, 0x1

    new-instance v40, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    move-object/from16 v42, v0

    invoke-direct/range {v40 .. v42}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object/from16 v0, v17

    move/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 544
    const/16 v18, 0x0

    .line 546
    .local v18, encrypted:[B
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;->processBlock([BII)[B
    :try_end_1
    .catch Lmyorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 559
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->sendClientKeyExchange([B)V

    goto/16 :goto_7

    .line 548
    :catch_1
    move-exception v16

    .line 553
    .local v16, e:Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
    const/16 v39, 0x2

    const/16 v40, 0x50

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_8

    .line 568
    .end local v16           #e:Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
    .end local v17           #encoding:Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;
    .end local v18           #encrypted:[B
    .end local v33           #rsa:Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->Yc:Ljava/math/BigInteger;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lmyorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v5

    .line 571
    .local v5, YcByte:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->sendClientKeyExchange([B)V

    goto/16 :goto_7

    .line 582
    .end local v5           #YcByte:[B
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->SRP_A:Ljava/math/BigInteger;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lmyorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v11

    .line 585
    .local v11, bytes:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->sendClientKeyExchange([B)V

    goto/16 :goto_7

    .line 656
    .end local v11           #bytes:[B
    .end local v25           #isCertReq:Z
    :sswitch_7
    move-object/from16 v0, p0

    iget-short v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_5

    .line 698
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 701
    :goto_9
    const/16 v39, 0x4

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 702
    const/16 v31, 0x1

    .line 703
    goto/16 :goto_0

    .line 661
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;->getKeyExchangeAlgorithm()S

    move-result v39

    const/16 v40, 0xa

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_f

    .line 662
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 671
    :cond_f
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;->getKeyExchangeAlgorithm()S

    move-result v39

    packed-switch v39, :pswitch_data_6

    .line 693
    :pswitch_b
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_9

    .line 673
    :pswitch_c
    new-instance v39, Lmyorg/bouncycastle/crypto/tls/TlsRSASigner;

    invoke-direct/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsRSASigner;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processDHEKeyExchange(Ljava/io/ByteArrayInputStream;Lmyorg/bouncycastle/crypto/Signer;)V

    goto :goto_9

    .line 677
    :pswitch_d
    new-instance v39, Lmyorg/bouncycastle/crypto/tls/TlsDSSSigner;

    invoke-direct/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsDSSSigner;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processDHEKeyExchange(Ljava/io/ByteArrayInputStream;Lmyorg/bouncycastle/crypto/Signer;)V

    goto :goto_9

    .line 681
    :pswitch_e
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processSRPKeyExchange(Ljava/io/ByteArrayInputStream;Lmyorg/bouncycastle/crypto/Signer;)V

    goto :goto_9

    .line 685
    :pswitch_f
    new-instance v39, Lmyorg/bouncycastle/crypto/tls/TlsRSASigner;

    invoke-direct/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsRSASigner;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processSRPKeyExchange(Ljava/io/ByteArrayInputStream;Lmyorg/bouncycastle/crypto/Signer;)V

    goto :goto_9

    .line 689
    :pswitch_10
    new-instance v39, Lmyorg/bouncycastle/crypto/tls/TlsDSSSigner;

    invoke-direct/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsDSSSigner;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processSRPKeyExchange(Ljava/io/ByteArrayInputStream;Lmyorg/bouncycastle/crypto/Signer;)V

    goto/16 :goto_9

    .line 706
    :sswitch_8
    move-object/from16 v0, p0

    iget-short v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_7

    .line 731
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 734
    :goto_a
    const/16 v39, 0x5

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 735
    const/16 v31, 0x1

    .line 736
    goto/16 :goto_0

    .line 712
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->chosenCipherSuite:Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;->getKeyExchangeAlgorithm()S

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_10

    .line 713
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 722
    :cond_10
    :pswitch_12
    invoke-static/range {v24 .. v24}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v37

    .line 723
    .local v37, types:[B
    invoke-static/range {v24 .. v24}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 727
    .local v6, auths:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    goto :goto_a

    .line 292
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0xb -> :sswitch_0
        0xc -> :sswitch_7
        0xd -> :sswitch_8
        0xe -> :sswitch_6
        0x14 -> :sswitch_4
    .end sparse-switch

    .line 294
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 324
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_3
        0x5 -> :sswitch_2
        0xb -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch

    .line 366
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_1
    .end packed-switch

    .line 412
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 489
    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 521
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 656
    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 671
    :pswitch_data_6
    .packed-switch 0x3
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 706
    :pswitch_data_7
    .packed-switch 0x3
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private processSRPKeyExchange(Ljava/io/ByteArrayInputStream;Lmyorg/bouncycastle/crypto/Signer;)V
    .locals 20
    .parameter "is"
    .parameter "signer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 916
    move-object/from16 v15, p1

    .line 917
    .local v15, sigIn:Ljava/io/InputStream;
    if-eqz p2, :cond_0

    .line 918
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverPublicKey:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lmyorg/bouncycastle/crypto/Signer;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->clientRandom:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/Signer;->update([BII)V

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->serverRandom:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/Signer;->update([BII)V

    .line 922
    new-instance v15, Lmyorg/bouncycastle/crypto/io/SignerInputStream;

    .end local v15           #sigIn:Ljava/io/InputStream;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v15, v0, v1}, Lmyorg/bouncycastle/crypto/io/SignerInputStream;-><init>(Ljava/io/InputStream;Lmyorg/bouncycastle/crypto/Signer;)V

    .line 928
    .restart local v15       #sigIn:Ljava/io/InputStream;
    :cond_0
    invoke-static {v15}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 929
    .local v7, NByte:[B
    invoke-static {v15}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v11

    .line 930
    .local v11, gByte:[B
    invoke-static {v15}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v13

    .line 931
    .local v13, sByte:[B
    invoke-static {v15}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 933
    .local v5, BByte:[B
    if-eqz p2, :cond_1

    .line 934
    invoke-static/range {p1 .. p1}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v14

    .line 939
    .local v14, sigByte:[B
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lmyorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result v17

    if-nez v17, :cond_1

    .line 940
    const/16 v17, 0x2

    const/16 v18, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 944
    .end local v14           #sigByte:[B
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 946
    new-instance v6, Ljava/math/BigInteger;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v6, v0, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 947
    .local v6, N:Ljava/math/BigInteger;
    new-instance v10, Ljava/math/BigInteger;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v10, v0, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 948
    .local v10, g:Ljava/math/BigInteger;
    move-object v12, v13

    .line 949
    .local v12, s:[B
    new-instance v4, Ljava/math/BigInteger;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v4, v0, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 951
    .local v4, B:Ljava/math/BigInteger;
    new-instance v16, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;

    invoke-direct/range {v16 .. v16}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;-><init>()V

    .line 952
    .local v16, srpClient:Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;
    new-instance v17, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct/range {v17 .. v17}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v6, v10, v1, v2}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->SRP_identity:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->SRP_password:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v12, v1, v2}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->generateClientCredentials([B[B[B)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->SRP_A:Ljava/math/BigInteger;

    .line 957
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/crypto/agreement/srp/SRP6Client;->calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 958
    .local v8, S:Ljava/math/BigInteger;
    invoke-static {v8}, Lmyorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->pms:[B
    :try_end_0
    .catch Lmyorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    .end local v8           #S:Ljava/math/BigInteger;
    :goto_0
    return-void

    .line 959
    :catch_0
    move-exception v9

    .line 960
    .local v9, e:Lmyorg/bouncycastle/crypto/CryptoException;
    const/16 v17, 0x2

    const/16 v18, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_0
.end method

.method private sendClientCertificate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 983
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 984
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0xb

    invoke-static {v2, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 985
    const/4 v2, 0x3

    invoke-static {v2, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 986
    invoke-static {v5, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 987
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 989
    .local v1, message:[B
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    const/16 v3, 0x16

    array-length v4, v1

    invoke-virtual {v2, v3, v1, v5, v4}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 990
    return-void
.end method

.method private sendClientKeyExchange([B)V
    .locals 6
    .parameter "keData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 993
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 994
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x10

    invoke-static {v2, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 995
    array-length v2, p1

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 996
    invoke-static {p1, v0}, Lmyorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 997
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 999
    .local v1, message:[B
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    const/16 v3, 0x16

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 1000
    return-void
.end method

.method private validateKeyUsage(Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;I)V
    .locals 6
    .parameter "c"
    .parameter "keyUsageBits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 965
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 966
    .local v2, exts:Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_0

    .line 967
    sget-object v4, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v4}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 968
    .local v1, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_0

    .line 969
    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/KeyUsage;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v3

    .line 970
    .local v3, ku:Lmyorg/bouncycastle/asn1/DERBitString;
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 971
    .local v0, bits:I
    and-int v4, v0, p2

    if-eq v4, p2, :cond_0

    .line 972
    const/4 v4, 0x2

    const/16 v5, 0x2e

    invoke-virtual {p0, v4, v5}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 976
    .end local v0           #bits:I
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #ku:Lmyorg/bouncycastle/asn1/DERBitString;
    :cond_0
    return-void
.end method


# virtual methods
.method protected assertEmpty(Ljava/io/ByteArrayInputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1277
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 1278
    const/4 v0, 0x2

    const/16 v1, 0x32

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1280
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1265
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v0, :cond_0

    .line 1266
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1268
    :cond_0
    return-void
.end method

.method protected failWithError(SS)V
    .locals 5
    .parameter "alertLevel"
    .parameter "alertDescription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 1234
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_1

    .line 1238
    new-array v0, v3, [B

    .line 1239
    .local v0, error:[B
    int-to-byte v1, p1

    aput-byte v1, v0, v4

    .line 1240
    int-to-byte v1, p2

    aput-byte v1, v0, v2

    .line 1241
    iput-boolean v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    .line 1243
    if-ne p1, v3, :cond_0

    .line 1247
    iput-boolean v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    .line 1249
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0, v4, v3}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 1250
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->close()V

    .line 1251
    if-ne p1, v3, :cond_2

    .line 1252
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Internal TLS error, this could be an attack"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1255
    .end local v0           #error:[B
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Internal TLS error, this could be an attack"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1257
    .restart local v0       #error:[B
    :cond_2
    return-void
.end method

.method protected flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1283
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->flush()V

    .line 1284
    return-void
.end method

.method protected processData(S[BII)V
    .locals 2
    .parameter "protocol"
    .parameter "buf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    packed-switch p1, :pswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 218
    :pswitch_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 219
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processChangeCipherSpec()V

    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 223
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processAlert()V

    goto :goto_0

    .line 226
    :pswitch_2
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 227
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processHandshake()V

    goto :goto_0

    .line 230
    :pswitch_3
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x2

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 233
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 234
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processApplicationData()V

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected readApplicationData([BII)I
    .locals 4
    .parameter "buf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x50

    const/4 v2, 0x2

    .line 1110
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 1114
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    if-eqz v1, :cond_0

    .line 1118
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Internal TLS error, this could be an attack"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1120
    :cond_0
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-eqz v1, :cond_1

    .line 1124
    const/4 v1, -0x1

    .line 1144
    :goto_1
    return v1

    .line 1128
    :cond_1
    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->readData()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    .local v0, e:Ljava/io/IOException;
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_2

    .line 1131
    invoke-virtual {p0, v2, v3}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1133
    :cond_2
    throw v0

    .line 1134
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1135
    .local v0, e:Ljava/lang/RuntimeException;
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_3

    .line 1136
    invoke-virtual {p0, v2, v3}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1138
    :cond_3
    throw v0

    .line 1141
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_4
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->size()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1142
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 1143
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lmyorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, p3}, Lmyorg/bouncycastle/crypto/tls/ByteQueue;->removeData(I)V

    move v1, p3

    .line 1144
    goto :goto_1
.end method

.method protected writeData([BII)V
    .locals 8
    .parameter "buf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x50

    const/16 v6, 0x17

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1158
    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    if-eqz v2, :cond_0

    .line 1159
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Internal TLS error, this could be an attack"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1161
    :cond_0
    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-eqz v2, :cond_1

    .line 1162
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Sorry, connection has been closed, you cannot write more data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1169
    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    sget-object v3, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->emptybuf:[B

    invoke-virtual {v2, v6, v3, v4, v4}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 1175
    :cond_2
    const/16 v2, 0x4000

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1178
    .local v1, toWrite:I
    :try_start_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->rs:Lmyorg/bouncycastle/crypto/tls/RecordStream;

    const/16 v3, 0x17

    invoke-virtual {v2, v3, p1, p2, v1}, Lmyorg/bouncycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1191
    add-int/2addr p2, v1

    .line 1192
    sub-int/2addr p3, v1

    .line 1193
    if-gtz p3, :cond_2

    .line 1195
    return-void

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    .local v0, e:Ljava/io/IOException;
    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v2, :cond_3

    .line 1181
    invoke-virtual {p0, v5, v7}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1183
    :cond_3
    throw v0

    .line 1184
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1185
    .local v0, e:Ljava/lang/RuntimeException;
    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v2, :cond_4

    .line 1186
    invoke-virtual {p0, v5, v7}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1188
    :cond_4
    throw v0
.end method
