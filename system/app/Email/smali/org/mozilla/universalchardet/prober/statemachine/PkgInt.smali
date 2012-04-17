.class public Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;
.super Ljava/lang/Object;
.source "PkgInt.java"


# instance fields
.field private bitShift:I

.field private data:[I

.field private indexShift:I

.field private shiftMask:I

.field private unitMask:I


# direct methods
.method public constructor <init>(IIII[I)V
    .locals 0
    .parameter "indexShift"
    .parameter "shiftMask"
    .parameter "bitShift"
    .parameter "unitMask"
    .parameter "data"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->indexShift:I

    .line 74
    iput p2, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->shiftMask:I

    .line 75
    iput p3, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->bitShift:I

    .line 76
    iput p4, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->unitMask:I

    .line 77
    iput-object p5, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->data:[I

    .line 78
    return-void
.end method

.method public static pack16bits(II)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 81
    shl-int/lit8 v0, p1, 0x10

    or-int/2addr v0, p0

    return v0
.end method

.method public static pack4bits(IIIIIIII)I
    .locals 4
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"
    .parameter "g"
    .parameter "h"

    .prologue
    .line 89
    shl-int/lit8 v0, p1, 0x4

    or-int/2addr v0, p0

    shl-int/lit8 v1, p3, 0x4

    or-int/2addr v1, p2

    shl-int/lit8 v2, p5, 0x4

    or-int/2addr v2, p4

    shl-int/lit8 v3, p7, 0x4

    or-int/2addr v3, p6

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack8bits(IIII)I

    move-result v0

    return v0
.end method

.method public static pack8bits(IIII)I
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 85
    shl-int/lit8 v0, p1, 0x8

    or-int/2addr v0, p0

    shl-int/lit8 v1, p3, 0x8

    or-int/2addr v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack16bits(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public unpack(I)I
    .locals 3
    .parameter "i"

    .prologue
    .line 93
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->data:[I

    iget v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->indexShift:I

    shr-int v1, p1, v1

    aget v0, v0, v1

    iget v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->shiftMask:I

    and-int/2addr v1, p1

    iget v2, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->bitShift:I

    shl-int/2addr v1, v2

    shr-int/2addr v0, v1

    iget v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->unitMask:I

    and-int/2addr v0, v1

    return v0
.end method
