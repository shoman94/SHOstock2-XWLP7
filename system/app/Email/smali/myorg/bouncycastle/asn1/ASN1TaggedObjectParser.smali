.class public interface abstract Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;
.super Ljava/lang/Object;
.source "ASN1TaggedObjectParser.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DEREncodable;


# virtual methods
.method public abstract getObjectParser(IZ)Lmyorg/bouncycastle/asn1/DEREncodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTagNo()I
.end method
