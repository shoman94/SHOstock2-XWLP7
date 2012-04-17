.class Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;
.super Ljava/lang/Object;
.source "PKCS12BagAttributeCarrierImpl.java"

# interfaces
.implements Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private pkcs12Attributes:Ljava/util/Hashtable;

.field private pkcs12Ordering:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>(Ljava/util/Hashtable;Ljava/util/Vector;)V

    .line 29
    return-void
.end method

.method constructor <init>(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 0
    .parameter "attributes"
    .parameter "ordering"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    .line 24
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    .line 25
    return-void
.end method


# virtual methods
.method public getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 1
    .parameter "oid"

    .prologue
    .line 41
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 84
    .local v1, obj:Ljava/lang/Object;
    instance-of v3, v1, Ljava/util/Hashtable;

    if-eqz v3, :cond_1

    .line 85
    check-cast v1, Ljava/util/Hashtable;

    .end local v1           #obj:Ljava/lang/Object;
    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    .line 86
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    .line 96
    :cond_0
    return-void

    .line 88
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_1
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    check-cast v1, [B

    .end local v1           #obj:Ljava/lang/Object;
    check-cast v1, [B

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 92
    .local v0, aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    :goto_0
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .local v2, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method

.method public setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 1
    .parameter "oid"
    .parameter "attribute"

    .prologue
    .line 32
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 62
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 63
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 79
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 68
    .local v0, aOut:Lmyorg/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v2

    .line 70
    .local v2, e:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 73
    .local v3, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 74
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 77
    .end local v3           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
