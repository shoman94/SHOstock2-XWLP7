.class public abstract Lmyorg/bouncycastle/asn1/ASN1Encodable;
.super Ljava/lang/Object;
.source "ASN1Encodable.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 69
    if-ne p0, p1, :cond_0

    .line 70
    const/4 v1, 0x1

    .line 79
    :goto_0
    return v1

    .line 73
    :cond_0
    instance-of v1, p1, Lmyorg/bouncycastle/asn1/DEREncodable;

    if-nez v1, :cond_1

    .line 74
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 77
    check-cast v0, Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 79
    .local v0, other:Lmyorg/bouncycastle/asn1/DEREncodable;
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDEREncoded()[B
    .locals 2

    .prologue
    .line 58
    :try_start_0
    const-string v1, "DER"

    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 60
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDERObject()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 22
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 24
    .local v0, aOut:Lmyorg/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {v0, p0}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 3
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    const-string v2, "DER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 40
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lmyorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    .local v1, dOut:Lmyorg/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v1, p0}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 47
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lmyorg/bouncycastle/asn1/DEROutputStream;
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObject;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
.end method
