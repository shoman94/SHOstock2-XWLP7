.class public Lcom/android/mms/dom/smil/SmilParElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source "SmilParElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILParElement;


# static fields
.field private static SMIL_MINIMUM_PAR_TIME:F

.field private static SMIL_MODIFIED_PAR_TIME:F


# instance fields
.field mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, 0x40a0

    .line 39
    sput v0, Lcom/android/mms/dom/smil/SmilParElementImpl;->SMIL_MINIMUM_PAR_TIME:F

    .line 41
    sput v0, Lcom/android/mms/dom/smil/SmilParElementImpl;->SMIL_MODIFIED_PAR_TIME:F

    return-void
.end method

.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 1
    .parameter "owner"
    .parameter "tagName"

    .prologue
    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/android/mms/dom/smil/SmilParElementImpl$1;

    invoke-direct {v0, p0, p0}, Lcom/android/mms/dom/smil/SmilParElementImpl$1;-><init>(Lcom/android/mms/dom/smil/SmilParElementImpl;Lorg/w3c/dom/smil/SMILElement;)V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    .line 105
    return-void
.end method


# virtual methods
.method public beginElement()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->beginElement()Z

    move-result v0

    return v0
.end method

.method public endElement()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->endElement()Z

    move-result v0

    return v0
.end method

.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 1
    .parameter "instant"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getDur()F
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getDur()F

    move-result v0

    sget v1, Lcom/android/mms/dom/smil/SmilParElementImpl;->SMIL_MINIMUM_PAR_TIME:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 154
    sget v0, Lcom/android/mms/dom/smil/SmilParElementImpl;->SMIL_MODIFIED_PAR_TIME:F

    .line 156
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getDur()F

    move-result v0

    goto :goto_0
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getFill()S
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getFill()S

    move-result v0

    return v0
.end method

.method public getTimeChildren()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public pauseElement()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->pauseElement()V

    .line 185
    return-void
.end method

.method public resumeElement()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->resumeElement()V

    .line 189
    return-void
.end method

.method public seekElement(F)V
    .locals 1
    .parameter "seekTo"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->seekElement(F)V

    .line 193
    return-void
.end method

.method public setDur(F)V
    .locals 1
    .parameter "dur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->setDur(F)V

    .line 201
    return-void
.end method
