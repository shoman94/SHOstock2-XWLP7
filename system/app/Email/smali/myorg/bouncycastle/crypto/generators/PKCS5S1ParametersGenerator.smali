.class public Lmyorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;
.super Lmyorg/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS5S1ParametersGenerator.java"


# instance fields
.field private digest:Lmyorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/Digest;)V
    .locals 0
    .parameter "digest"

    .prologue
    .line 27
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 28
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    .line 29
    return-void
.end method

.method private generateDerivedKey()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 35
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v0, v2, [B

    .line 37
    .local v0, digestBytes:[B
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v4, v4

    invoke-interface {v2, v3, v5, v4}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 38
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v4, v4

    invoke-interface {v2, v3, v5, v4}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 40
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v0, v5}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 41
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget v2, p0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    if-ge v1, v2, :cond_0

    .line 42
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    array-length v3, v0

    invoke-interface {v2, v0, v5, v3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 43
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v0, v5}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-object v0
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 1
    .parameter "keySize"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedParameters(I)Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public generateDerivedParameters(I)Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 4
    .parameter "keySize"

    .prologue
    .line 59
    div-int/lit8 p1, p1, 0x8

    .line 61
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    if-le p1, v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t generate a derived key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes long."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_0
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedKey()[B

    move-result-object v0

    .line 68
    .local v0, dKey:[B
    new-instance v1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 4
    .parameter "keySize"
    .parameter "ivSize"

    .prologue
    .line 82
    div-int/lit8 p1, p1, 0x8

    .line 83
    div-int/lit8 p2, p2, 0x8

    .line 85
    add-int v1, p1, p2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 86
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t generate a derived key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, p1, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes long."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedKey()[B

    move-result-object v0

    .line 92
    .local v0, dKey:[B
    new-instance v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
