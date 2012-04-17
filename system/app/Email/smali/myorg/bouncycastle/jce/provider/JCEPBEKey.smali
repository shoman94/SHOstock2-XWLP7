.class public Lmyorg/bouncycastle/jce/provider/JCEPBEKey;
.super Ljava/lang/Object;
.source "JCEPBEKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field algorithm:Ljava/lang/String;

.field digest:I

.field ivSize:I

.field keySize:I

.field oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field param:Lmyorg/bouncycastle/crypto/CipherParameters;

.field pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

.field tryWrong:Z

.field type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .parameter "algorithm"
    .parameter "oid"
    .parameter "type"
    .parameter "digest"
    .parameter "keySize"
    .parameter "ivSize"
    .parameter "pbeKeySpec"
    .parameter "param"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->tryWrong:Z

    .line 29
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->algorithm:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 31
    iput p3, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->type:I

    .line 32
    iput p4, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->digest:I

    .line 33
    iput p5, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->keySize:I

    .line 34
    iput p6, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->ivSize:I

    .line 35
    iput-object p7, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    .line 36
    iput-object p8, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->param:Lmyorg/bouncycastle/crypto/CipherParameters;

    .line 37
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method getDigest()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->digest:I

    return v0
.end method

.method public getEncoded()[B
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->param:Lmyorg/bouncycastle/crypto/CipherParameters;

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->param:Lmyorg/bouncycastle/crypto/CipherParameters;

    instance-of v1, v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->param:Lmyorg/bouncycastle/crypto/CipherParameters;

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .line 57
    .local v0, kParam:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    :goto_0
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 62
    .end local v0           #kParam:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    :goto_1
    return-object v1

    .line 54
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->param:Lmyorg/bouncycastle/crypto/CipherParameters;

    check-cast v0, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .restart local v0       #kParam:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    goto :goto_0

    .line 59
    .end local v0           #kParam:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    :cond_1
    iget v1, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 60
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v1

    goto :goto_1

    .line 62
    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v1

    goto :goto_1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "RAW"

    return-object v0
.end method

.method public getIterationCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    return v0
.end method

.method getIvSize()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->ivSize:I

    return v0
.end method

.method getKeySize()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->keySize:I

    return v0
.end method

.method public getOID()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method getParam()Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->param:Lmyorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    return-object v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->type:I

    return v0
.end method

.method setTryWrongPKCS12Zero(Z)V
    .locals 0
    .parameter "tryWrong"

    .prologue
    .line 116
    iput-boolean p1, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->tryWrong:Z

    .line 117
    return-void
.end method

.method shouldTryWrongPKCS12()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JCEPBEKey;->tryWrong:Z

    return v0
.end method
