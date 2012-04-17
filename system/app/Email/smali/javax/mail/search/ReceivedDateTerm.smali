.class public final Ljavax/mail/search/ReceivedDateTerm;
.super Ljavax/mail/search/DateTerm;
.source "ReceivedDateTerm.java"


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    instance-of v0, p1, Ljavax/mail/search/ReceivedDateTerm;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ljavax/mail/search/DateTerm;->equals(Ljava/lang/Object;)Z

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
    .locals 1
    .parameter

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 64
    invoke-super {p0, v0}, Ljavax/mail/search/DateTerm;->match(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 70
    :goto_0
    return v0

    .line 67
    :catch_0
    move-exception v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
