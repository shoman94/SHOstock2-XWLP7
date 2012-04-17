.class public Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GetTagsXMLParser.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mIsErrorResponse:Z

.field private mResponseVO:Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;

.field private mTag:Lcom/android/email/syncnconnect/utils/SncTag;

.field private mVal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;)V
    .locals 1
    .parameter "responseVO"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;

    .line 19
    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mVal:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mTag:Lcom/android/email/syncnconnect/utils/SncTag;

    .line 23
    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mErrorBundle:Landroid/os/Bundle;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mIsErrorResponse:Z

    .line 28
    iput-object p1, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;

    .line 29
    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mVal:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 40
    const-string v1, "sncTag"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->getTagList()Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, tagList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncTag;>;"
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mTag:Lcom/android/email/syncnconnect/utils/SncTag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->setTagList(Ljava/util/List;)V

    .line 44
    iput-object v3, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mTag:Lcom/android/email/syncnconnect/utils/SncTag;

    .line 54
    .end local v0           #tagList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncTag;>;"
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v1, "code"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mIsErrorResponse:Z

    if-eqz v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const-string v2, "error_code"

    iget-object v3, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mVal:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 47
    :cond_2
    const-string v1, "message"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mIsErrorResponse:Z

    if-eqz v1, :cond_3

    .line 48
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const-string v2, "error_text"

    iget-object v3, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_3
    const-string v1, "error"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mIsErrorResponse:Z

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mErrorBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->setErrorBundle(Landroid/os/Bundle;)V

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mIsErrorResponse:Z

    .line 52
    iput-object v3, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mErrorBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mVal:Ljava/lang/String;

    .line 60
    const-string v0, "sncTag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Lcom/android/email/syncnconnect/utils/SncTag;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncTag;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mTag:Lcom/android/email/syncnconnect/utils/SncTag;

    .line 62
    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mTag:Lcom/android/email/syncnconnect/utils/SncTag;

    const-string v1, "tagId"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncTag;->setTagId(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mTag:Lcom/android/email/syncnconnect/utils/SncTag;

    const-string v1, "tagName"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncTag;->setTagName(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mTag:Lcom/android/email/syncnconnect/utils/SncTag;

    const-string v1, "userEndpointId"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncTag;->setUserEndpointId(Ljava/lang/String;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v0, "error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mErrorBundle:Landroid/os/Bundle;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;->mIsErrorResponse:Z

    goto :goto_0
.end method
