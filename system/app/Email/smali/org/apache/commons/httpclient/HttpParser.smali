.class public Lorg/apache/commons/httpclient/HttpParser;
.super Ljava/lang/Object;
.source "HttpParser.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lorg/apache/commons/httpclient/HttpParser;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpParser;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static parseHeaders(Ljava/io/InputStream;Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;
    .locals 10
    .parameter "is"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    .line 248
    sget-object v6, Lorg/apache/commons/httpclient/HttpParser;->LOG:Lorg/apache/commons/logging/Log;

    const-string v7, "enter HeaderParser.parseHeaders(InputStream, String)"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v1, headers:Ljava/util/ArrayList;
    const/4 v3, 0x0

    .line 254
    .local v3, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 256
    .local v5, value:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 261
    .local v4, tempException:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/httpclient/HttpParser;->readLine(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_3

    .line 330
    :cond_1
    if-eqz v3, :cond_2

    .line 332
    new-instance v6, Lorg/apache/commons/httpclient/Header;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lorg/apache/commons/httpclient/Header;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/apache/commons/httpclient/Header;

    check-cast v6, [Lorg/apache/commons/httpclient/Header;

    return-object v6

    .line 277
    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_4

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_5

    .line 283
    :cond_4
    if-eqz v5, :cond_0

    .line 285
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 287
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 295
    :cond_5
    if-eqz v3, :cond_6

    .line 297
    new-instance v6, Lorg/apache/commons/httpclient/Header;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_6
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 307
    .local v0, colon:I
    if-gez v0, :cond_7

    .line 309
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v4, v8, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 314
    new-instance v6, Lorg/apache/commons/httpclient/ProtocolException;

    const-string v7, "Unable to parse header: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 320
    :cond_7
    invoke-virtual {v2, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 322
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #value:Ljava/lang/StringBuffer;
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v5       #value:Ljava/lang/StringBuffer;
    goto/16 :goto_0
.end method

.method public static readLine(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "inputStream"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 153
    sget-object v5, Lorg/apache/commons/httpclient/HttpParser;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "enter HttpParser.readLine(InputStream, String)"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 155
    invoke-static {p0}, Lorg/apache/commons/httpclient/HttpParser;->readRawLine(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 157
    .local v3, rawdata:[B
    if-nez v3, :cond_1

    .line 159
    const/4 v4, 0x0

    .line 209
    :cond_0
    :goto_0
    return-object v4

    .line 165
    :cond_1
    array-length v0, v3

    .line 167
    .local v0, len:I
    const/4 v2, 0x0

    .line 169
    .local v2, offset:I
    if-lez v0, :cond_2

    .line 171
    add-int/lit8 v5, v0, -0x1

    aget-byte v5, v3, v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    .line 173
    add-int/lit8 v2, v2, 0x1

    .line 175
    if-le v0, v7, :cond_2

    .line 177
    add-int/lit8 v5, v0, -0x2

    aget-byte v5, v3, v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    .line 179
    add-int/lit8 v2, v2, 0x1

    .line 189
    :cond_2
    const/4 v5, 0x0

    sub-int v6, v0, v2

    invoke-static {v3, v5, v6, p1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, result:Ljava/lang/String;
    sget-object v5, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/Wire;->enabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    move-object v1, v4

    .line 197
    .local v1, logoutput:Ljava/lang/String;
    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    :cond_3
    :goto_1
    sget-object v5, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v5, v1}, Lorg/apache/commons/httpclient/Wire;->input(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_4
    if-ne v2, v7, :cond_3

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static readRawLine(Ljava/io/InputStream;)[B
    .locals 4
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    sget-object v2, Lorg/apache/commons/httpclient/HttpParser;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter HttpParser.readRawLine()"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 112
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    if-ltz v1, :cond_1

    .line 118
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 120
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 128
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 130
    const/4 v2, 0x0

    .line 134
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_0
.end method
