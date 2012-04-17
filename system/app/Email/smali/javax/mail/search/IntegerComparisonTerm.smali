.class public abstract Ljavax/mail/search/IntegerComparisonTerm;
.super Ljavax/mail/search/ComparisonTerm;
.source "IntegerComparisonTerm.java"


# instance fields
.field protected number:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 89
    instance-of v0, p1, Ljavax/mail/search/IntegerComparisonTerm;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/mail/search/IntegerComparisonTerm;

    iget v0, v0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    iget v1, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Ljavax/mail/search/ComparisonTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComparison()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Ljavax/mail/search/ComparisonTerm;->comparison:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    invoke-super {p0}, Ljavax/mail/search/ComparisonTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected match(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    iget v2, p0, Ljavax/mail/search/ComparisonTerm;->comparison:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 72
    :pswitch_0
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-le p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 74
    :pswitch_1
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-lt p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 76
    :pswitch_2
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 78
    :pswitch_3
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ne p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 80
    :pswitch_4
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-gt p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 82
    :pswitch_5
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ge p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
