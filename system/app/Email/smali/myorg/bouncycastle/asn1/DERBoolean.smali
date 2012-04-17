.class public Lmyorg/bouncycastle/asn1/DERBoolean;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "DERBoolean.java"


# static fields
.field public static final FALSE:Lmyorg/bouncycastle/asn1/DERBoolean;

.field public static final TRUE:Lmyorg/bouncycastle/asn1/DERBoolean;


# instance fields
.field value:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lmyorg/bouncycastle/asn1/DERBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERBoolean;-><init>(Z)V

    sput-object v0, Lmyorg/bouncycastle/asn1/DERBoolean;->FALSE:Lmyorg/bouncycastle/asn1/DERBoolean;

    .line 10
    new-instance v0, Lmyorg/bouncycastle/asn1/DERBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERBoolean;-><init>(Z)V

    sput-object v0, Lmyorg/bouncycastle/asn1/DERBoolean;->TRUE:Lmyorg/bouncycastle/asn1/DERBoolean;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 58
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput-byte v0, p0, Lmyorg/bouncycastle/asn1/DERBoolean;->value:B

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "value"

    .prologue
    .line 54
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lmyorg/bouncycastle/asn1/DERBoolean;->value:B

    .line 56
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBoolean;
    .locals 3
    .parameter "obj"

    .prologue
    .line 18
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/DERBoolean;

    if-eqz v0, :cond_1

    .line 19
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/DERBoolean;

    .line 27
    .end local p0
    :goto_0
    return-object p0

    .line 22
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_2

    .line 23
    new-instance v0, Lmyorg/bouncycastle/asn1/DERBoolean;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERBoolean;-><init>([B)V

    move-object p0, v0

    goto :goto_0

    .line 26
    .restart local p0
    :cond_2
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_3

    .line 27
    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBoolean;

    move-result-object p0

    goto :goto_0

    .line 30
    .restart local p0
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERBoolean;
    .locals 1
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 51
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBoolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 75
    if-eqz p1, :cond_0

    instance-of v1, p1, Lmyorg/bouncycastle/asn1/DERBoolean;

    if-nez v1, :cond_1

    .line 79
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-byte v1, p0, Lmyorg/bouncycastle/asn1/DERBoolean;->value:B

    check-cast p1, Lmyorg/bouncycastle/asn1/DERBoolean;

    .end local p1
    iget-byte v2, p1, Lmyorg/bouncycastle/asn1/DERBoolean;->value:B

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 67
    new-array v0, v3, [B

    .line 69
    .local v0, bytes:[B
    const/4 v1, 0x0

    iget-byte v2, p0, Lmyorg/bouncycastle/asn1/DERBoolean;->value:B

    aput-byte v2, v0, v1

    .line 71
    invoke-virtual {p1, v3, v0}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 72
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 83
    iget-byte v0, p0, Lmyorg/bouncycastle/asn1/DERBoolean;->value:B

    return v0
.end method

.method public isTrue()Z
    .locals 1

    .prologue
    .line 63
    iget-byte v0, p0, Lmyorg/bouncycastle/asn1/DERBoolean;->value:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-byte v0, p0, Lmyorg/bouncycastle/asn1/DERBoolean;->value:B

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FALSE"

    goto :goto_0
.end method
