.class public Lmyorg/bouncycastle/asn1/DERUnknownTag;
.super Lmyorg/bouncycastle/asn1/DERObject;
.source "DERUnknownTag.java"


# instance fields
.field private data:[B

.field private isConstructed:Z

.field private tag:I


# direct methods
.method public constructor <init>(ZI[B)V
    .locals 0
    .parameter "isConstructed"
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 24
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 25
    iput-boolean p1, p0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->isConstructed:Z

    .line 26
    iput p2, p0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->tag:I

    .line 27
    iput-object p3, p0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    .line 28
    return-void
.end method


# virtual methods
.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->isConstructed:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    :goto_0
    iget v1, p0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->tag:I

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    invoke-virtual {p1, v0, v1, v2}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(II[B)V

    .line 44
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 47
    instance-of v2, p1, Lmyorg/bouncycastle/asn1/DERUnknownTag;

    if-nez v2, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 51
    check-cast v0, Lmyorg/bouncycastle/asn1/DERUnknownTag;

    .line 53
    .local v0, other:Lmyorg/bouncycastle/asn1/DERUnknownTag;
    iget-boolean v2, p0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->isConstructed:Z

    iget-boolean v3, v0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->isConstructed:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->tag:I

    iget v3, v0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->tag:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    iget-object v3, v0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    invoke-static {v2, v3}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->tag:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->isConstructed:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iget v1, p0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->tag:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    invoke-static {v1}, Lmyorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
