.class public Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;
.super Ljava/lang/Object;
.source "GOST3410ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;


# instance fields
.field private digestParamSetOID:Ljava/lang/String;

.field private encryptionParamSetOID:Ljava/lang/String;

.field private keyParamSetOID:Ljava/lang/String;

.field private keyParameters:Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "keyParamSetID"

    .prologue
    .line 53
    sget-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_CryptoProParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "keyParamSetID"
    .parameter "digestParamSetOID"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "keyParamSetID"
    .parameter "digestParamSetOID"
    .parameter "encryptionParamSetOID"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v1, 0x0

    .line 27
    .local v1, ecP:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;
    :try_start_0
    new-instance v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410NamedParameters;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 36
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 37
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "no key parameter set for passed in name/OID."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {p1}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410NamedParameters;->getOID(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    .line 30
    .local v2, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {v2}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410NamedParameters;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;

    move-result-object v1

    goto :goto_0

    .line 40
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v2           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_1
    new-instance v3, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->getA()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v3, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->keyParameters:Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    .line 43
    iput-object p1, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->keyParamSetOID:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->digestParamSetOID:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->encryptionParamSetOID:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;)V
    .locals 1
    .parameter "spec"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->keyParameters:Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    .line 58
    sget-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_CryptoProParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->digestParamSetOID:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->encryptionParamSetOID:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static fromPublicKeyAlg(Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;)Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;
    .locals 4
    .parameter "params"

    .prologue
    .line 97
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getEncryptionParamSet()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getDigestParamSet()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getEncryptionParamSet()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getDigestParamSet()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 79
    instance-of v2, p1, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 80
    check-cast v0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    .line 82
    .local v0, other:Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;
    iget-object v2, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->keyParameters:Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    iget-object v3, v0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->keyParameters:Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->digestParamSetOID:Ljava/lang/String;

    iget-object v3, v0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->digestParamSetOID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->encryptionParamSetOID:Ljava/lang/String;

    iget-object v3, v0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->encryptionParamSetOID:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->encryptionParamSetOID:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->encryptionParamSetOID:Ljava/lang/String;

    iget-object v3, v0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->encryptionParamSetOID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 88
    .end local v0           #other:Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;
    :cond_1
    return v1
.end method

.method public getDigestParamSetOID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->digestParamSetOID:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionParamSetOID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->encryptionParamSetOID:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKeyParamSetOID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->keyParamSetOID:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKeyParameters()Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->keyParameters:Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->keyParameters:Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->hashCode()I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->digestParamSetOID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->encryptionParamSetOID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->encryptionParamSetOID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
