.class public Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
.super Ljava/lang/Object;
.source "UsernamePasswordCredentials.java"

# interfaces
.implements Lorg/apache/commons/httpclient/Credentials;


# instance fields
.field private password:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 274
    if-nez p1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v1

    .line 277
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    .line 278
    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 286
    check-cast v0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;

    .line 288
    .local v0, that:Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    iget-object v3, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 292
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 254
    const/16 v0, 0x11

    .line 256
    .local v0, hash:I
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 258
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 260
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    .local v0, result:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 240
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->password:Ljava/lang/String;

    goto :goto_0
.end method
