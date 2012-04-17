.class public final Ljavax/mail/search/OrTerm;
.super Ljavax/mail/search/SearchTerm;
.source "OrTerm.java"


# instance fields
.field protected terms:[Ljavax/mail/search/SearchTerm;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 95
    instance-of v0, p1, Ljavax/mail/search/OrTerm;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Ljavax/mail/search/OrTerm;

    .line 98
    iget-object v0, p1, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v0, v0

    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-eq v0, v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 102
    :goto_1
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 104
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, v2, v0

    iget-object v3, p1, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getTerms()[Ljavax/mail/search/SearchTerm;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    invoke-virtual {v0}, [Ljavax/mail/search/SearchTerm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/search/SearchTerm;

    check-cast v0, [Ljavax/mail/search/SearchTerm;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 116
    move v1, v0

    .line 117
    :goto_0
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 119
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return v1
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 83
    move v0, v1

    :goto_0
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 85
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljavax/mail/search/SearchTerm;->match(Ljavax/mail/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    const/4 v1, 0x1

    .line 90
    :cond_0
    return v1

    .line 83
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
