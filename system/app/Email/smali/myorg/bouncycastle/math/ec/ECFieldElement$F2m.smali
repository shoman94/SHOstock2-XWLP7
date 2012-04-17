.class public Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;
.super Lmyorg/bouncycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# instance fields
.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I

.field private representation:I

.field private t:I

.field private x:Lmyorg/bouncycastle/math/ec/IntArray;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 2
    .parameter "m"
    .parameter "k1"
    .parameter "k2"
    .parameter "k3"
    .parameter "x"

    .prologue
    .line 839
    invoke-direct {p0}, Lmyorg/bouncycastle/math/ec/ECFieldElement;-><init>()V

    .line 841
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    .line 842
    new-instance v0, Lmyorg/bouncycastle/math/ec/IntArray;

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v0, p5, v1}, Lmyorg/bouncycastle/math/ec/IntArray;-><init>(Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lmyorg/bouncycastle/math/ec/IntArray;

    .line 844
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 845
    const/4 v0, 0x2

    iput v0, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 856
    :goto_0
    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_3

    .line 857
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :cond_0
    if-lt p3, p4, :cond_1

    .line 848
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be smaller than k3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_1
    if-gtz p3, :cond_2

    .line 851
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    goto :goto_0

    .line 860
    :cond_3
    iput p1, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 861
    iput p2, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    .line 862
    iput p3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    .line 863
    iput p4, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    .line 864
    return-void
.end method

.method private constructor <init>(IIIILmyorg/bouncycastle/math/ec/IntArray;)V
    .locals 1
    .parameter "m"
    .parameter "k1"
    .parameter "k2"
    .parameter "k3"
    .parameter "x"

    .prologue
    .line 881
    invoke-direct {p0}, Lmyorg/bouncycastle/math/ec/ECFieldElement;-><init>()V

    .line 882
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    .line 883
    iput-object p5, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lmyorg/bouncycastle/math/ec/IntArray;

    .line 884
    iput p1, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 885
    iput p2, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    .line 886
    iput p3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    .line 887
    iput p4, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    .line 889
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 890
    const/4 v0, 0x2

    iput v0, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 895
    :goto_0
    return-void

    .line 892
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    goto :goto_0
.end method

.method public static checkFieldElements(Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 922
    instance-of v2, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    if-eqz v2, :cond_0

    instance-of v2, p1, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    if-nez v2, :cond_1

    .line 923
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Field elements are not both instances of ECFieldElement.F2m"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, p0

    .line 927
    check-cast v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    .local v0, aF2m:Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;
    move-object v1, p1

    .line 928
    check-cast v1, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 930
    .local v1, bF2m:Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;
    iget v2, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, v1, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, v1, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v3, v1, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    iget v3, v1, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    if-eq v2, v3, :cond_3

    .line 932
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Field elements are not elements of the same field F2m"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 936
    :cond_3
    iget v2, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v3, v1, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-eq v2, v3, :cond_4

    .line 938
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "One of the field elements are not elements has incorrect representation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 941
    :cond_4
    return-void
.end method


# virtual methods
.method public add(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .locals 7
    .parameter "b"

    .prologue
    .line 947
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lmyorg/bouncycastle/math/ec/IntArray;

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/IntArray;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/math/ec/IntArray;

    .local v5, iarrClone:Lmyorg/bouncycastle/math/ec/IntArray;
    move-object v6, p1

    .line 948
    check-cast v6, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 949
    .local v6, bF2m:Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v0, v6, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lmyorg/bouncycastle/math/ec/IntArray;

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lmyorg/bouncycastle/math/ec/IntArray;->addShifted(Lmyorg/bouncycastle/math/ec/IntArray;I)V

    .line 950
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v2, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILmyorg/bouncycastle/math/ec/IntArray;)V

    return-object v0
.end method

.method public divide(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .parameter "b"

    .prologue
    .line 976
    invoke-virtual {p1}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->invert()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 977
    .local v0, bInv:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "anObject"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1114
    if-ne p1, p0, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return v1

    .line 1118
    :cond_1
    instance-of v3, p1, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    if-nez v3, :cond_2

    move v1, v2

    .line 1119
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1122
    check-cast v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 1124
    .local v0, b:Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;
    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v4, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v4, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    iget v4, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v4, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lmyorg/bouncycastle/math/ec/IntArray;

    iget-object v4, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lmyorg/bouncycastle/math/ec/IntArray;

    invoke-virtual {v3, v4}, Lmyorg/bouncycastle/math/ec/IntArray;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 906
    iget v0, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lmyorg/bouncycastle/math/ec/IntArray;

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/IntArray;->hashCode()I

    move-result v0

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    xor-int/2addr v0, v1

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    xor-int/2addr v0, v1

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .locals 17

    .prologue
    .line 999
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lmyorg/bouncycastle/math/ec/IntArray;

    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/IntArray;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmyorg/bouncycastle/math/ec/IntArray;

    .line 1002
    .local v13, uz:Lmyorg/bouncycastle/math/ec/IntArray;
    new-instance v15, Lmyorg/bouncycastle/math/ec/IntArray;

    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v15, v1}, Lmyorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    .line 1003
    .local v15, vz:Lmyorg/bouncycastle/math/ec/IntArray;
    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v15, v1}, Lmyorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 1004
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lmyorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 1005
    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    invoke-virtual {v15, v1}, Lmyorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 1006
    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1007
    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    invoke-virtual {v15, v1}, Lmyorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 1008
    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-virtual {v15, v1}, Lmyorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 1012
    :cond_0
    new-instance v7, Lmyorg/bouncycastle/math/ec/IntArray;

    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v7, v1}, Lmyorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    .line 1013
    .local v7, g1z:Lmyorg/bouncycastle/math/ec/IntArray;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lmyorg/bouncycastle/math/ec/IntArray;->setBit(I)V

    .line 1014
    new-instance v6, Lmyorg/bouncycastle/math/ec/IntArray;

    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v6, v1}, Lmyorg/bouncycastle/math/ec/IntArray;-><init>(I)V

    .line 1017
    .local v6, g2z:Lmyorg/bouncycastle/math/ec/IntArray;
    :goto_0
    invoke-virtual {v13}, Lmyorg/bouncycastle/math/ec/IntArray;->isZero()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1022
    invoke-virtual {v13}, Lmyorg/bouncycastle/math/ec/IntArray;->bitLength()I

    move-result v1

    invoke-virtual {v15}, Lmyorg/bouncycastle/math/ec/IntArray;->bitLength()I

    move-result v2

    sub-int v10, v1, v2

    .line 1025
    .local v10, j:I
    if-gez v10, :cond_1

    .line 1026
    move-object v14, v13

    .line 1027
    .local v14, uzCopy:Lmyorg/bouncycastle/math/ec/IntArray;
    move-object v13, v15

    .line 1028
    move-object v15, v14

    .line 1030
    move-object v8, v7

    .line 1031
    .local v8, g1zCopy:Lmyorg/bouncycastle/math/ec/IntArray;
    move-object v7, v6

    .line 1032
    move-object v6, v8

    .line 1034
    neg-int v10, v10

    .line 1044
    .end local v8           #g1zCopy:Lmyorg/bouncycastle/math/ec/IntArray;
    .end local v14           #uzCopy:Lmyorg/bouncycastle/math/ec/IntArray;
    :cond_1
    shr-int/lit8 v12, v10, 0x5

    .line 1046
    .local v12, jInt:I
    and-int/lit8 v11, v10, 0x1f

    .line 1047
    .local v11, jBit:I
    invoke-virtual {v15, v11}, Lmyorg/bouncycastle/math/ec/IntArray;->shiftLeft(I)Lmyorg/bouncycastle/math/ec/IntArray;

    move-result-object v16

    .line 1048
    .local v16, vzShift:Lmyorg/bouncycastle/math/ec/IntArray;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v12}, Lmyorg/bouncycastle/math/ec/IntArray;->addShifted(Lmyorg/bouncycastle/math/ec/IntArray;I)V

    .line 1052
    invoke-virtual {v6, v11}, Lmyorg/bouncycastle/math/ec/IntArray;->shiftLeft(I)Lmyorg/bouncycastle/math/ec/IntArray;

    move-result-object v9

    .line 1053
    .local v9, g2zShift:Lmyorg/bouncycastle/math/ec/IntArray;
    invoke-virtual {v7, v9, v12}, Lmyorg/bouncycastle/math/ec/IntArray;->addShifted(Lmyorg/bouncycastle/math/ec/IntArray;I)V

    goto :goto_0

    .line 1056
    .end local v9           #g2zShift:Lmyorg/bouncycastle/math/ec/IntArray;
    .end local v10           #j:I
    .end local v11           #jBit:I
    .end local v12           #jInt:I
    .end local v16           #vzShift:Lmyorg/bouncycastle/math/ec/IntArray;
    :cond_2
    new-instance v1, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    move-object/from16 v0, p0

    iget v2, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    move-object/from16 v0, p0

    iget v3, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    move-object/from16 v0, p0

    iget v4, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    move-object/from16 v0, p0

    iget v5, v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v1 .. v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILmyorg/bouncycastle/math/ec/IntArray;)V

    return-object v1
