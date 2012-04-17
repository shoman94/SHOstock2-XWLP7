.class public final Ljavax/mail/search/FlagTerm;
.super Ljavax/mail/search/SearchTerm;
.source "FlagTerm.java"


# instance fields
.field protected flags:Ljavax/mail/Flags;

.field protected set:Z


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 122
    instance-of v1, p1, Ljavax/mail/search/FlagTerm;

    if-eqz v1, :cond_0

    .line 124
    check-cast p1, Ljavax/mail/search/FlagTerm;

    .line 125
    iget-boolean v1, p1, Ljavax/mail/search/FlagTerm;->set:Z

    iget-boolean v2, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    iget-object v2, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1, v2}, Ljavax/mail/Flags;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 127
    :cond_0
    return v0
.end method

.method public getFlags()Ljavax/mail/Flags;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

    return-object v0
.end method

.method public getTestSet()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 91
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v2

    .line 92
    iget-boolean v1, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v2, v1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags;)Z

    move-result v0

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    iget-object v1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v3

    move v1, v0

    .line 97
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 99
    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    :cond_2
    iget-object v1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v3

    move v1, v0

    .line 105
    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 107
    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljavax/mail/Flags;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 112
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    goto :goto_0
.end method
