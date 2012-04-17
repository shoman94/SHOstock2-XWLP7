.class public Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;
.super Lmyorg/bouncycastle/asn1/BERGenerator;
.source "BEROctetStringGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 11
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;->writeBERHeader(I)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1
    .parameter "out"
    .parameter "tagNo"
    .parameter "isExplicit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lmyorg/bouncycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    .line 18
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;->writeBERHeader(I)V

    .line 19
    return-void
.end method


# virtual methods
.method public getOctetOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x3e8

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;->getOctetOutputStream([B)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOctetOutputStream([B)Ljava/io/OutputStream;
    .locals 1
    .parameter "buf"

    .prologue
    .line 26
    new-instance v0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;

    invoke-direct {v0, p0, p1}, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;-><init>(Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;[B)V

    return-object v0
.end method
