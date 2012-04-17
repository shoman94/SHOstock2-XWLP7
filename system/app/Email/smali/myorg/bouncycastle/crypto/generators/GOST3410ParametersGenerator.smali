.class public Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;
.super Ljava/lang/Object;
.source "GOST3410ParametersGenerator.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private init_random:Ljava/security/SecureRandom;

.field private size:I

.field private typeproc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    .line 19
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private procedure_A(II[Ljava/math/BigInteger;I)I
    .locals 25
    .parameter "x0"
    .parameter "c"
    .parameter "pq"
    .parameter "size"

    .prologue
    .line 37
    :goto_0
    if-ltz p1, :cond_0

    const/high16 v20, 0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 38
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/security/SecureRandom;->nextInt()I

    move-result v20

    const v21, 0x8000

    div-int p1, v20, v21

    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    if-ltz p2, :cond_2

    const/high16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-gt v0, v1, :cond_2

    div-int/lit8 v20, p2, 0x2

    if-nez v20, :cond_3

    .line 42
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/security/SecureRandom;->nextInt()I

    move-result v20

    const v21, 0x8000

    div-int v20, v20, v21

    add-int/lit8 p2, v20, 0x1

    goto :goto_1

    .line 45
    :cond_3
    new-instance v5, Ljava/math/BigInteger;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 46
    .local v5, C:Ljava/math/BigInteger;
    new-instance v8, Ljava/math/BigInteger;

    const-string v20, "19381"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 49
    .local v8, constA16:Ljava/math/BigInteger;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v19, v0

    .line 50
    .local v19, y:[Ljava/math/BigInteger;
    const/16 v20, 0x0

    new-instance v21, Ljava/math/BigInteger;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v21, v19, v20

    .line 53
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 54
    .local v16, t:[I
    const/16 v20, 0x0

    aput p4, v16, v20

    .line 55
    const/4 v15, 0x0

    .line 56
    .local v15, s:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    aget v20, v16, v9

    const/16 v21, 0x11

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    .line 58
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 59
    .local v17, tmp_t:[I
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move-object/from16 v2, v17

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 61
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v16

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    add-int/lit8 v20, v9, 0x1

    aget v21, v16, v9

    div-int/lit8 v21, v21, 0x2

    aput v21, v16, v20

    .line 64
    add-int/lit8 v15, v9, 0x1

    .line 56
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 68
    .end local v17           #tmp_t:[I
    :cond_4
    add-int/lit8 v20, v15, 0x1

    move/from16 v0, v20

    new-array v13, v0, [Ljava/math/BigInteger;

    .line 69
    .local v13, p:[Ljava/math/BigInteger;
    new-instance v20, Ljava/math/BigInteger;

    const-string v21, "8003"

    const/16 v22, 0x10

    invoke-direct/range {v20 .. v22}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v20, v13, v15

    .line 71
    add-int/lit8 v12, v15, -0x1

    .line 73
    .local v12, m:I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v15, :cond_b

    .line 74
    aget v20, v16, v12

    div-int/lit8 v14, v20, 0x10

    .line 78
    .local v14, rm:I
    :cond_5
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v18, v0

    .line 79
    .local v18, tmp_y:[Ljava/math/BigInteger;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    add-int/lit8 v20, v14, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v19, v0

    .line 81
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    const/4 v10, 0x0

    .local v10, j:I
    :goto_4
    if-ge v10, v14, :cond_6

    .line 84
    add-int/lit8 v20, v10, 0x1

    aget-object v21, v19, v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    sget-object v22, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v23, 0x10

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    aput-object v21, v19, v20

    .line 83
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 88
    :cond_6
    new-instance v7, Ljava/math/BigInteger;

    const-string v20, "0"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 89
    .local v7, Ym:Ljava/math/BigInteger;
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v14, :cond_7

    .line 90
    aget-object v20, v19, v10

    sget-object v21, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v22, v10, 0x10

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 89
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 93
    :cond_7
    const/16 v20, 0x0

    aget-object v21, v19, v14

    aput-object v21, v19, v20

    .line 96
    sget-object v20, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v21, v16, v12

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v20

    add-int/lit8 v21, v12, 0x1

    aget-object v21, v13, v21

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    sget-object v21, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v22, v16, v12

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    add-int/lit8 v22, v12, 0x1

    aget-object v22, v13, v22

    sget-object v23, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v24, v14, 0x10

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 102
    .local v6, N:Ljava/math/BigInteger;
    sget-object v20, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    sget-object v21, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v20

    if-nez v20, :cond_8

    .line 103
    sget-object v20, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 106
    :cond_8
    const/4 v11, 0x0

    .line 110
    .local v11, k:I
    :goto_6
    add-int/lit8 v20, v12, 0x1

    aget-object v20, v13, v20

    int-to-long v0, v11

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    sget-object v21, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    aput-object v20, v13, v12

    .line 112
    aget-object v20, v13, v12

    sget-object v21, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v22, v16, v12

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 117
    sget-object v20, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    add-int/lit8 v21, v12, 0x1

    aget-object v21, v13, v21

    int-to-long v0, v11

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    aget-object v22, v13, v12

    invoke-virtual/range {v20 .. v22}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    sget-object v21, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v20

    if-nez v20, :cond_9

    sget-object v20, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    int-to-long v0, v11

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    aget-object v22, v13, v12

    invoke-virtual/range {v20 .. v22}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    sget-object v21, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v20

    if-eqz v20, :cond_9

    .line 120
    add-int/lit8 v12, v12, -0x1

    .line 128
    if-ltz v12, :cond_a

    .line 73
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 123
    :cond_9
    add-int/lit8 v11, v11, 0x2

    .line 124
    goto :goto_6

    .line 131
    :cond_a
    const/16 v20, 0x0

    const/16 v21, 0x0

    aget-object v21, v13, v21

    aput-object v21, p3, v20

    .line 132
    const/16 v20, 0x1

    const/16 v21, 0x1

    aget-object v21, v13, v21

    aput-object v21, p3, v20

    .line 133
    const/16 v20, 0x0

    aget-object v20, v19, v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->intValue()I

    move-result v20

    .line 137
    .end local v6           #N:Ljava/math/BigInteger;
    .end local v7           #Ym:Ljava/math/BigInteger;
    .end local v10           #j:I
    .end local v11           #k:I
    .end local v14           #rm:I
    .end local v18           #tmp_y:[Ljava/math/BigInteger;
    :goto_7
    return v20

    :cond_b
    const/16 v20, 0x0

    aget-object v20, v19, v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->intValue()I

    move-result v20

    goto :goto_7
.end method

.method private procedure_Aa(JJ[Ljava/math/BigInteger;I)J
    .locals 25
    .parameter "x0"
    .parameter "c"
    .parameter "pq"
    .parameter "size"

    .prologue
    .line 143
    :goto_0
    const-wide/16 v20, 0x0

    cmp-long v20, p1, v20

    if-ltz v20, :cond_0

    const-wide v20, 0x100000000L

    cmp-long v20, p1, v20

    if-lez v20, :cond_1

    .line 144
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/security/SecureRandom;->nextInt()I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 p1, v0

    goto :goto_0

    .line 147
    :cond_1
    :goto_1
    const-wide/16 v20, 0x0

    cmp-long v20, p3, v20

    if-ltz v20, :cond_2

    const-wide v20, 0x100000000L

    cmp-long v20, p3, v20

    if-gtz v20, :cond_2

    const-wide/16 v20, 0x2

    div-long v20, p3, v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_3

    .line 148
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/security/SecureRandom;->nextInt()I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 p3, v0

    goto :goto_1

    .line 151
    :cond_3
    new-instance v5, Ljava/math/BigInteger;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 152
    .local v5, C:Ljava/math/BigInteger;
    new-instance v8, Ljava/math/BigInteger;

    const-string v20, "97781173"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 155
    .local v8, constA32:Ljava/math/BigInteger;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v19, v0

    .line 156
    .local v19, y:[Ljava/math/BigInteger;
    const/16 v20, 0x0

    new-instance v21, Ljava/math/BigInteger;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v21, v19, v20

    .line 159
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 160
    .local v16, t:[I
    const/16 v20, 0x0

    aput p6, v16, v20

    .line 161
    const/4 v15, 0x0

    .line 162
    .local v15, s:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    aget v20, v16, v9

    const/16 v21, 0x21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    .line 164
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 165
    .local v17, tmp_t:[I
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move-object/from16 v2, v17

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 167
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v16

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    add-int/lit8 v20, v9, 0x1

    aget v21, v16, v9

    div-int/lit8 v21, v21, 0x2

    aput v21, v16, v20

    .line 170
    add-int/lit8 v15, v9, 0x1

    .line 162
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 174
    .end local v17           #tmp_t:[I
    :cond_4
    add-int/lit8 v20, v15, 0x1

    move/from16 v0, v20

    new-array v13, v0, [Ljava/math/BigInteger;

    .line 175
    .local v13, p:[Ljava/math/BigInteger;
    new-instance v20, Ljava/math/BigInteger;

    const-string v21, "8000000B"

    const/16 v22, 0x10

    invoke-direct/range {v20 .. v22}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v20, v13, v15

    .line 178
    add-int/lit8 v12, v15, -0x1

    .line 180
    .local v12, m:I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v15, :cond_b

    .line 181
    aget v20, v16, v12

    div-int/lit8 v14, v20, 0x20

    .line 185
    .local v14, rm:I
    :cond_5
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v18, v0

    .line 186
    .local v18, tmp_y:[Ljava/math/BigInteger;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    add-int/lit8 v20, v14, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v19, v0

    .line 188
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    const/4 v10, 0x0

    .local v10, j:I
    :goto_4
    if-ge v10, v14, :cond_6

    .line 191
    add-int/lit8 v20, v10, 0x1

    aget-object v21, v19, v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    sget-object v22, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v23, 0x20

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    aput-object v21, v19, v20

    .line 190
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 195
    :cond_6
    new-instance v7, Ljava/math/BigInteger;

    const-string v20, "0"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 196
    .local v7, Ym:Ljava/math/BigInteger;
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v14, :cond_7

    .line 197
    aget-object v20, v19, v10

    sget-object v21, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v22, v10, 0x20

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 196
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 200
    :cond_7
    const/16 v20, 0x0

    aget-object v21, v19, v14

    aput-object v21, v19, v20

    .line 203
    sget-object v20, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v21, v16, v12

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v20

    add-int/lit8 v21, v12, 0x1

    aget-object v21, v13, v21

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    sget-object v21, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v22, v16, v12

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    add-int/lit8 v22, v12, 0x1

    aget-object v22, v13, v22

    sget-object v23, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v24, v14, 0x20

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 209
    .local v6, N:Ljava/math/BigInteger;
    sget-object v20, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    sget-object v21, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v20

    if-nez v20, :cond_8

    .line 210
    sget-object v20, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 213
    :cond_8
    const/4 v11, 0x0

    .line 217
    .local v11, k:I
    :goto_6
    add-int/lit8 v20, v12, 0x1

    aget-object v20, v13, v20

    int-to-long v0, v11

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    sget-object v21, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    aput-object v20, v13, v12

    .line 219
    aget-object v20, v13, v12

    sget-object v21, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v22, v16, v12

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 224
    sget-object v20, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    add-int/lit8 v21, v12, 0x1

    aget-object v21, v13, v21

    int-to-long v0, v11

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    aget-object v22, v13, v12

    invoke-virtual/range {v20 .. v22}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    sget-object v21, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v20

    if-nez v20, :cond_9

    sget-object v20, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    int-to-long v0, v11

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    aget-object v22, v13, v12

    invoke-virtual/range {v20 .. v22}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    sget-object v21, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v20

    if-eqz v20, :cond_9

    .line 227
    add-int/lit8 v12, v12, -0x1

    .line 235
    if-ltz v12, :cond_a

    .line 180
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 230
    :cond_9
    add-int/lit8 v11, v11, 0x2

    .line 231
    goto :goto_6

    .line 238
    :cond_a
    const/16 v20, 0x0

    const/16 v21, 0x0

    aget-object v21, v13, v21

    aput-object v21, p5, v20

    .line 239
    const/16 v20, 0x1

    const/16 v21, 0x1

    aget-object v21, v13, v21

    aput-object v21, p5, v20

    .line 240
    const/16 v20, 0x0

    aget-object v20, v19, v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v20

    .line 244
    .end local v6           #N:Ljava/math/BigInteger;
    .end local v7           #Ym:Ljava/math/BigInteger;
    .end local v10           #j:I
    .end local v11           #k:I
    .end local v14           #rm:I
    .end local v18           #tmp_y:[Ljava/math/BigInteger;
    :goto_7
    return-wide v20

    :cond_b
    const/16 v20, 0x0

    aget-object v20, v19, v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v20

    goto :goto_7
.end method

.method private procedure_B(II[Ljava/math/BigInteger;)V
    .locals 20
    .parameter "x0"
    .parameter "c"
    .parameter "pq"

    .prologue
    .line 250
    :goto_0
    if-ltz p1, :cond_0

    const/high16 v15, 0x1

    move/from16 v0, p1

    if-le v0, v15, :cond_1

    .line 251
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v15}, Ljava/security/SecureRandom;->nextInt()I

    move-result v15

    const v16, 0x8000

    div-int p1, v15, v16

    goto :goto_0

    .line 254
    :cond_1
    :goto_1
    if-ltz p2, :cond_2

    const/high16 v15, 0x1

    move/from16 v0, p2

    if-gt v0, v15, :cond_2

    div-int/lit8 v15, p2, 0x2

    if-nez v15, :cond_3

    .line 255
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v15}, Ljava/security/SecureRandom;->nextInt()I

    move-result v15

    const v16, 0x8000

    div-int v15, v15, v16

    add-int/lit8 p2, v15, 0x1

    goto :goto_1

    .line 258
    :cond_3
    const/4 v15, 0x2

    new-array v12, v15, [Ljava/math/BigInteger;

    .line 259
    .local v12, qp:[Ljava/math/BigInteger;
    const/4 v11, 0x0

    .local v11, q:Ljava/math/BigInteger;
    const/4 v5, 0x0

    .local v5, Q:Ljava/math/BigInteger;
    const/4 v10, 0x0

    .line 260
    .local v10, p:Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 261
    .local v3, C:Ljava/math/BigInteger;
    new-instance v7, Ljava/math/BigInteger;

    const-string v15, "19381"

    invoke-direct {v7, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 264
    .local v7, constA16:Ljava/math/BigInteger;
    const/16 v15, 0x100

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v12, v15}, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_A(II[Ljava/math/BigInteger;I)I

    move-result p1

    .line 265
    const/4 v15, 0x0

    aget-object v11, v12, v15

    .line 268
    const/16 v15, 0x200

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v12, v15}, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_A(II[Ljava/math/BigInteger;I)I

    move-result p1

    .line 269
    const/4 v15, 0x0

    aget-object v5, v12, v15

    .line 271
    const/16 v15, 0x41

    new-array v14, v15, [Ljava/math/BigInteger;

    .line 272
    .local v14, y:[Ljava/math/BigInteger;
    const/4 v15, 0x0

    new-instance v16, Ljava/math/BigInteger;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v16, v14, v15

    .line 274
    const/16 v13, 0x400

    .line 278
    .local v13, tp:I
    :cond_4
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2
    const/16 v15, 0x40

    if-ge v8, v15, :cond_5

    .line 279
    add-int/lit8 v15, v8, 0x1

    aget-object v16, v14, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    sget-object v17, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v18, 0x10

    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    aput-object v16, v14, v15

    .line 278
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 283
    :cond_5
    new-instance v6, Ljava/math/BigInteger;

    const-string v15, "0"

    invoke-direct {v6, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 285
    .local v6, Y:Ljava/math/BigInteger;
    const/4 v8, 0x0

    :goto_3
    const/16 v15, 0x40

    if-ge v8, v15, :cond_6

    .line 286
    aget-object v15, v14, v8

    sget-object v16, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v17, v8, 0x10

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 285
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 289
    :cond_6
    const/4 v15, 0x0

    const/16 v16, 0x40

    aget-object v16, v14, v16

    aput-object v16, v14, v15

    .line 292
    sget-object v15, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v16, 0x3ff

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v11, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    sget-object v16, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v17, 0x3ff

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual {v11, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    sget-object v18, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v19, 0x400

    invoke-virtual/range {v18 .. v19}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 297
    .local v4, N:Ljava/math/BigInteger;
    sget-object v15, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v4, v15}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    sget-object v16, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-nez v15, :cond_7

    .line 298
    sget-object v15, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 301
    :cond_7
    const/4 v9, 0x0

    .line 305
    .local v9, k:I
    :goto_4
    invoke-virtual {v11, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    int-to-long v0, v9

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    sget-object v16, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 307
    sget-object v15, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v15, v13}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 312
    sget-object v15, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v11, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    int-to-long v0, v9

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    sget-object v16, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-nez v15, :cond_8

    sget-object v15, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    int-to-long v0, v9

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    sget-object v16, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-eqz v15, :cond_8

    .line 315
    const/4 v15, 0x0

    aput-object v10, p3, v15

    .line 316
    const/4 v15, 0x1

    aput-object v11, p3, v15

    .line 317
    return-void

    .line 319
    :cond_8
    add-int/lit8 v9, v9, 0x2

    .line 320
    goto :goto_4
.end method

.method private procedure_Bb(JJ[Ljava/math/BigInteger;)V
    .locals 20
    .parameter "x0"
    .parameter "c"
    .parameter "pq"

    .prologue
    .line 329
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x100000000L

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 330
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v0, v2

    move-wide/from16 p1, v0

    goto :goto_0

    .line 333
    :cond_1
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_2

    const-wide v2, 0x100000000L

    cmp-long v2, p3, v2

    if-gtz v2, :cond_2

    const-wide/16 v2, 0x2

    div-long v2, p3, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 334
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    int-to-long v0, v2

    move-wide/from16 p3, v0

    goto :goto_1

    .line 337
    :cond_3
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/math/BigInteger;

    .line 338
    .local v7, qp:[Ljava/math/BigInteger;
    const/16 v17, 0x0

    .local v17, q:Ljava/math/BigInteger;
    const/4 v11, 0x0

    .local v11, Q:Ljava/math/BigInteger;
    const/16 v16, 0x0

    .line 339
    .local v16, p:Ljava/math/BigInteger;
    new-instance v9, Ljava/math/BigInteger;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 340
    .local v9, C:Ljava/math/BigInteger;
    new-instance v13, Ljava/math/BigInteger;

    const-string v2, "97781173"

    invoke-direct {v13, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 343
    .local v13, constA32:Ljava/math/BigInteger;
    const/16 v8, 0x100

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    invoke-direct/range {v2 .. v8}, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_Aa(JJ[Ljava/math/BigInteger;I)J

    move-result-wide p1

    .line 344
    const/4 v2, 0x0

    aget-object v17, v7, v2

    .line 347
    const/16 v8, 0x200

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    invoke-direct/range {v2 .. v8}, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_Aa(JJ[Ljava/math/BigInteger;I)J

    move-result-wide p1

    .line 348
    const/4 v2, 0x0

    aget-object v11, v7, v2

    .line 350
    const/16 v2, 0x21

    new-array v0, v2, [Ljava/math/BigInteger;

    move-object/from16 v19, v0

    .line 351
    .local v19, y:[Ljava/math/BigInteger;
    const/4 v2, 0x0

    new-instance v3, Ljava/math/BigInteger;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v3, v19, v2

    .line 353
    const/16 v18, 0x400

    .line 357
    .local v18, tp:I
    :cond_4
    const/4 v14, 0x0

    .local v14, j:I
    :goto_2
    const/16 v2, 0x20

    if-ge v14, v2, :cond_5

    .line 358
    add-int/lit8 v2, v14, 0x1

    aget-object v3, v19, v14

    invoke-virtual {v3, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v19, v2

    .line 357
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 362
    :cond_5
    new-instance v12, Ljava/math/BigInteger;

    const-string v2, "0"

    invoke-direct {v12, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 363
    .local v12, Y:Ljava/math/BigInteger;
    const/4 v14, 0x0

    :goto_3
    const/16 v2, 0x20

    if-ge v14, v2, :cond_6

    .line 364
    aget-object v2, v19, v14

    sget-object v3, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v4, v14, 0x20

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 363
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 367
    :cond_6
    const/4 v2, 0x0

    const/16 v3, 0x20

    aget-object v3, v19, v3

    aput-object v3, v19, v2

    .line 370
    sget-object v2, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v3, 0x3ff

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v4, 0x3ff

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 375
    .local v10, N:Ljava/math/BigInteger;
    sget-object v2, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-nez v2, :cond_7

    .line 376
    sget-object v2, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 379
    :cond_7
    const/4 v15, 0x0

    .line 383
    .local v15, k:I
    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v3, v15

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    .line 385
    sget-object v2, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 390
    sget-object v2, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    int-to-long v4, v15

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    int-to-long v3, v15

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-eqz v2, :cond_8

    .line 393
    const/4 v2, 0x0

    aput-object v16, p5, v2

    .line 394
    const/4 v2, 0x1

    aput-object v17, p5, v2

    .line 395
    return-void

    .line 397
    :cond_8
    add-int/lit8 v15, v15, 0x2

    .line 398
    goto :goto_4
.end method

.method private procedure_C(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .parameter "p"
    .parameter "q"

    .prologue
    .line 409
    sget-object v5, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 410
    .local v3, pSub1:Ljava/math/BigInteger;
    invoke-virtual {v3, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 411
    .local v4, pSub1DivQ:Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 414
    .local v2, length:I
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-direct {v1, v2, v5}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 417
    .local v1, d:Ljava/math/BigInteger;
    sget-object v5, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gez v5, :cond_0

    .line 418
    invoke-virtual {v1, v4, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 420
    .local v0, a:Ljava/math/BigInteger;
    sget-object v5, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 421
    return-object v0
.end method


# virtual methods
.method public generateParameters()Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;
    .locals 14

    .prologue
    const/16 v6, 0x200

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 432
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/math/BigInteger;

    .line 433
    .local v5, pq:[Ljava/math/BigInteger;
    const/4 v10, 0x0

    .local v10, q:Ljava/math/BigInteger;
    const/4 v9, 0x0

    .local v9, p:Ljava/math/BigInteger;
    const/4 v7, 0x0

    .line 438
    .local v7, a:Ljava/math/BigInteger;
    iget v0, p0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->typeproc:I

    if-ne v0, v12, :cond_0

    .line 439
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v11

    .line 440
    .local v11, x0:I
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v8

    .line 442
    .local v8, c:I
    iget v0, p0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->size:I

    sparse-switch v0, :sswitch_data_0

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Ooops! key size 512 or 1024 bit."

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :sswitch_0
    invoke-direct {p0, v11, v8, v5, v6}, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_A(II[Ljava/math/BigInteger;I)I

    .line 452
    :goto_0
    aget-object v9, v5, v13

    .line 453
    aget-object v10, v5, v12

    .line 454
    invoke-direct {p0, v9, v10}, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_C(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 457
    new-instance v0, Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;

    new-instance v6, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;

    invoke-direct {v6, v11, v8}, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;-><init>(II)V

    invoke-direct {v0, v9, v10, v7, v6}, Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;)V

    .line 477
    .end local v8           #c:I
    .end local v11           #x0:I
    :goto_1
    return-object v0

    .line 447
    .restart local v8       #c:I
    .restart local v11       #x0:I
    :sswitch_1
    invoke-direct {p0, v11, v8, v5}, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_B(II[Ljava/math/BigInteger;)V

    goto :goto_0

    .line 459
    .end local v8           #c:I
    .end local v11           #x0:I
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 460
    .local v1, x0L:J
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    .line 462
    .local v3, cL:J
    iget v0, p0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->size:I

    sparse-switch v0, :sswitch_data_1

    .line 470
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "Ooops! key size 512 or 1024 bit."

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    move-object v0, p0

    .line 464
    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_Aa(JJ[Ljava/math/BigInteger;I)J

    .line 472
    :goto_2
    aget-object v9, v5, v13

    .line 473
    aget-object v10, v5, v12

    .line 474
    invoke-direct {p0, v9, v10}, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_C(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 477
    new-instance v0, Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;

    new-instance v6, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;

    invoke-direct {v6, v1, v2, v3, v4}, Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;-><init>(JJ)V

    invoke-direct {v0, v9, v10, v7, v6}, Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/GOST3410ValidationParameters;)V

    goto :goto_1

    :sswitch_3
    move-object v0, p0

    .line 467
    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_Bb(JJ[Ljava/math/BigInteger;)V

    goto :goto_2

    .line 442
    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
    .end sparse-switch

    .line 462
    :sswitch_data_1
    .sparse-switch
        0x200 -> :sswitch_2
        0x400 -> :sswitch_3
    .end sparse-switch
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 0
    .parameter "size"
    .parameter "typeproc"
    .parameter "random"

    .prologue
    .line 29
    iput p1, p0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->size:I

    .line 30
    iput p2, p0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->typeproc:I

    .line 31
    iput-object p3, p0, Lmyorg/bouncycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    .line 32
    return-void
.end method
