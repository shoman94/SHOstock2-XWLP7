.class public Lmyorg/bouncycastle/asn1/DERConstructedSequence;
.super Lmyorg/bouncycastle/asn1/ASN1Sequence;
.source "DERConstructedSequence.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;-><init>()V

    return-void
.end method


# virtual methods
.method public addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 13
    invoke-super {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 14
    return-void
.end method

.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lmyorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v2, v0}, Lmyorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 29
    .local v2, dOut:Lmyorg/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERConstructedSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 31
    .local v3, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 32
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 34
    .local v4, obj:Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    .end local v4           #obj:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DEROutputStream;->close()V

    .line 39
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 41
    .local v1, bytes:[B
    const/16 v5, 0x30

    invoke-virtual {p1, v5, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 42
    return-void
.end method
