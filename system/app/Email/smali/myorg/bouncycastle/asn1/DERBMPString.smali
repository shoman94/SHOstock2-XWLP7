.class public Lmyorg/bouncycastle/asn1/DERBMPString;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "DERBMPString.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DERString;


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 64
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 65
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .parameter "string"

    .prologue
    .line 51
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 52
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [C

    .line 54
    .local v0, cs:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 55
    mul-int/lit8 v2, v1, 0x2

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method protected asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 81
    instance-of v1, p1, Lmyorg/bouncycastle/asn1/DERBMPString;

    if-nez v1, :cond_0

    .line 82
    const/4 v1, 0x0

    .line 87
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 85
    check-cast v0, Lmyorg/bouncycastle/asn1/DERBMPString;

    .line 87
    .local v0, s:Lmyorg/bouncycastle/asn1/DERBMPString;
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 92
    .local v1, c:[C
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 94
    .local v0, b:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 95
    mul-int/lit8 v3, v2, 0x2

    aget-char v4, v1, v2

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 96
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v4, v1, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_0
    const/16 v3, 0x1e

    invoke-virtual {p1, v3, v0}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 100
    return-void
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    return-object v0
.end method
