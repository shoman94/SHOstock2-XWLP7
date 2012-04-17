.class public Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;
.super Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.source "JDKAlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAEP"
.end annotation


# instance fields
.field currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 11

    .prologue
    .line 808
    new-instance v1, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v7, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->getOID(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    new-instance v8, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v8}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v1, v7, v8}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 810
    .local v1, hashAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v7, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    check-cast v3, Ljava/security/spec/MGF1ParameterSpec;

    .line 811
    .local v3, mgfSpec:Ljava/security/spec/MGF1ParameterSpec;
    new-instance v2, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v8, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->getOID(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v9

    new-instance v10, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v10}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v8, v9, v10}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v2, v7, v8}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 814
    .local v2, maskGenAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v7, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v5

    check-cast v5, Ljavax/crypto/spec/PSource$PSpecified;

    .line 815
    .local v5, pSource:Ljavax/crypto/spec/PSource$PSpecified;
    new-instance v6, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_pSpecified:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v8, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v5}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v6, v7, v8}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 817
    .local v6, pSourceAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v4, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    invoke-direct {v4, v1, v2, v6}, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 821
    .local v4, oaepP:Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    :try_start_0
    const-string v7, "DER"

    invoke-virtual {v4, v7}, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 822
    :catch_0
    move-exception v0

    .line 823
    .local v0, e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Error encoding OAEPParameters"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1
    .parameter "format"

    .prologue
    .line 828
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 829
    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->engineGetEncoded()[B

    move-result-object v0

    .line 832
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
    .line 847
    instance-of v0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "OAEPParameterSpec required to initialise an OAEP algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 852
    :cond_0
    check-cast p1, Ljavax/crypto/spec/OAEPParameterSpec;

    .end local p1
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    .line 853
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
    .line 857
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    invoke-static {p1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 860
    .local v1, oaepP:Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    new-instance v2, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getHashAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getMaskGenAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getMaskGenAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getPSourceAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-static {v7}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    invoke-direct {v2, v3, v4, v5, v6}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 872
    return-void

    .line 867
    .end local v1           #oaepP:Lmyorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    :catch_0
    move-exception v0

    .line 868
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not a valid OAEP Parameter encoding."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 869
    .end local v0           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 870
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not a valid OAEP Parameter encoding."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
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
    .line 875
    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    :cond_0
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->engineInit([B)V

    .line 880
    return-void

    .line 878
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
    .line 883
    const-string v0, "OAEP Parameters"

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
    .line 837
    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    return-object v0

    .line 841
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to OAEP parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
