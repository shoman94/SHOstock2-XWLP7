.class public Lmyorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;
.super Lmyorg/bouncycastle/jce/provider/JDKKeyStore;
.source "JDKKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BouncyCastleStore"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 720
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;-><init>()V

    return-void
.end method


# virtual methods
.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 14
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 724
    if-nez p1, :cond_1

    .line 781
    :cond_0
    return-void

    .line 729
    :cond_1
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 730
    .local v8, dIn:Ljava/io/DataInputStream;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 732
    .local v13, version:I
    const/4 v0, 0x1

    if-eq v13, v0, :cond_2

    .line 733
    if-eqz v13, :cond_2

    .line 734
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wrong version of key store."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_2
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v4, v0, [B

    .line 740
    .local v4, salt:[B
    array-length v0, v4

    const/16 v2, 0x14

    if-eq v0, v2, :cond_3

    .line 741
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Key store corrupted."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_3
    invoke-virtual {v8, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 746
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 748
    .local v5, iterationCount:I
    if-ltz v5, :cond_4

    const/16 v0, 0x1000

    if-le v5, v0, :cond_5

    .line 749
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Key store corrupted."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_5
    if-nez v13, :cond_6

    .line 754
    const-string v1, "OldPBEWithSHAAndTwofish-CBC"

    .line 759
    .local v1, cipherAlg:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x2

    move-object v0, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 761
    .local v7, cipher:Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/CipherInputStream;

    invoke-direct {v6, v8, v7}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 763
    .local v6, cIn:Ljavax/crypto/CipherInputStream;
    new-instance v10, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v10}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 764
    .local v10, dig:Lmyorg/bouncycastle/crypto/Digest;
    new-instance v9, Lmyorg/bouncycastle/crypto/io/DigestInputStream;

    invoke-direct {v9, v6, v10}, Lmyorg/bouncycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lmyorg/bouncycastle/crypto/Digest;)V

    .line 766
    .local v9, dgIn:Lmyorg/bouncycastle/crypto/io/DigestInputStream;
    invoke-virtual {p0, v9}, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->loadStore(Ljava/io/InputStream;)V

    .line 769
    invoke-interface {v10}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v11, v0, [B

    .line 770
    .local v11, hash:[B
    const/4 v0, 0x0

    invoke-interface {v10, v11, v0}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 774
    invoke-interface {v10}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v12, v0, [B

    .line 775
    .local v12, oldHash:[B
    invoke-static {v6, v12}, Lmyorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 777
    invoke-static {v11, v12}, Lmyorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 779
    new-instance v0, Ljava/io/IOException;

    const-string v2, "KeyStore integrity check failed."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    .end local v1           #cipherAlg:Ljava/lang/String;
    .end local v6           #cIn:Ljavax/crypto/CipherInputStream;
    .end local v7           #cipher:Ljavax/crypto/Cipher;
    .end local v9           #dgIn:Lmyorg/bouncycastle/crypto/io/DigestInputStream;
    .end local v10           #dig:Lmyorg/bouncycastle/crypto/Digest;
    .end local v11           #hash:[B
    .end local v12           #oldHash:[B
    :cond_6
    const-string v1, "PBEWithSHAAndTwofish-CBC"

    .restart local v1       #cipherAlg:Ljava/lang/String;
    goto :goto_0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 12
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 785
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 786
    .local v8, dOut:Ljava/io/DataOutputStream;
    const/16 v0, 0x14

    new-array v4, v0, [B

    .line 787
    .local v4, salt:[B
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v5, v0, 0x400

    .line 789
    .local v5, iterationCount:I
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 791
    invoke-virtual {v8, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 792
    array-length v0, v4

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 793
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 794
    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 796
    const-string v1, "PBEWithSHAAndTwofish-CBC"

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 799
    .local v7, cipher:Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, v8, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 800
    .local v6, cOut:Ljavax/crypto/CipherOutputStream;
    new-instance v9, Lmyorg/bouncycastle/crypto/io/DigestOutputStream;

    new-instance v0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v9, v6, v0}, Lmyorg/bouncycastle/crypto/io/DigestOutputStream;-><init>(Ljava/io/OutputStream;Lmyorg/bouncycastle/crypto/Digest;)V

    .line 802
    .local v9, dgOut:Lmyorg/bouncycastle/crypto/io/DigestOutputStream;
    invoke-virtual {p0, v9}, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->saveStore(Ljava/io/OutputStream;)V

    .line 804
    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/io/DigestOutputStream;->getDigest()Lmyorg/bouncycastle/crypto/Digest;

    move-result-object v10

    .line 805
    .local v10, dig:Lmyorg/bouncycastle/crypto/Digest;
    invoke-interface {v10}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v11, v0, [B

    .line 807
    .local v11, hash:[B
    const/4 v0, 0x0

    invoke-interface {v10, v11, v0}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 809
    invoke-virtual {v6, v11}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 811
    invoke-virtual {v6}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 812
    return-void
.end method
