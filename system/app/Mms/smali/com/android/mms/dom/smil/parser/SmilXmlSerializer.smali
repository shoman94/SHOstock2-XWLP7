.class public Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;
.super Ljava/lang/Object;
.source "SmilXmlSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V
    .locals 5
    .parameter "smilDoc"
    .parameter "out"

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, writer:Ljava/io/Writer;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v4, 0x800

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 39
    .end local v1           #writer:Ljava/io/Writer;
    .local v2, writer:Ljava/io/Writer;
    :try_start_1
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->writeElement(Ljava/io/Writer;Lorg/w3c/dom/Element;)V

    .line 40
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 46
    if-eqz v2, :cond_2

    .line 48
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 54
    .end local v2           #writer:Ljava/io/Writer;
    .restart local v1       #writer:Ljava/io/Writer;
    :cond_0
    :goto_0
    return-void

    .line 49
    .end local v1           #writer:Ljava/io/Writer;
    .restart local v2       #writer:Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 51
    .end local v2           #writer:Ljava/io/Writer;
    .restart local v1       #writer:Ljava/io/Writer;
    goto :goto_0

    .line 41
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 42
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    if-eqz v1, :cond_0

    .line 48
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 49
    :catch_2
    move-exception v0

    .line 50
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 44
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 46
    if-eqz v1, :cond_0

    .line 48
    :try_start_6
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 49
    :catch_4
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    .line 48
    :try_start_7
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 51
    :cond_1
    :goto_4
    throw v3

    .line 49
    :catch_5
    move-exception v0

    .line 50
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 46
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #writer:Ljava/io/Writer;
    .restart local v2       #writer:Ljava/io/Writer;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #writer:Ljava/io/Writer;
    .restart local v1       #writer:Ljava/io/Writer;
    goto :goto_3

    .line 43
    .end local v1           #writer:Ljava/io/Writer;
    .restart local v2       #writer:Ljava/io/Writer;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #writer:Ljava/io/Writer;
    .restart local v1       #writer:Ljava/io/Writer;
    goto :goto_2

    .line 41
    .end local v1           #writer:Ljava/io/Writer;
    .restart local v2       #writer:Ljava/io/Writer;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #writer:Ljava/io/Writer;
    .restart local v1       #writer:Ljava/io/Writer;
    goto :goto_1

    .end local v1           #writer:Ljava/io/Writer;
    .restart local v2       #writer:Ljava/io/Writer;
    :cond_2
    move-object v1, v2

    .end local v2           #writer:Ljava/io/Writer;
    .restart local v1       #writer:Ljava/io/Writer;
    goto :goto_0
.end method

.method private static writeElement(Ljava/io/Writer;Lorg/w3c/dom/Element;)V
    .locals 10
    .parameter "writer"
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3e

    const/4 v8, 0x0

    .line 57
    const/16 v6, 0x3c

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(I)V

    .line 58
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 60
    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 61
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 62
    .local v1, attributes:Lorg/w3c/dom/NamedNodeMap;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v4, s1:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v5, s2:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 65
    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 66
    .local v0, attribute:Lorg/w3c/dom/Attr;
    if-eqz v0, :cond_0

    .line 67
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 68
    const-string v6, "=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 71
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 64
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v0           #attribute:Lorg/w3c/dom/Attr;
    .end local v1           #attributes:Lorg/w3c/dom/NamedNodeMap;
    .end local v3           #i:I
    .end local v4           #s1:Ljava/lang/StringBuffer;
    .end local v5           #s2:Ljava/lang/StringBuffer;
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILElement;

    .line 79
    .local v2, childElement:Lorg/w3c/dom/smil/SMILElement;
    if-eqz v2, :cond_3

    .line 80
    invoke-virtual {p0, v9}, Ljava/io/Writer;->write(I)V

    .line 83
    :cond_2
    invoke-static {p0, v2}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->writeElement(Ljava/io/Writer;Lorg/w3c/dom/Element;)V

    .line 84
    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILElement;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    .end local v2           #childElement:Lorg/w3c/dom/smil/SMILElement;
    check-cast v2, Lorg/w3c/dom/smil/SMILElement;

    .line 85
    .restart local v2       #childElement:Lorg/w3c/dom/smil/SMILElement;
    if-nez v2, :cond_2

    .line 87
    const-string v6, "</"

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 88
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, v9}, Ljava/io/Writer;->write(I)V

    .line 93
    :goto_1
    return-void

    .line 91
    :cond_3
    const-string v6, "/>"

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1
.end method
