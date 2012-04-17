.class public Lmyorg/bouncycastle/util/encoders/UrlBase64Encoder;
.super Lmyorg/bouncycastle/util/encoders/Base64Encoder;
.source "UrlBase64Encoder.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Lmyorg/bouncycastle/util/encoders/Base64Encoder;-><init>()V

    .line 17
    iget-object v0, p0, Lmyorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    iget-object v1, p0, Lmyorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    .line 18
    iget-object v0, p0, Lmyorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    iget-object v1, p0, Lmyorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    .line 19
    const/16 v0, 0x2e

    iput-byte v0, p0, Lmyorg/bouncycastle/util/encoders/Base64Encoder;->padding:B

    .line 21
    invoke-virtual {p0}, Lmyorg/bouncycastle/util/encoders/UrlBase64Encoder;->initialiseDecodingTable()V

    .line 22
    return-void
.end method
