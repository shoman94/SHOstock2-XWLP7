.class public Lcom/android/email/syncnconnect/xml/EndpointXMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "EndpointXMLParser.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mIsErrorResponse:Z

.field private mResponseVO:Lcom/android/email/syncnconnect/vo/EndpointResponseVO;

.field private mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

.field private mVal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/email/syncnconnect/vo/EndpointResponseVO;)V
    .locals 2
    .parameter "responseVO"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/EndpointResponseVO;

    .line 21
    iput-object v1, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mVal:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mErrorBundle:Landroid/os/Bundle;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mIsErrorResponse:Z

    .line 27
    iput-object v1, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    .line 30
    iput-object p1, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/EndpointResponseVO;

    .line 31
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
    .line 36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mVal:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 42
    const-string v0, "sncEndpoint"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/EndpointResponseVO;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->setSncUserEndpoint(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V

    .line 44
    iput-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v0, "code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mIsErrorResponse:Z

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const-string v1, "error_code"

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mVal:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 47
    :cond_2
    const-string v0, "message"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mIsErrorResponse:Z

    if-eqz v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const-string v1, "error_text"

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_3
    const-string v0, "error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mIsErrorResponse:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/EndpointResponseVO;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mErrorBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->setErrorBundle(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mIsErrorResponse:Z

    .line 52
    iput-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mErrorBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
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
    const-string v2, "sncEndpoint"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    new-instance v2, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-direct {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;-><init>()V

    iput-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    .line 61
    const-string v2, "success"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    const-string v2, "email"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "email"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setUserName(Ljava/lang/String;)V

    .line 64
    :cond_0
    const-string v2, "userName"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "userName"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setUserName(Ljava/lang/String;)V

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "userEndpointId"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setUserEndpointId(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "endpointId"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setEndpointId(Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "displayOrder"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDisplayOrder(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "accountName"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setAccountName(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "displayName"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDisplayName(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "defaultFlag"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDefaultFlag(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/EndpointResponseVO;

    iget-object v3, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->setSncUserEndpoint(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V

    .line 90
    :cond_2
    :goto_0
    return-void

    .line 75
    :cond_3
    const-string v2, "sncService"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    new-instance v0, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    .line 78
    .local v0, service:Lcom/android/email/syncnconnect/utils/SncService;
    const-string v2, "serviceId"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    .line 79
    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    .line 80
    const-string v2, "isNotified"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setIsNotified(Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v1

    .line 83
    .local v1, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setSncServiceList(Ljava/util/List;)V

    goto :goto_0

    .line 86
    .end local v0           #service:Lcom/android/email/syncnconnect/utils/SncService;
    .end local v1           #serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    :cond_4
    const-string v2, "error"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mErrorBundle:Landroid/os/Bundle;

    .line 88
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;->mIsErrorResponse:Z

    goto :goto_0
.end method
