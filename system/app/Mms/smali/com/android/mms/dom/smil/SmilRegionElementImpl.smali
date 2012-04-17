.class public Lcom/android/mms/dom/smil/SmilRegionElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source "SmilRegionElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILRegionElement;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .parameter "owner"
    .parameter "tagName"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private parseRegionLength(Ljava/lang/String;Z)I
    .locals 6
    .parameter "length"
    .parameter "horizontal"

    .prologue
    const/4 v5, 0x0

    .line 269
    const-string v2, "px"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    const-string v2, "px"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 281
    :goto_0
    return v2

    .line 272
    :cond_0
    const-string v2, "%"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    const-wide v2, 0x3f847ae147ae147bL

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    mul-double v0, v2, v4

    .line 274
    .local v0, value:D
    if-eqz p2, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    .line 279
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_1

    .line 281
    .end local v0           #value:D
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, "backgroundColor"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    const-string v1, "fit"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, fit:Ljava/lang/String;
    const-string v1, "fill"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "fill"

    .line 91
    :goto_0
    return-object v1

    .line 84
    :cond_0
    const-string v1, "meet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    const-string v1, "meet"

    goto :goto_0

    .line 86
    :cond_1
    const-string v1, "scroll"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    const-string v1, "scroll"

    goto :goto_0

    .line 88
    :cond_2
    const-string v1, "slice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    const-string v1, "slice"

    goto :goto_0

    .line 91
    :cond_3
    const-string v1, "hidden"

    goto :goto_0
.end method

.method public getHeight()I
    .locals 4

    .prologue
    .line 176
    :try_start_0
    const-string v2, "height"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I

    move-result v1

    .line 177
    .local v1, height:I
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 199
    .end local v1           #height:I
    :cond_0
    :goto_0
    return v1

    .line 179
    :catch_0
    move-exception v2

    .line 184
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v0

    .line 186
    .local v0, bbh:I
    :try_start_1
    const-string v2, "top"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    sub-int/2addr v0, v2

    .line 193
    :goto_1
    :try_start_2
    const-string v2, "bottom"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    sub-int/2addr v0, v2

    :goto_2
    move v1, v0

    .line 199
    goto :goto_0

    .line 194
    :catch_1
    move-exception v2

    goto :goto_2

    .line 187
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()I
    .locals 5

    .prologue
    .line 97
    :try_start_0
    const-string v3, "left"

    invoke-virtual {p0, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 113
    :goto_0
    return v3

    .line 98
    :catch_0
    move-exception v3

    .line 104
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v3}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v0

    .line 105
    .local v0, bbw:I
    const-string v3, "right"

    invoke-virtual {p0, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I

    move-result v1

    .line 106
    .local v1, right:I
    const-string v3, "width"

    invoke-virtual {p0, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 107
    .local v2, width:I
    sub-int v3, v0, v1

    sub-int/2addr v3, v2

    goto :goto_0

    .line 108
    .end local v0           #bbw:I
    .end local v1           #right:I
    .end local v2           #width:I
    :catch_1
    move-exception v3

    .line 113
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTop()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 118
    :try_start_0
    const-string v3, "top"

    invoke-virtual {p0, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 134
    :goto_0
    return v3

    .line 119
    :catch_0
    move-exception v3

    .line 125
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v3}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v0

    .line 126
    .local v0, bbh:I
    const-string v3, "bottom"

    invoke-virtual {p0, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I

    move-result v1

    .line 127
    .local v1, bottom:I
    const-string v3, "height"

    invoke-virtual {p0, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 128
    .local v2, height:I
    sub-int v3, v0, v1

    sub-int/2addr v3, v2

    goto :goto_0

    .line 129
    .end local v0           #bbh:I
    .end local v1           #bottom:I
    .end local v2           #height:I
    :catch_1
    move-exception v3

    move v3, v4

    .line 134
    goto :goto_0
.end method

.method public getWidth()I
    .locals 4

    .prologue
    .line 208
    :try_start_0
    const-string v2, "width"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I

    move-result v1

    .line 209
    .local v1, width:I
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 231
    .end local v1           #width:I
    :cond_0
    :goto_0
    return v1

    .line 211
    :catch_0
    move-exception v2

    .line 216
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v0

    .line 218
    .local v0, bbw:I
    :try_start_1
    const-string v2, "left"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    sub-int/2addr v0, v2

    .line 225
    :goto_1
    :try_start_2
    const-string v2, "right"

    invoke-virtual {p0, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    sub-int/2addr v0, v2

    :goto_2
    move v1, v0

    .line 231
    goto :goto_0

    .line 226
    :catch_1
    move-exception v2

    goto :goto_2

    .line 219
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 1
    .parameter "backgroundColor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 235
    const-string v0, "backgroundColor"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public setFit(Ljava/lang/String;)V
    .locals 2
    .parameter "fit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 146
    const-string v0, "fill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "meet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "scroll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    const-string v0, "fit"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_1
    const-string v0, "fit"

    const-string v1, "hidden"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 3
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 239
    const-string v0, "height"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 261
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public setLeft(I)V
    .locals 2
    .parameter "left"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 155
    const-string v0, "left"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setTop(I)V
    .locals 2
    .parameter "top"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 159
    const-string v0, "top"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public setWidth(I)V
    .locals 3
    .parameter "width"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 247
    const-string v0, "width"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