.end method

.method public multiply(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .locals 7
    .parameter "b"

    .prologue
    .line 966
    move-object v6, p1

    check-cast v6, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 967
    .local v6, bF2m:Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lmyorg/bouncycastle/math/ec/IntArray;

    iget-object v1, v6, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lmyorg/bouncycastle/math/ec/IntArray;

    iget v2, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v0, v1, v2}, Lmyorg/bouncycastle/math/ec/IntArray;->multiply(Lmyorg/bouncycastle/math/ec/IntArray;I)Lmyorg/bouncycastle/math/ec/IntArray;

    move-result-object v5

    .line 968
    .local v5, mult:Lmyorg/bouncycastle/math/ec/IntArray;
    iget v0, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    aput v3, v1, v2

    invoke-virtual {v5, v0, v1}, Lmyorg/bouncycastle/math/ec/IntArray;->reduce(I[I)V

    .line 971
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v2, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILmyorg/bouncycastle/math/ec/IntArray;)V

    return-object v0
.end method

.method public negate()Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    .prologue
    .line 982
    return-object p0
.end method

.method public sqrt()Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 1060
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public square()Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    .prologue
    .line 986
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lmyorg/bouncycastle/math/ec/IntArray;

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/math/ec/IntArray;->square(I)Lmyorg/bouncycastle/math/ec/IntArray;

    move-result-object v5

    .line 987
    .local v5, squared:Lmyorg/bouncycastle/math/ec/IntArray;
    iget v0, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    aput v3, v1, v2

    invoke-virtual {v5, v0, v1}, Lmyorg/bouncycastle/math/ec/IntArray;->reduce(I[I)V

    .line 990
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v2, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILmyorg/bouncycastle/math/ec/IntArray;)V

    return-object v0
.end method

.method public subtract(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .parameter "b"

    .prologue
    .line 955
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lmyorg/bouncycastle/math/ec/IntArray;

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/IntArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
