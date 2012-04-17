.class public Lorg/apache/commons/httpclient/NTCredentials;
.super Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
.source "NTCredentials.java"


# instance fields
.field private domain:Ljava/lang/String;

.field private host:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;-><init>()V

    .line 98
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    if-nez p1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v2

    .line 258
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 259
    goto :goto_0

    .line 261
    :cond_2
    invoke-super {p0, p1}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    instance-of v3, p1, Lorg/apache/commons/httpclient/NTCredentials;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 265
    check-cast v0, Lorg/apache/commons/httpclient/NTCredentials;

    .line 267
    .local v0, that:Lorg/apache/commons/httpclient/NTCredentials;
    iget-object v3, p0, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->hashCode()I

    move-result v0

    .line 237
    .local v0, hash:I
    iget-object v1, p0, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 239
    iget-object v1, p0, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 241
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, sbResult:Ljava/lang/StringBuffer;
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    iget-object v1, p0, Lorg/apache/commons/httpclient/NTCredentials;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    iget-object v1, p0, Lorg/apache/commons/httpclient/NTCredentials;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
