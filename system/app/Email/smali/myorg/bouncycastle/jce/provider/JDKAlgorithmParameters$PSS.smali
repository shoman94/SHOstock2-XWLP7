.class public Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;
.super Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.source "JDKAlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PSS"
.end annotation


# instance fields
.field currentSpec:Ljava/security/spec/PSSParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 887
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 894
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    .line 895
    .local v4, pssSpec:Ljava/security/spec/PSSParameterSpec;
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->getOID(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    new-instance v6, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v6}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v0, v5, v6}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 897
    .local v0, hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/MGF1ParameterSpec;

    .line 898
    .local v2, mgfSpec:Ljava/security/spec/MGF1ParameterSpec;
    new-instance v1, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->getOID(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    new-instance v8, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v8}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v6, v7, v8}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v1, v5, v6}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 901
    .local v1, maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v5, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v6

    invoke-direct {v5, v6}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    new-instance v6, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v7

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-direct {v3, v0, v1, v5, v6}, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DERInteger;Lmyorg/bouncycastle/asn1/DERInteger;)V

    .line 905
    .local v3, pssP:Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    const-string v5, "DER"

    invoke-virtual {v3, v5}, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    return-object v5
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 909
    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;->engineGetEncoded()[B

    move-result-object v0

    .line 913
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .parameter "paramSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 928
    instance-of v0, p1, Ljava/security/spec/PSSParameterSpec;

    if-nez v0, :cond_0

    .line 929
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "PSSParameterSpec required to initialise an PSS algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_0
    check-cast p1, Ljava/security/spec/PSSParameterSpec;

    .end local p1
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    .line 934
    return-void
.end method

.method protected engineInit([B)V
    .locals 8
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 938
    :try_start_0
    new-instance v7, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    invoke-static {p1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v7, v0}, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 941
    .local v7, pssP:Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getHashAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getMaskGenAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getMaskGenAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getSaltLength()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getTrailerField()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 952
    return-void

    .line 947
    .end local v7           #pssP:Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    :catch_0
    move-exception v6

    .line 948
    .local v6, e:Ljava/lang/ClassCastException;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid PSS Parameter encoding."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    .end local v6           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v6

    .line 950
    .local v6, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid PSS Parameter encoding."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 3
    .parameter "params"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 955
    invoke-virtual {p0, p2}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    :cond_0
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;->engineInit([B)V

    .line 960
    return-void

    .line 958
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown parameter format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 963
    const-string v0, "PSS Parameters"

    return-object v0
.end method

.method protected localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 918
    const-class v0, Ljava/security/spec/PSSParameterSpec;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    return-object v0

    .line 922
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to PSS parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
