.class public Lorg/apache/commons/httpclient/HeaderGroup;
.super Ljava/lang/Object;
.source "HeaderGroup.java"


# instance fields
.field private headers:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    .line 92
    return-void
.end method


# virtual methods
.method public addHeader(Lorg/apache/commons/httpclient/Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public getAllHeaders()[Lorg/apache/commons/httpclient/Header;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/httpclient/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/httpclient/Header;

    check-cast v0, [Lorg/apache/commons/httpclient/Header;

    return-object v0
.end method

.method public getCondensedHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .locals 6
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 163
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 165
    .local v0, headers:[Lorg/apache/commons/httpclient/Header;
    array-length v3, v0

    if-nez v3, :cond_0

    .line 167
    const/4 v3, 0x0

    .line 185
    :goto_0
    return-object v3

    .line 169
    :cond_0
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 171
    new-instance v3, Lorg/apache/commons/httpclient/Header;

    aget-object v4, v0, v5

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v5

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    aget-object v3, v0, v5

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 177
    .local v2, valueBuffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 179
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    :cond_2
    new-instance v3, Lorg/apache/commons/httpclient/Header;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .locals 3
    .parameter "name"

    .prologue
    .line 232
    iget-object v2, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, headerIter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/Header;

    .line 236
    .local v0, header:Lorg/apache/commons/httpclient/Header;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    .end local v0           #header:Lorg/apache/commons/httpclient/Header;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;
    .locals 4
    .parameter "name"

    .prologue
    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v2, headersFound:Ljava/util/ArrayList;
    iget-object v3, p0, Lorg/apache/commons/httpclient/HeaderGroup;->headers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, headerIter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/Header;

    .line 209
    .local v0, header:Lorg/apache/commons/httpclient/Header;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    .end local v0           #header:Lorg/apache/commons/httpclient/Header;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/commons/httpclient/Header;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/httpclient/Header;

    check-cast v3, [Lorg/apache/commons/httpclient/Header;

    return-object v3
.end method
