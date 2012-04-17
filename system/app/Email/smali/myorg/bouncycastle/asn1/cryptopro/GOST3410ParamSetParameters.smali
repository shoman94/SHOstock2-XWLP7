.class public Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "GOST3410ParamSetParameters.java"


# instance fields
.field a:Lmyorg/bouncycastle/asn1/DERInteger;

.field keySize:I

.field p:Lmyorg/bouncycastle/asn1/DERInteger;

.field q:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .parameter "keySize"
    .parameter "p"
    .parameter "q"
    .parameter "a"

    .prologue
    .line 35
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    iput p1, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->keySize:I

    .line 37
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->p:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 38
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p3}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->q:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 39
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p4}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->a:Lmyorg/bouncycastle/asn1/DERInteger;

    .line 40
    return-void
.end method


# virtual methods
.method public getA()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->a:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->p:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->q:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 77
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lmyorg/bouncycastle/asn1/DERInteger;

    iget v2, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->keySize:I

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 78
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->p:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 79
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->q:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 80
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->a:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 82
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
