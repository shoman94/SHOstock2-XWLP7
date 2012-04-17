.class public Lcom/seven/util/IntArrayMap;
.super Ljava/lang/Object;
.source "IntArrayMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected m_count:I

.field protected m_keys:[I

.field protected m_values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/seven/util/IntArrayMap;-><init>(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 39
    const/16 p1, 0xa

    .line 40
    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/seven/util/IntArrayMap;->m_keys:[I

    .line 41
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/seven/util/IntArrayMap;->m_values:[Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/seven/util/IntArrayMap;)V
    .locals 1
    .parameter "map"

    .prologue
    .line 52
    if-nez p1, :cond_1

    const/16 v0, 0xa

    :goto_0
    invoke-direct {p0, v0}, Lcom/seven/util/IntArrayMap;-><init>(I)V

    .line 53
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lcom/seven/util/IntArrayMap;->uncheckedAddAll(Lcom/seven/util/IntArrayMap;)V

    .line 59
    :cond_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/seven/util/IntArrayMap;->size()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/seven/util/IntArrayMap;

    iget v1, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    invoke-direct {v0, v1}, Lcom/seven/util/IntArrayMap;-><init>(I)V

    .line 109
    .local v0, m:Lcom/seven/util/IntArrayMap;
    invoke-virtual {v0, p0}, Lcom/seven/util/IntArrayMap;->uncheckedAddAll(Lcom/seven/util/IntArrayMap;)V

    .line 110
    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/seven/util/IntArrayMap;->indexOfKey(I)I

    move-result v0

    .line 158
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 159
    const/4 v1, 0x0

    .line 160
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/seven/util/IntArrayMap;->m_values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public getBoolean(IZ)Z
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/seven/util/IntArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 167
    .end local v0           #o:Ljava/lang/Object;
    .end local p2
    :goto_0
    return p2

    .restart local v0       #o:Ljava/lang/Object;
    .restart local p2
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public getList(I)Ljava/util/List;
    .locals 2
    .parameter "key"

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/seven/util/IntArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 240
    .end local v0           #o:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/seven/util/IntArrayMap;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/seven/util/IntArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 213
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 215
    .end local v0           #o:Ljava/lang/Object;
    .end local p2
    :goto_0
    return-object p2

    .restart local v0       #o:Ljava/lang/Object;
    .restart local p2
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #o:Ljava/lang/Object;
    move-object p2, v0

    goto :goto_0
.end method

.method protected growIfNeeded(I)V
    .locals 6
    .parameter "nExtraValues"

    .prologue
    const/4 v5, 0x0

    .line 282
    iget v2, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    add-int v0, v2, p1

    .line 283
    .local v0, neededCapacity:I
    iget-object v2, p0, Lcom/seven/util/IntArrayMap;->m_keys:[I

    array-length v2, v2

    if-le v0, v2, :cond_1

    .line 287
    iget v2, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    mul-int/lit8 v2, v2, 0x3

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v2, 0x1

    .line 288
    .local v1, newSize:I
    if-ge v1, v0, :cond_0

    .line 289
    move v1, v0

    .line 292
    :cond_0
    iget-object v2, p0, Lcom/seven/util/IntArrayMap;->m_keys:[I

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/seven/util/IntArrayMap;->m_keys:[I

    iget v4, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    iget-object v2, p0, Lcom/seven/util/IntArrayMap;->m_values:[Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/seven/util/IntArrayMap;->m_values:[Ljava/lang/Object;

    iget v4, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    .end local v1           #newSize:I
    :cond_1
    return-void
.end method

.method protected indexOfKey(I)I
    .locals 2
    .parameter "key"

    .prologue
    .line 373
    iget v0, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    .local v0, i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 374
    iget-object v1, p0, Lcom/seven/util/IntArrayMap;->m_keys:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 378
    .end local v0           #i:I
    :goto_0
    return v0

    .restart local v0       #i:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x22

    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "{"

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, buf:Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    .line 85
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 86
    if-eqz v2, :cond_0

    .line 87
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :cond_0
    iget-object v4, p0, Lcom/seven/util/IntArrayMap;->m_keys:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    iget-object v4, p0, Lcom/seven/util/IntArrayMap;->m_values:[Ljava/lang/Object;

    aget-object v3, v4, v2

    .line 90
    .local v3, o:Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 91
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 96
    .end local v3           #o:Ljava/lang/Object;
    :cond_2
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public uncheckedAdd(ILjava/lang/Object;)V
    .locals 3
    .parameter "key"
    .parameter "val"

    .prologue
    .line 397
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/seven/util/IntArrayMap;->growIfNeeded(I)V

    .line 398
    iget-object v0, p0, Lcom/seven/util/IntArrayMap;->m_keys:[I

    iget v1, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    aput p1, v0, v1

    .line 399
    iget-object v0, p0, Lcom/seven/util/IntArrayMap;->m_values:[Ljava/lang/Object;

    iget v1, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    aput-object p2, v0, v1

    .line 400
    return-void
.end method

.method public uncheckedAddAll(Lcom/seven/util/IntArrayMap;)V
    .locals 5
    .parameter "srcMap"

    .prologue
    const/4 v4, 0x0

    .line 421
    iget v0, p1, Lcom/seven/util/IntArrayMap;->m_count:I

    .line 422
    .local v0, nExtraValues:I
    invoke-virtual {p0, v0}, Lcom/seven/util/IntArrayMap;->growIfNeeded(I)V

    .line 423
    iget-object v1, p1, Lcom/seven/util/IntArrayMap;->m_keys:[I

    iget-object v2, p0, Lcom/seven/util/IntArrayMap;->m_keys:[I

    iget v3, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iget-object v1, p1, Lcom/seven/util/IntArrayMap;->m_values:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/seven/util/IntArrayMap;->m_values:[Ljava/lang/Object;

    iget v3, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    iget v1, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/seven/util/IntArrayMap;->m_count:I

    .line 426
    return-void
.end method
