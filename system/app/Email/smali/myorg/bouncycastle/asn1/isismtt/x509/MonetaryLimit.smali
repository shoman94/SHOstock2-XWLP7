.class public Lmyorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "MonetaryLimit.java"


# instance fields
.field amount:Lmyorg/bouncycastle/asn1/DERInteger;

.field currency:Lmyorg/bouncycastle/asn1/DERPrintableString;

.field exponent:Lmyorg/bouncycastle/asn1/DERInteger;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 114
    .local v0, seq:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;->currency:Lmyorg/bouncycastle/asn1/DERPrintableString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 115
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;->amount:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 116
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;->exponent:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 118
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
