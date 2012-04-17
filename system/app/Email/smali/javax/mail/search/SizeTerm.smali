.class public final Ljavax/mail/search/SizeTerm;
.super Ljavax/mail/search/IntegerComparisonTerm;
.source "SizeTerm.java"


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    instance-of v0, p1, Ljavax/mail/search/SizeTerm;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ljavax/mail/search/IntegerComparisonTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 2
    .parameter

    .prologue
    .line 60
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getSize()I

    move-result v0

    .line 61
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 63
    invoke-super {p0, v0}, Ljavax/mail/search/IntegerComparisonTerm;->match(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 69
    :goto_0
    return v0

    .line 66
    :catch_0
    move-exception v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
