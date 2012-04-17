.class public abstract Lmyorg/bouncycastle/asn1/DERObject;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "DERObject.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DERTags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    return-void
.end method


# virtual methods
.method abstract encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 0

    .prologue
    .line 8
    return-object p0
.end method
