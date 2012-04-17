.class public Lmyorg/bouncycastle/crypto/engines/SerpentEngine;
.super Ljava/lang/Object;
.source "SerpentEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private X0:I

.field private X1:I

.field private X2:I

.field private X3:I

.field private encrypting:Z

.field private wKey:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private LT()V
    .locals 6

    .prologue
    .line 945
    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    const/16 v5, 0xd

    invoke-direct {p0, v4, v5}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v0

    .line 946
    .local v0, x0:I
    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v2

    .line 947
    .local v2, x2:I
    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v4, v0

    xor-int v1, v4, v2

    .line 948
    .local v1, x1:I
    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v4, v2

    shl-int/lit8 v5, v0, 0x3

    xor-int v3, v4, v5

    .line 950
    .local v3, x3:I
    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v4

    iput v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 951
    const/4 v4, 0x7

    invoke-direct {p0, v3, v4}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v4

    iput v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 952
    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v4, v0

    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v4, v5

    const/4 v5, 0x5

    invoke-direct {p0, v4, v5}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v4

    iput v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 953
    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v4, v2

    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    shl-int/lit8 v5, v5, 0x7

    xor-int/2addr v4, v5

    const/16 v5, 0x16

    invoke-direct {p0, v4, v5}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v4

    iput v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 954
    return-void
.end method

