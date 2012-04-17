.class public Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410ParamSetParameters;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "ECGOST3410ParamSetParameters.java"


# instance fields
.field a:Lmyorg/bouncycastle/asn1/DERInteger;

.field b:Lmyorg/bouncycastle/asn1/DERInteger;

.field p:Lmyorg/bouncycastle/asn1/DERInteger;

.field q:Lmyorg/bouncycastle/asn1/DERInteger;

.field x:Lmyorg/bouncycastle/asn1/DERInteger;

.field y:Lmyorg/bouncycastle/asn1/DERInteger;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 70
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410ParamSetParameters;->a:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 71
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410ParamSetParameters;->b:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 72
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410ParamSetParameters;->p:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 73
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410ParamSetParameters;->q:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 74
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410ParamSetParameters;->x:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 75
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410ParamSetParameters;->y:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 77
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
