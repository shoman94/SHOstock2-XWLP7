.class public Lmyorg/bouncycastle/asn1/DERTaggedObject;
.super Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
.source "DERTaggedObject.java"


# static fields
.field private static final ZERO_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;->ZERO_BYTES:[B

    return-void
.end method

.method public constructor <init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 0
    .parameter "tagNo"
    .parameter "obj"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 20
    return-void
.end method

.method public constructor <init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 0
    .parameter "explicit"
    .parameter "tagNo"
    .parameter "obj"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 29
    return-void
.end method


# virtual methods
.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa0

    .line 39
    iget-boolean v2, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    if-nez v2, :cond_2

    .line 40
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->obj:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v2}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/DERObject;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 42
    .local v0, bytes:[B
    iget-boolean v2, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    if-eqz v2, :cond_0

    .line 43
    iget v2, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-virtual {p1, v4, v2, v0}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(II[B)V

    .line 61
    .end local v0           #bytes:[B
    :goto_0
    return-void

    .line 49
    .restart local v0       #bytes:[B
    :cond_0
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    .line 50
    const/16 v1, 0xa0

    .line 55
    .local v1, flags:I
    :goto_1
    iget v2, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-virtual {p1, v1, v2}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeTag(II)V

    .line 56
    const/4 v2, 0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v0, v2, v3}, Lmyorg/bouncycastle/asn1/DEROutputStream;->write([BII)V

    goto :goto_0

    .line 52
    .end local v1           #flags:I
    :cond_1
    const/16 v1, 0x80

    .restart local v1       #flags:I
    goto :goto_1

    .line 59
    .end local v0           #bytes:[B
    .end local v1           #flags:I
    :cond_2
    iget v2, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    sget-object v3, Lmyorg/bouncycastle/asn1/DERTaggedObject;->ZERO_BYTES:[B

    invoke-virtual {p1, v4, v2, v3}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(II[B)V

    goto :goto_0
.end method
