.class public abstract Lorg/apache/commons/httpclient/auth/AuthSchemeBase;
.super Ljava/lang/Object;
.source "AuthSchemeBase.java"

# interfaces
.implements Lorg/apache/commons/httpclient/auth/AuthScheme;


# instance fields
.field private challenge:Ljava/lang/String;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 111
    instance-of v0, p1, Lorg/apache/commons/httpclient/auth/AuthSchemeBase;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthSchemeBase;->challenge:Ljava/lang/String;

    check-cast p1, Lorg/apache/commons/httpclient/auth/AuthSchemeBase;

    .end local p1
    iget-object v1, p1, Lorg/apache/commons/httpclient/auth/AuthSchemeBase;->challenge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthSchemeBase;->challenge:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthSchemeBase;->challenge:Ljava/lang/String;

    return-object v0
.end method