.method private bytesToWord([BI)I
    .locals 2
    .parameter "src"
    .parameter "srcOff"

    .prologue
    .line 327
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private decryptBlock([BI[BI)V
    .locals 4
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 431
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 432
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 433
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, p1, v1}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 434
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, p1, v1}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 436
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    .line 437
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 438
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 439
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 440
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 441
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 442
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    .line 443
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x78

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 444
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x79

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 445
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 446
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 447
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 448
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    .line 449
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x74

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 450
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x75

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 451
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x76

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 452
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x77

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 453
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 454
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    .line 455
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x70

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 456
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x71

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 457
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x72

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 458
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x73

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 459
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 460
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    .line 461
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 462
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 463
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 464
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 465
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 466
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    .line 467
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x68

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 468
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x69

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 469
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 470
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 471
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 472
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    .line 473
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x64

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 474
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x65

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 475
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x66

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 476
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x67

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 477
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 478
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    .line 479
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x60

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 480
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x61

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 481
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x62

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 482
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x63

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 483
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 484
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    .line 485
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 486
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 487
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 488
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 489
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 490
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    .line 491
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x58

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 492
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x59

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 493
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 494
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 495
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 496
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    .line 497
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x54

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 498
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x55

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 499
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x56

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 500
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x57

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 501
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 502
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    .line 503
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x50

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 504
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x51

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 505
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x52

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 506
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x53

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 507
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 508
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    .line 509
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 510
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 511
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 512
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 513
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 514
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    .line 515
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x48

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 516
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x49

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 517
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 518
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 519
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 520
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    .line 521
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x44

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 522
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x45

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 523
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x46

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 524
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x47

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 525
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 526
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    .line 527
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x40

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 528
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x41

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 529
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x42

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 530
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x43

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 531
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 532
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    .line 533
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 534
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 535
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 536
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 537
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 538
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    .line 539
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x38

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 540
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x39

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 541
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 542
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 543
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 544
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    .line 545
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x34

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 546
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x35

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 547
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x36

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 548
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x37

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 549
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 550
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    .line 551
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x30

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 552
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x31

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 553
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x32

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 554
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x33

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 555
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 556
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    .line 557
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 558
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 559
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 560
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 561
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 562
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    .line 563
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x28

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 564
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x29

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 565
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 566
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 567
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 568
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    .line 569
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x24

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 570
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x25

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 571
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x26

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 572
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x27

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 573
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 574
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    .line 575
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x20

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 576
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x21

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 577
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x22

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 578
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x23

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 579
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 580
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    .line 581
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 582
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 583
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 584
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 585
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 586
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    .line 587
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x18

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 588
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x19

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 589
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 590
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 591
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 592
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    .line 593
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x14

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 594
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 595
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x16

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 596
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x17

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 597
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 598
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    .line 599
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x10

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 600
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 601
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x12

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 602
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x13

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 603
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 604
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    .line 605
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xc

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 606
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 607
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xe

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 608
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xf

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 609
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 610
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    .line 611
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 612
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 613
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 614
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 615
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 616
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    .line 617
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 618
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 619
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 620
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 621
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->inverseLT()V

    .line 622
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    .line 624
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 625
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 626
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 627
    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 628
    return-void
.end method

.method private encryptBlock([BI[BI)V
    .locals 5
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 348
    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 349
    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 350
    add-int/lit8 v0, p2, 0xc

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 352
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 353
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 354
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 355
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 356
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 357
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 358
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0xe

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 359
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 360
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x12

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    .line 361
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 362
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x16

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    .line 363
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 364
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x18

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x19

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x1a

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x1b

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 365
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 366
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x1c

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1d

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x1e

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x1f

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 367
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 368
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x20

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x21

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x22

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 369
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 370
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x24

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x25

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x26

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x27

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 371
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 372
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x28

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x29

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x2a

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 373
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 374
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x2c

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2d

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x2e

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 375
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 376
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x30

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x31

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x32

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x33

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    .line 377
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 378
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x34

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x35

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x36

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x37

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    .line 379
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 380
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x38

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x39

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x3a

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x3b

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 381
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 382
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x3c

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3d

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x3e

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x3f

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 383
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 384
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x40

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x41

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x42

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x43

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 385
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 386
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x44

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x45

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x46

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x47

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 387
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 388
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x48

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x49

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x4a

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x4b

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 389
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 390
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x4c

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4d

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x4e

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x4f

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 391
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 392
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x50

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x51

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x52

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x53

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    .line 393
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 394
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x54

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x55

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x56

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x57

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    .line 395
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 396
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x58

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x59

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x5a

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x5b

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 397
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 398
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x5c

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5d

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x5e

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x5f

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 399
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 400
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x60

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x61

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x62

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x63

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 401
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 402
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x64

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x65

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x66

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x67

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 403
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 404
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x68

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x69

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x6a

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x6b

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 405
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 406
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x6c

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6d

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x6e

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x6f

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 407
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 408
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x70

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x71

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x72

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x73

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    .line 409
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 410
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x74

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x75

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x76

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x77

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    .line 411
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 412
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x78

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x79

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x7a

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x7b

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 413
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->LT()V

    .line 414
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x7c

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7d

    aget v1, v1, v2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x7e

    aget v2, v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v4, 0x7f

    aget v3, v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 416
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 417
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 418
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 419
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wordToBytes(I[BI)V

    .line 420
    return-void
.end method

.method private ib0(IIII)V
    .locals 7
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 672
    xor-int/lit8 v0, p1, -0x1

    .line 673
    .local v0, t1:I
    xor-int v1, p1, p2

    .line 674
    .local v1, t2:I
    or-int v5, v0, v1

    xor-int v2, p4, v5

    .line 675
    .local v2, t4:I
    xor-int v3, p3, v2

    .line 676
    .local v3, t5:I
    xor-int v5, v1, v3

    iput v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 677
    and-int v5, p4, v1

    xor-int v4, v0, v5

    .line 678
    .local v4, t8:I
    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    and-int/2addr v5, v4

    xor-int/2addr v5, v2

    iput v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 679
    and-int v5, p1, v2

    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    or-int/2addr v6, v3

    xor-int/2addr v5, v6

    iput v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 680
    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int v6, v3, v4

    xor-int/2addr v5, v6

    iput v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 681
    return-void
.end method

.method private ib1(IIII)V
    .locals 8
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 702
    xor-int v0, p2, p4

    .line 703
    .local v0, t1:I
    and-int v7, p2, v0

    xor-int v3, p1, v7

    .line 704
    .local v3, t3:I
    xor-int v4, v0, v3

    .line 705
    .local v4, t4:I
    xor-int v7, p3, v4

    iput v7, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 706
    and-int v7, v0, v3

    xor-int v5, p2, v7

    .line 707
    .local v5, t7:I
    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    or-int v6, v7, v5

    .line 708
    .local v6, t8:I
    xor-int v7, v3, v6

    iput v7, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 709
    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/lit8 v1, v7, -0x1

    .line 710
    .local v1, t10:I
    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int v2, v7, v5

    .line 711
    .local v2, t11:I
    xor-int v7, v1, v2

    iput v7, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 712
    or-int v7, v1, v2

    xor-int/2addr v7, v4

    iput v7, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 713
    return-void
.end method

.method private ib2(IIII)V
    .locals 12
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 735
    xor-int v0, p2, p4

    .line 736
    .local v0, t1:I
    xor-int/lit8 v3, v0, -0x1

    .line 737
    .local v3, t2:I
    xor-int v4, p1, p3

    .line 738
    .local v4, t3:I
    xor-int v5, p3, v0

    .line 739
    .local v5, t4:I
    and-int v6, p2, v5

    .line 740
    .local v6, t5:I
    xor-int v10, v4, v6

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 741
    or-int v7, p1, v3

    .line 742
    .local v7, t7:I
    xor-int v8, p4, v7

    .line 743
    .local v8, t8:I
    or-int v9, v4, v8

    .line 744
    .local v9, t9:I
    xor-int v10, v0, v9

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 745
    xor-int/lit8 v1, v5, -0x1

    .line 746
    .local v1, t11:I
    iget v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v11, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    or-int v2, v10, v11

    .line 747
    .local v2, t12:I
    xor-int v10, v1, v2

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 748
    and-int v10, p4, v1

    xor-int v11, v4, v2

    xor-int/2addr v10, v11

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 749
    return-void
.end method

.method private ib3(IIII)V
    .locals 12
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 775
    or-int v0, p1, p2

    .line 776
    .local v0, t1:I
    xor-int v3, p2, p3

    .line 777
    .local v3, t2:I
    and-int v4, p2, v3

    .line 778
    .local v4, t3:I
    xor-int v5, p1, v4

    .line 779
    .local v5, t4:I
    xor-int v6, p3, v5

    .line 780
    .local v6, t5:I
    or-int v7, p4, v5

    .line 781
    .local v7, t6:I
    xor-int v10, v3, v7

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 782
    or-int v8, v3, v7

    .line 783
    .local v8, t8:I
    xor-int v9, p4, v8

    .line 784
    .local v9, t9:I
    xor-int v10, v6, v9

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 785
    xor-int v1, v0, v9

    .line 786
    .local v1, t11:I
    iget v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    and-int v2, v10, v1

    .line 787
    .local v2, t12:I
    xor-int v10, v5, v2

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 788
    iget v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget v11, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr v11, v1

    xor-int/2addr v10, v11

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 789
    return-void
.end method

.method private ib4(IIII)V
    .locals 11
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 814
    or-int v0, p3, p4

    .line 815
    .local v0, t1:I
    and-int v3, p1, v0

    .line 816
    .local v3, t2:I
    xor-int v4, p2, v3

    .line 817
    .local v4, t3:I
    and-int v5, p1, v4

    .line 818
    .local v5, t4:I
    xor-int v6, p3, v5

    .line 819
    .local v6, t5:I
    xor-int v9, p4, v6

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 820
    xor-int/lit8 v7, p1, -0x1

    .line 821
    .local v7, t7:I
    iget v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    and-int v8, v6, v9

    .line 822
    .local v8, t8:I
    xor-int v9, v4, v8

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 823
    iget v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    or-int v1, v9, v7

    .line 824
    .local v1, t10:I
    xor-int v2, p4, v1

    .line 825
    .local v2, t11:I
    iget v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v9, v2

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 826
    and-int v9, v4, v2

    iget v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v10, v7

    xor-int/2addr v9, v10

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 827
    return-void
.end method

.method private ib5(IIII)V
    .locals 11
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 853
    xor-int/lit8 v0, p3, -0x1

    .line 854
    .local v0, t1:I
    and-int v3, p2, v0

    .line 855
    .local v3, t2:I
    xor-int v4, p4, v3

    .line 856
    .local v4, t3:I
    and-int v5, p1, v4

    .line 857
    .local v5, t4:I
    xor-int v6, p2, v0

    .line 858
    .local v6, t5:I
    xor-int v9, v5, v6

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 859
    iget v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    or-int v7, p2, v9

    .line 860
    .local v7, t7:I
    and-int v8, p1, v7

    .line 861
    .local v8, t8:I
    xor-int v9, v4, v8

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 862
    or-int v1, p1, p4

    .line 863
    .local v1, t10:I
    xor-int v2, v0, v7

    .line 864
    .local v2, t11:I
    xor-int v9, v1, v2

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 865
    and-int v9, p2, v1

    xor-int v10, p1, p3

    or-int/2addr v10, v5

    xor-int/2addr v9, v10

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 866
    return-void
.end method

.method private ib6(IIII)V
    .locals 11
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 891
    xor-int/lit8 v0, p1, -0x1

    .line 892
    .local v0, t1:I
    xor-int v2, p1, p2

    .line 893
    .local v2, t2:I
    xor-int v3, p3, v2

    .line 894
    .local v3, t3:I
    or-int v4, p3, v0

    .line 895
    .local v4, t4:I
    xor-int v5, p4, v4

    .line 896
    .local v5, t5:I
    xor-int v9, v3, v5

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 897
    and-int v6, v3, v5

    .line 898
    .local v6, t7:I
    xor-int v7, v2, v6

    .line 899
    .local v7, t8:I
    or-int v8, p2, v7

    .line 900
    .local v8, t9:I
    xor-int v9, v5, v8

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 901
    iget v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    or-int v1, p2, v9

    .line 902
    .local v1, t11:I
    xor-int v9, v7, v1

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 903
    and-int v9, p4, v0

    xor-int v10, v3, v1

    xor-int/2addr v9, v10

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 904
    return-void
.end method

.method private ib7(IIII)V
    .locals 8
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 930
    and-int v5, p1, p2

    or-int v0, p3, v5

    .line 931
    .local v0, t3:I
    or-int v5, p1, p2

    and-int v1, p4, v5

    .line 932
    .local v1, t4:I
    xor-int v5, v0, v1

    iput v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 933
    xor-int/lit8 v2, p4, -0x1

    .line 934
    .local v2, t6:I
    xor-int v3, p2, v1

    .line 935
    .local v3, t7:I
    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v5, v2

    or-int v4, v3, v5

    .line 936
    .local v4, t9:I
    xor-int v5, p1, v4

    iput v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 937
    xor-int v5, p3, v3

    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    or-int/2addr v6, p4

    xor-int/2addr v5, v6

    iput v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 938
    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v5, v0

    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    and-int/2addr v7, p1

    xor-int/2addr v6, v7

    xor-int/2addr v5, v6

    iput v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 939
    return-void
.end method

.method private inverseLT()V
    .locals 6

    .prologue
    .line 960
    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v5, 0x16

    invoke-direct {p0, v4, v5}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v4

    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v4, v5

    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    shl-int/lit8 v5, v5, 0x7

    xor-int v2, v4, v5

    .line 961
    .local v2, x2:I
    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    const/4 v5, 0x5

    invoke-direct {p0, v4, v5}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v4

    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr v4, v5

    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int v0, v4, v5

    .line 962
    .local v0, x0:I
    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    const/4 v5, 0x7

    invoke-direct {p0, v4, v5}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v3

    .line 963
    .local v3, x3:I
    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v1

    .line 964
    .local v1, x1:I
    xor-int v4, v3, v2

    shl-int/lit8 v5, v0, 0x3

    xor-int/2addr v4, v5

    iput v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 965
    xor-int v4, v1, v0

    xor-int/2addr v4, v2

    iput v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 966
    const/4 v4, 0x3

    invoke-direct {p0, v2, v4}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v4

    iput v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 967
    const/16 v4, 0xd

    invoke-direct {p0, v0, v4}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v4

    iput v4, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 968
    return-void
.end method

.method private makeWorkingKey([B)[I
    .locals 11
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 106
    const/16 v7, 0x10

    new-array v2, v7, [I

    .line 107
    .local v2, kPad:[I
    const/4 v5, 0x0

    .line 108
    .local v5, off:I
    const/4 v3, 0x0

    .line 110
    .local v3, length:I
    array-length v7, p1

    add-int/lit8 v5, v7, -0x4

    move v4, v3

    .end local v3           #length:I
    .local v4, length:I
    :goto_0
    if-lez v5, :cond_0

    .line 111
    add-int/lit8 v3, v4, 0x1

    .end local v4           #length:I
    .restart local v3       #length:I
    invoke-direct {p0, p1, v5}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v7

    aput v7, v2, v4

    .line 110
    add-int/lit8 v5, v5, -0x4

    move v4, v3

    .end local v3           #length:I
    .restart local v4       #length:I
    goto :goto_0

    .line 114
    :cond_0
    if-nez v5, :cond_2

    .line 115
    add-int/lit8 v3, v4, 0x1

    .end local v4           #length:I
    .restart local v3       #length:I
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->bytesToWord([BI)I

    move-result v7

    aput v7, v2, v4

    .line 116
    const/16 v7, 0x8

    if-ge v3, v7, :cond_1

    .line 117
    const/4 v7, 0x1

    aput v7, v2, v3

    .line 126
    :cond_1
    const/16 v0, 0x84

    .line 127
    .local v0, amount:I
    new-array v6, v0, [I

    .line 132
    .local v6, w:[I
    const/16 v1, 0x8

    .local v1, i:I
    :goto_1
    const/16 v7, 0x10

    if-ge v1, v7, :cond_3

    .line 133
    add-int/lit8 v7, v1, -0x8

    aget v7, v2, v7

    add-int/lit8 v8, v1, -0x5

    aget v8, v2, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x3

    aget v8, v2, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x1

    aget v8, v2, v8

    xor-int/2addr v7, v8

    const v8, -0x61c88647

    xor-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x8

    xor-int/2addr v7, v8

    const/16 v8, 0xb

    invoke-direct {p0, v7, v8}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v7

    aput v7, v2, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    .end local v0           #amount:I
    .end local v1           #i:I
    .end local v3           #length:I
    .end local v6           #w:[I
    .restart local v4       #length:I
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "key must be a multiple of 4 bytes"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 137
    .end local v4           #length:I
    .restart local v0       #amount:I
    .restart local v1       #i:I
    .restart local v3       #length:I
    .restart local v6       #w:[I
    :cond_3
    const/16 v7, 0x8

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v2, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    const/16 v1, 0x8

    :goto_2
    if-ge v1, v0, :cond_4

    .line 143
    add-int/lit8 v7, v1, -0x8

    aget v7, v6, v7

    add-int/lit8 v8, v1, -0x5

    aget v8, v6, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x3

    aget v8, v6, v8

    xor-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x1

    aget v8, v6, v8

    xor-int/2addr v7, v8

    const v8, -0x61c88647

    xor-int/2addr v7, v8

    xor-int/2addr v7, v1

    const/16 v8, 0xb

    invoke-direct {p0, v7, v8}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v7

    aput v7, v6, v1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 149
    :cond_4
    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, 0x2

    aget v9, v6, v9

    const/4 v10, 0x3

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 150
    const/4 v7, 0x0

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 151
    const/4 v7, 0x1

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 152
    const/4 v7, 0x2

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 153
    const/4 v7, 0x3

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 154
    const/4 v7, 0x4

    aget v7, v6, v7

    const/4 v8, 0x5

    aget v8, v6, v8

    const/4 v9, 0x6

    aget v9, v6, v9

    const/4 v10, 0x7

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 155
    const/4 v7, 0x4

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 156
    const/4 v7, 0x5

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 157
    const/4 v7, 0x6

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 158
    const/4 v7, 0x7

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 159
    const/16 v7, 0x8

    aget v7, v6, v7

    const/16 v8, 0x9

    aget v8, v6, v8

    const/16 v9, 0xa

    aget v9, v6, v9

    const/16 v10, 0xb

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 160
    const/16 v7, 0x8

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 161
    const/16 v7, 0x9

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 162
    const/16 v7, 0xa

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 163
    const/16 v7, 0xb

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 164
    const/16 v7, 0xc

    aget v7, v6, v7

    const/16 v8, 0xd

    aget v8, v6, v8

    const/16 v9, 0xe

    aget v9, v6, v9

    const/16 v10, 0xf

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 165
    const/16 v7, 0xc

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 166
    const/16 v7, 0xd

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 167
    const/16 v7, 0xe

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 168
    const/16 v7, 0xf

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 169
    const/16 v7, 0x10

    aget v7, v6, v7

    const/16 v8, 0x11

    aget v8, v6, v8

    const/16 v9, 0x12

    aget v9, v6, v9

    const/16 v10, 0x13

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 170
    const/16 v7, 0x10

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 171
    const/16 v7, 0x11

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 172
    const/16 v7, 0x12

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 173
    const/16 v7, 0x13

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 174
    const/16 v7, 0x14

    aget v7, v6, v7

    const/16 v8, 0x15

    aget v8, v6, v8

    const/16 v9, 0x16

    aget v9, v6, v9

    const/16 v10, 0x17

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 175
    const/16 v7, 0x14

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 176
    const/16 v7, 0x15

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 177
    const/16 v7, 0x16

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 178
    const/16 v7, 0x17

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 179
    const/16 v7, 0x18

    aget v7, v6, v7

    const/16 v8, 0x19

    aget v8, v6, v8

    const/16 v9, 0x1a

    aget v9, v6, v9

    const/16 v10, 0x1b

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    .line 180
    const/16 v7, 0x18

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 181
    const/16 v7, 0x19

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 182
    const/16 v7, 0x1a

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 183
    const/16 v7, 0x1b

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 184
    const/16 v7, 0x1c

    aget v7, v6, v7

    const/16 v8, 0x1d

    aget v8, v6, v8

    const/16 v9, 0x1e

    aget v9, v6, v9

    const/16 v10, 0x1f

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    .line 185
    const/16 v7, 0x1c

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 186
    const/16 v7, 0x1d

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 187
    const/16 v7, 0x1e

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 188
    const/16 v7, 0x1f

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 189
    const/16 v7, 0x20

    aget v7, v6, v7

    const/16 v8, 0x21

    aget v8, v6, v8

    const/16 v9, 0x22

    aget v9, v6, v9

    const/16 v10, 0x23

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 190
    const/16 v7, 0x20

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 191
    const/16 v7, 0x21

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 192
    const/16 v7, 0x22

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 193
    const/16 v7, 0x23

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 194
    const/16 v7, 0x24

    aget v7, v6, v7

    const/16 v8, 0x25

    aget v8, v6, v8

    const/16 v9, 0x26

    aget v9, v6, v9

    const/16 v10, 0x27

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 195
    const/16 v7, 0x24

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 196
    const/16 v7, 0x25

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 197
    const/16 v7, 0x26

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 198
    const/16 v7, 0x27

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 199
    const/16 v7, 0x28

    aget v7, v6, v7

    const/16 v8, 0x29

    aget v8, v6, v8

    const/16 v9, 0x2a

    aget v9, v6, v9

    const/16 v10, 0x2b

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 200
    const/16 v7, 0x28

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 201
    const/16 v7, 0x29

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 202
    const/16 v7, 0x2a

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 203
    const/16 v7, 0x2b

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 204
    const/16 v7, 0x2c

    aget v7, v6, v7

    const/16 v8, 0x2d

    aget v8, v6, v8

    const/16 v9, 0x2e

    aget v9, v6, v9

    const/16 v10, 0x2f

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 205
    const/16 v7, 0x2c

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 206
    const/16 v7, 0x2d

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 207
    const/16 v7, 0x2e

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 208
    const/16 v7, 0x2f

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 209
    const/16 v7, 0x30

    aget v7, v6, v7

    const/16 v8, 0x31

    aget v8, v6, v8

    const/16 v9, 0x32

    aget v9, v6, v9

    const/16 v10, 0x33

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 210
    const/16 v7, 0x30

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 211
    const/16 v7, 0x31

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 212
    const/16 v7, 0x32

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 213
    const/16 v7, 0x33

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 214
    const/16 v7, 0x34

    aget v7, v6, v7

    const/16 v8, 0x35

    aget v8, v6, v8

    const/16 v9, 0x36

    aget v9, v6, v9

    const/16 v10, 0x37

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 215
    const/16 v7, 0x34

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 216
    const/16 v7, 0x35

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 217
    const/16 v7, 0x36

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 218
    const/16 v7, 0x37

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 219
    const/16 v7, 0x38

    aget v7, v6, v7

    const/16 v8, 0x39

    aget v8, v6, v8

    const/16 v9, 0x3a

    aget v9, v6, v9

    const/16 v10, 0x3b

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    .line 220
    const/16 v7, 0x38

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 221
    const/16 v7, 0x39

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 222
    const/16 v7, 0x3a

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 223
    const/16 v7, 0x3b

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 224
    const/16 v7, 0x3c

    aget v7, v6, v7

    const/16 v8, 0x3d

    aget v8, v6, v8

    const/16 v9, 0x3e

    aget v9, v6, v9

    const/16 v10, 0x3f

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    .line 225
    const/16 v7, 0x3c

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 226
    const/16 v7, 0x3d

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 227
    const/16 v7, 0x3e

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 228
    const/16 v7, 0x3f

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 229
    const/16 v7, 0x40

    aget v7, v6, v7

    const/16 v8, 0x41

    aget v8, v6, v8

    const/16 v9, 0x42

    aget v9, v6, v9

    const/16 v10, 0x43

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 230
    const/16 v7, 0x40

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 231
    const/16 v7, 0x41

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 232
    const/16 v7, 0x42

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 233
    const/16 v7, 0x43

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 234
    const/16 v7, 0x44

    aget v7, v6, v7

    const/16 v8, 0x45

    aget v8, v6, v8

    const/16 v9, 0x46

    aget v9, v6, v9

    const/16 v10, 0x47

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 235
    const/16 v7, 0x44

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 236
    const/16 v7, 0x45

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 237
    const/16 v7, 0x46

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 238
    const/16 v7, 0x47

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 239
    const/16 v7, 0x48

    aget v7, v6, v7

    const/16 v8, 0x49

    aget v8, v6, v8

    const/16 v9, 0x4a

    aget v9, v6, v9

    const/16 v10, 0x4b

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 240
    const/16 v7, 0x48

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 241
    const/16 v7, 0x49

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 242
    const/16 v7, 0x4a

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 243
    const/16 v7, 0x4b

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 244
    const/16 v7, 0x4c

    aget v7, v6, v7

    const/16 v8, 0x4d

    aget v8, v6, v8

    const/16 v9, 0x4e

    aget v9, v6, v9

    const/16 v10, 0x4f

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 245
    const/16 v7, 0x4c

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 246
    const/16 v7, 0x4d

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 247
    const/16 v7, 0x4e

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 248
    const/16 v7, 0x4f

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 249
    const/16 v7, 0x50

    aget v7, v6, v7

    const/16 v8, 0x51

    aget v8, v6, v8

    const/16 v9, 0x52

    aget v9, v6, v9

    const/16 v10, 0x53

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 250
    const/16 v7, 0x50

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 251
    const/16 v7, 0x51

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 252
    const/16 v7, 0x52

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 253
    const/16 v7, 0x53

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 254
    const/16 v7, 0x54

    aget v7, v6, v7

    const/16 v8, 0x55

    aget v8, v6, v8

    const/16 v9, 0x56

    aget v9, v6, v9

    const/16 v10, 0x57

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 255
    const/16 v7, 0x54

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 256
    const/16 v7, 0x55

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 257
    const/16 v7, 0x56

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 258
    const/16 v7, 0x57

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 259
    const/16 v7, 0x58

    aget v7, v6, v7

    const/16 v8, 0x59

    aget v8, v6, v8

    const/16 v9, 0x5a

    aget v9, v6, v9

    const/16 v10, 0x5b

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    .line 260
    const/16 v7, 0x58

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 261
    const/16 v7, 0x59

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 262
    const/16 v7, 0x5a

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 263
    const/16 v7, 0x5b

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 264
    const/16 v7, 0x5c

    aget v7, v6, v7

    const/16 v8, 0x5d

    aget v8, v6, v8

    const/16 v9, 0x5e

    aget v9, v6, v9

    const/16 v10, 0x5f

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    .line 265
    const/16 v7, 0x5c

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 266
    const/16 v7, 0x5d

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 267
    const/16 v7, 0x5e

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 268
    const/16 v7, 0x5f

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 269
    const/16 v7, 0x60

    aget v7, v6, v7

    const/16 v8, 0x61

    aget v8, v6, v8

    const/16 v9, 0x62

    aget v9, v6, v9

    const/16 v10, 0x63

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 270
    const/16 v7, 0x60

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 271
    const/16 v7, 0x61

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 272
    const/16 v7, 0x62

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 273
    const/16 v7, 0x63

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 274
    const/16 v7, 0x64

    aget v7, v6, v7

    const/16 v8, 0x65

    aget v8, v6, v8

    const/16 v9, 0x66

    aget v9, v6, v9

    const/16 v10, 0x67

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    .line 275
    const/16 v7, 0x64

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 276
    const/16 v7, 0x65

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 277
    const/16 v7, 0x66

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 278
    const/16 v7, 0x67

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 279
    const/16 v7, 0x68

    aget v7, v6, v7

    const/16 v8, 0x69

    aget v8, v6, v8

    const/16 v9, 0x6a

    aget v9, v6, v9

    const/16 v10, 0x6b

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    .line 280
    const/16 v7, 0x68

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 281
    const/16 v7, 0x69

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 282
    const/16 v7, 0x6a

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 283
    const/16 v7, 0x6b

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 284
    const/16 v7, 0x6c

    aget v7, v6, v7

    const/16 v8, 0x6d

    aget v8, v6, v8

    const/16 v9, 0x6e

    aget v9, v6, v9

    const/16 v10, 0x6f

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    .line 285
    const/16 v7, 0x6c

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 286
    const/16 v7, 0x6d

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 287
    const/16 v7, 0x6e

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 288
    const/16 v7, 0x6f

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 289
    const/16 v7, 0x70

    aget v7, v6, v7

    const/16 v8, 0x71

    aget v8, v6, v8

    const/16 v9, 0x72

    aget v9, v6, v9

    const/16 v10, 0x73

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    .line 290
    const/16 v7, 0x70

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 291
    const/16 v7, 0x71

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 292
    const/16 v7, 0x72

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 293
    const/16 v7, 0x73

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 294
    const/16 v7, 0x74

    aget v7, v6, v7

    const/16 v8, 0x75

    aget v8, v6, v8

    const/16 v9, 0x76

    aget v9, v6, v9

    const/16 v10, 0x77

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    .line 295
    const/16 v7, 0x74

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 296
    const/16 v7, 0x75

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 297
    const/16 v7, 0x76

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 298
    const/16 v7, 0x77

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 299
    const/16 v7, 0x78

    aget v7, v6, v7

    const/16 v8, 0x79

    aget v8, v6, v8

    const/16 v9, 0x7a

    aget v9, v6, v9

    const/16 v10, 0x7b

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    .line 300
    const/16 v7, 0x78

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 301
    const/16 v7, 0x79

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 302
    const/16 v7, 0x7a

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 303
    const/16 v7, 0x7b

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 304
    const/16 v7, 0x7c

    aget v7, v6, v7

    const/16 v8, 0x7d

    aget v8, v6, v8

    const/16 v9, 0x7e

    aget v9, v6, v9

    const/16 v10, 0x7f

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    .line 305
    const/16 v7, 0x7c

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 306
    const/16 v7, 0x7d

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 307
    const/16 v7, 0x7e

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 308
    const/16 v7, 0x7f

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 309
    const/16 v7, 0x80

    aget v7, v6, v7

    const/16 v8, 0x81

    aget v8, v6, v8

    const/16 v9, 0x82

    aget v9, v6, v9

    const/16 v10, 0x83

    aget v10, v6, v10

    invoke-direct {p0, v7, v8, v9, v10}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    .line 310
    const/16 v7, 0x80

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    aput v8, v6, v7

    .line 311
    const/16 v7, 0x81

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    aput v8, v6, v7

    .line 312
    const/16 v7, 0x82

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    aput v8, v6, v7

    .line 313
    const/16 v7, 0x83

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    aput v8, v6, v7

    .line 315
    return-object v6
.end method

.method private rotateLeft(II)I
    .locals 2
    .parameter "x"
    .parameter "bits"

    .prologue
    .line 319
    shl-int v0, p1, p2

    neg-int v1, p2

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private rotateRight(II)I
    .locals 2
    .parameter "x"
    .parameter "bits"

    .prologue
    .line 323
    ushr-int v0, p1, p2

    neg-int v1, p2

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private sb0(IIII)V
    .locals 7
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 657
    xor-int v0, p1, p4

    .line 658
    .local v0, t1:I
    xor-int v2, p3, v0

    .line 659
    .local v2, t3:I
    xor-int v3, p2, v2

    .line 660
    .local v3, t4:I
    and-int v5, p1, p4

    xor-int/2addr v5, v3

    iput v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 661
    and-int v5, p2, v0

    xor-int v4, p1, v5

    .line 662
    .local v4, t7:I
    or-int v5, p3, v4

    xor-int/2addr v5, v3

    iput v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 663
    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int v6, v2, v4

    and-int v1, v5, v6

    .line 664
    .local v1, t12:I
    xor-int/lit8 v5, v2, -0x1

    xor-int/2addr v5, v1

    iput v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 665
    xor-int/lit8 v5, v4, -0x1

    xor-int/2addr v5, v1

    iput v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 666
    return-void
.end method

.method private sb1(IIII)V
    .locals 6
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 687
    xor-int/lit8 v5, p1, -0x1

    xor-int v1, p2, v5

    .line 688
    .local v1, t2:I
    or-int v5, p1, v1

    xor-int v2, p3, v5

    .line 689
    .local v2, t5:I
    xor-int v5, p4, v2

    iput v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 690
    or-int v5, p4, v1

    xor-int v3, p2, v5

    .line 691
    .local v3, t7:I
    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int v4, v1, v5

    .line 692
    .local v4, t8:I
    and-int v5, v2, v3

    xor-int/2addr v5, v4

    iput v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 693
    xor-int v0, v2, v3

    .line 694
    .local v0, t11:I
    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v5, v0

    iput v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 695
    and-int v5, v4, v0

    xor-int/2addr v5, v2

    iput v5, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 696
    return-void
.end method

.method private sb2(IIII)V
    .locals 9
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 719
    xor-int/lit8 v0, p1, -0x1

    .line 720
    .local v0, t1:I
    xor-int v1, p2, p4

    .line 721
    .local v1, t2:I
    and-int v2, p3, v0

    .line 722
    .local v2, t3:I
    xor-int v6, v1, v2

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 723
    xor-int v3, p3, v0

    .line 724
    .local v3, t5:I
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int v4, p3, v6

    .line 725
    .local v4, t6:I
    and-int v5, p2, v4

    .line 726
    .local v5, t7:I
    xor-int v6, v3, v5

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 727
    or-int v6, p4, v5

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    or-int/2addr v7, v3

    and-int/2addr v6, v7

    xor-int/2addr v6, p1

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 728
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v6, v1

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    or-int v8, p4, v0

    xor-int/2addr v7, v8

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 729
    return-void
.end method

.method private sb3(IIII)V
    .locals 12
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 755
    xor-int v0, p1, p2

    .line 756
    .local v0, t1:I
    and-int v3, p1, p3

    .line 757
    .local v3, t2:I
    or-int v4, p1, p4

    .line 758
    .local v4, t3:I
    xor-int v5, p3, p4

    .line 759
    .local v5, t4:I
    and-int v6, v0, v4

    .line 760
    .local v6, t5:I
    or-int v7, v3, v6

    .line 761
    .local v7, t6:I
    xor-int v10, v5, v7

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 762
    xor-int v8, p2, v4

    .line 763
    .local v8, t8:I
    xor-int v9, v7, v8

    .line 764
    .local v9, t9:I
    and-int v1, v5, v9

    .line 765
    .local v1, t10:I
    xor-int v10, v0, v1

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 766
    iget v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    iget v11, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    and-int v2, v10, v11

    .line 767
    .local v2, t12:I
    xor-int v10, v9, v2

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 768
    or-int v10, p2, p4

    xor-int v11, v5, v2

    xor-int/2addr v10, v11

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 769
    return-void
.end method

.method private sb4(IIII)V
    .locals 11
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 795
    xor-int v0, p1, p4

    .line 796
    .local v0, t1:I
    and-int v3, p4, v0

    .line 797
    .local v3, t2:I
    xor-int v4, p3, v3

    .line 798
    .local v4, t3:I
    or-int v5, p2, v4

    .line 799
    .local v5, t4:I
    xor-int v9, v0, v5

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 800
    xor-int/lit8 v6, p2, -0x1

    .line 801
    .local v6, t6:I
    or-int v7, v0, v6

    .line 802
    .local v7, t7:I
    xor-int v9, v4, v7

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 803
    iget v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    and-int v8, p1, v9

    .line 804
    .local v8, t9:I
    xor-int v1, v0, v6

    .line 805
    .local v1, t10:I
    and-int v2, v5, v1

    .line 806
    .local v2, t11:I
    xor-int v9, v8, v2

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 807
    xor-int v9, p1, v4

    iget v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    and-int/2addr v10, v1

    xor-int/2addr v9, v10

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 808
    return-void
.end method

.method private sb5(IIII)V
    .locals 12
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 833
    xor-int/lit8 v0, p1, -0x1

    .line 834
    .local v0, t1:I
    xor-int v4, p1, p2

    .line 835
    .local v4, t2:I
    xor-int v5, p1, p4

    .line 836
    .local v5, t3:I
    xor-int v6, p3, v0

    .line 837
    .local v6, t4:I
    or-int v7, v4, v5

    .line 838
    .local v7, t5:I
    xor-int v10, v6, v7

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 839
    iget v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    and-int v8, p4, v10

    .line 840
    .local v8, t7:I
    iget v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int v9, v4, v10

    .line 841
    .local v9, t8:I
    xor-int v10, v8, v9

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 842
    iget v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    or-int v1, v0, v10

    .line 843
    .local v1, t10:I
    or-int v2, v4, v8

    .line 844
    .local v2, t11:I
    xor-int v3, v5, v1

    .line 845
    .local v3, t12:I
    xor-int v10, v2, v3

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 846
    xor-int v10, p2, v8

    iget v11, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    and-int/2addr v11, v3

    xor-int/2addr v10, v11

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 847
    return-void
.end method

.method private sb6(IIII)V
    .locals 11
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 872
    xor-int/lit8 v0, p1, -0x1

    .line 873
    .local v0, t1:I
    xor-int v2, p1, p4

    .line 874
    .local v2, t2:I
    xor-int v3, p2, v2

    .line 875
    .local v3, t3:I
    or-int v4, v0, v2

    .line 876
    .local v4, t4:I
    xor-int v5, p3, v4

    .line 877
    .local v5, t5:I
    xor-int v9, p2, v5

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 878
    iget v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    or-int v6, v2, v9

    .line 879
    .local v6, t7:I
    xor-int v7, p4, v6

    .line 880
    .local v7, t8:I
    and-int v8, v5, v7

    .line 881
    .local v8, t9:I
    xor-int v9, v3, v8

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 882
    xor-int v1, v5, v7

    .line 883
    .local v1, t11:I
    iget v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v9, v1

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 884
    xor-int/lit8 v9, v5, -0x1

    and-int v10, v3, v1

    xor-int/2addr v9, v10

    iput v9, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 885
    return-void
.end method

.method private sb7(IIII)V
    .locals 13
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 910
    xor-int v0, p2, p3

    .line 911
    .local v0, t1:I
    and-int v3, p3, v0

    .line 912
    .local v3, t2:I
    xor-int v4, p4, v3

    .line 913
    .local v4, t3:I
    xor-int v5, p1, v4

    .line 914
    .local v5, t4:I
    or-int v6, p4, v0

    .line 915
    .local v6, t5:I
    and-int v7, v5, v6

    .line 916
    .local v7, t6:I
    xor-int v10, p2, v7

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    .line 917
    iget v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X1:I

    or-int v8, v4, v10

    .line 918
    .local v8, t8:I
    and-int v9, p1, v5

    .line 919
    .local v9, t9:I
    xor-int v10, v0, v9

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    .line 920
    xor-int v1, v5, v8

    .line 921
    .local v1, t11:I
    iget v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    and-int v2, v10, v1

    .line 922
    .local v2, t12:I
    xor-int v10, v4, v2

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    .line 923
    xor-int/lit8 v10, v1, -0x1

    iget v11, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X3:I

    iget v12, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X2:I

    and-int/2addr v11, v12

    xor-int/2addr v10, v11

    iput v10, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->X0:I

    .line 924
    return-void
.end method

.method private wordToBytes(I[BI)V
    .locals 2
    .parameter "word"
    .parameter "dst"
    .parameter "dstOff"

    .prologue
    .line 332
    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 333
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 334
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 335
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 336
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "Serpent"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .parameter "encrypting"
    .parameter "params"

    .prologue
    .line 40
    instance-of v0, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 41
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->encrypting:Z

    .line 42
    check-cast p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->makeWorkingKey([B)[I

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    .line 43
    return-void

    .line 46
    .restart local p2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to Serpent init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

.method public final processBlock([BI[BI)I
    .locals 2
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 72
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->wKey:[I

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Serpent not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 77
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 81
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->encrypting:Z

    if-eqz v0, :cond_3

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->encryptBlock([BI[BI)V

    .line 90
    :goto_0
    const/16 v0, 0x10

    return v0

    .line 87
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/SerpentEngine;->decryptBlock([BI[BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
