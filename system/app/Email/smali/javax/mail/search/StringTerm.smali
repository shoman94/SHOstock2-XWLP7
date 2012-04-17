.class public abstract Ljavax/mail/search/StringTerm;
.super Ljavax/mail/search/SearchTerm;
.source "StringTerm.java"


# instance fields
.field protected ignoreCase:Z

.field protected pattern:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;Z)V

    .line 53
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 57
    iput-object p1, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    .line 58
    iput-boolean p2, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    instance-of v2, p1, Ljavax/mail/search/StringTerm;

    if-eqz v2, :cond_4

    .line 98
    check-cast p1, Ljavax/mail/search/StringTerm;

    .line 99
    iget-boolean v2, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-eqz v2, :cond_2

    .line 101
    iget-object v2, p1, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    iget-object v3, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    iget-boolean v3, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-ne v2, v3, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 101
    goto :goto_0

    .line 106
    :cond_2
    iget-object v2, p1, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    iget-object v3, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    iget-boolean v3, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 110
    goto :goto_0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected match(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 82
    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v6, v0, v5

    move v2, v4

    .line 84
    :goto_0
    if-gt v2, v6, :cond_0

    .line 86
    iget-boolean v1, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    iget-object v3, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const/4 v4, 0x1

    .line 91
    :cond_0
    return v4

    .line 84
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
