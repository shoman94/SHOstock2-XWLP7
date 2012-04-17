.class public Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;
.super Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.source "CAST5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/CAST5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams"
.end annotation


# instance fields
.field private iv:[B

.field private keyLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameters;-><init>()V

    .line 75
    const/16 v0, 0x80

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->keyLength:I

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->iv:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 80
    .local v0, tmp:[B
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->iv:[B

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->iv:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 3
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->engineGetEncoded()[B

    move-result-object v1

    iget v2, p0, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->keyLength:I

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;-><init>([BI)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;->getEncoded()[B

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 89
    :cond_0
    const-string v0, "RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->engineGetEncoded()[B

    move-result-object v0

    goto :goto_0

    .line 93
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
    .line 108
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_0

    .line 109
    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    .end local p1
    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->iv:[B

    .line 114
    return-void

    .line 111
    .restart local p1
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "IvParameterSpec required to initialise a CAST5 parameters algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit([B)V
    .locals 3
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 117
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->iv:[B

    .line 119
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->iv:[B

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->iv:[B

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 4
    .parameter "params"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0, p2}, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 125
    .local v0, aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;

    move-result-object v1

    .line 127
    .local v1, p:Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;->getKeyLength()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->keyLength:I

    .line 129
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->iv:[B

    .line 136
    .end local v0           #aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    .end local v1           #p:Lmyorg/bouncycastle/asn1/misc/CAST5CBCParameters;
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v2, "RAW"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->engineInit([B)V

    goto :goto_0

    .line 139
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unknown parameters format in IV parameters object"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "CAST5 Parameters"

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
    .line 98
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_0

    .line 99
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$AlgParams;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to CAST5 parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
