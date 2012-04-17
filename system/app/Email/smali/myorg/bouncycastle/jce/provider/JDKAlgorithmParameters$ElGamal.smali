.class public Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$ElGamal;
.super Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.source "JDKAlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElGamal"
.end annotation


# instance fields
.field currentSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 639
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 4

    .prologue
    .line 653
    new-instance v1, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$ElGamal;->currentSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$ElGamal;->currentSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v3}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 656
    .local v1, elP:Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;
    :try_start_0
    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error encoding ElGamalParameters"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1
    .parameter "format"

    .prologue
    .line 663
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$ElGamal;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$ElGamal;->engineGetEncoded()[B

    move-result-object v0

    .line 667
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .parameter "paramSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 684
    instance-of v1, p1, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v1, :cond_0

    .line 686
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v2, "DHParameterSpec required to initialise a ElGamal algorithm parameters object"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 690
    :cond_0
    instance-of v1, p1, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    if-eqz v1, :cond_1

    .line 691
    check-cast p1, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    .end local p1
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$ElGamal;->currentSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    .line 697
    :goto_0
    return-void

    .restart local p1
    :cond_1
    move-object v0, p1

    .line 693
    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 695
    .local v0, s:Ljavax/crypto/spec/DHParameterSpec;
    new-instance v1, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$ElGamal;->currentSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    goto :goto_0
.end method

.method protected engineInit([B)V
    .locals 5
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;

    invoke-static {p1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 704
    .local v1, elP:Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;
    new-instance v2, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$ElGamal;->currentSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 710
    return-void

    .line 705
    .end local v1           #elP:Lmyorg/bouncycastle/asn1/oiw/ElGamalParameter;
    :catch_0
    move-exception v0

    .line 706
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not a valid ElGamal Parameter encoding."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 707
    .end local v0           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 708
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not a valid ElGamal Parameter encoding."

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
    .line 713
    invoke-virtual {p0, p2}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$ElGamal;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    :cond_0
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$ElGamal;->engineInit([B)V

    .line 718
    return-void

    .line 716
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
    .line 721
    const-string v0, "ElGamal Parameters"

    return-object v0
.end method

.method protected localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 672
    const-class v0, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    if-ne p1, v0, :cond_0

    .line 673
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$ElGamal;->currentSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    .line 675
    :goto_0
    return-object v0

    .line 674
    :cond_0
    const-class v0, Ljavax/crypto/spec/DHParameterSpec;

    if-ne p1, v0, :cond_1

    .line 675
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$ElGamal;->currentSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters$ElGamal;->currentSpec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 678
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to ElGamal parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
