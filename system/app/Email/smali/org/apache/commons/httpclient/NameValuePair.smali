.class public Lorg/apache/commons/httpclient/NameValuePair;
.super Ljava/lang/Object;
.source "NameValuePair.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0, v0}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object v0, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    if-nez p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v2

    .line 191
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 192
    goto :goto_0

    .line 194
    :cond_2
    instance-of v3, p1, Lorg/apache/commons/httpclient/NameValuePair;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 196
    check-cast v0, Lorg/apache/commons/httpclient/NameValuePair;

    .line 198
    .local v0, that:Lorg/apache/commons/httpclient/NameValuePair;
    iget-object v3, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

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

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 212
    const/16 v0, 0x11

    .line 214
    .local v0, hash:I
    iget-object v1, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 216
    iget-object v1, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 218
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
