.class public Lorg/apache/commons/io/filefilter/SuffixFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "SuffixFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final caseSensitivity:Lorg/apache/commons/io/IOCase;

.field private final suffixes:[Ljava/lang/String;


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4
    .parameter "file"

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, name:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 161
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    iget-object v3, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/io/IOCase;->checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const/4 v2, 0x1

    .line 165
    :goto_1
    return v2

    .line 160
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .parameter "file"
    .parameter "name"

    .prologue
    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 178
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    iget-object v2, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, p2, v2}, Lorg/apache/commons/io/IOCase;->checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const/4 v1, 0x1

    .line 182
    :goto_1
    return v1

    .line 177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 196
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 197
    if-lez v1, :cond_0

    .line 198
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1           #i:I
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
