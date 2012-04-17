.class public Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "VerifyDeviceXMLParser.java"


# instance fields
.field private mEndpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

.field private mErrorBundle:Landroid/os/Bundle;

.field private mIsErrorResponse:Z

.field private mIsUserEndPoint:Z

.field private mResponseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

.field private mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

.field private mVal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)V
    .locals 2
    .parameter "responseVO"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    .line 22
    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mVal:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mEndpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    .line 26
    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    .line 28
    iput-boolean v1, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mIsUserEndPoint:Z

    .line 30
    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mErrorBundle:Landroid/os/Bundle;

    .line 32
    iput-boolean v1, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mIsErrorResponse:Z

    .line 35
    iput-object p1, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    .line 36
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
    .line 41
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mVal:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 47
    const-string v2, "sncEndpoint"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getEndpointList()Ljava/util/List;

    move-result-object v0

    .line 49
    .local v0, endpointList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mEndpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-virtual {v2, v0}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->setEndpointList(Ljava/util/List;)V

    .line 51
    iput-object v4, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mEndpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    .line 68
    .end local v0           #endpointList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v2, "sncUserEndpoint"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getUserEndpointList()Ljava/util/List;

    move-result-object v1

    .line 55
    .local v1, userEndpointList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncUserEndpoint;>;"
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-virtual {v2, v1}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->setUserEndpointList(Ljava/util/List;)V

    .line 57
    iput-object v4, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    goto :goto_0

    .line 59
    .end local v1           #userEndpointList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncUserEndpoint;>;"
    :cond_2
    const-string v2, "code"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mIsErrorResponse:Z

    if-eqz v2, :cond_3

    .line 60
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const-string v3, "error_code"

    iget-object v4, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mVal:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 61
    :cond_3
    const-string v2, "message"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mIsErrorResponse:Z

    if-eqz v2, :cond_4

    .line 62
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const-string v3, "error_text"

    iget-object v4, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_4
    const-string v2, "error"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mIsErrorResponse:Z

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    iget-object v3, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mErrorBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->setErrorBundle(Landroid/os/Bundle;)V

    .line 65
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mIsErrorResponse:Z

    .line 66
    iput-object v4, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mErrorBundle:Landroid/os/Bundle;

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
    const/4 v3, 0x1

    .line 73
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mVal:Ljava/lang/String;

    .line 74
    const-string v2, "sncEndpoint"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mIsUserEndPoint:Z

    .line 77
    new-instance v2, Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-direct {v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;-><init>()V

    iput-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mEndpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    .line 78
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mEndpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    const-string v3, "provider"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setProvider(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mEndpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    const-string v3, "name"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointName(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mEndpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    const-string v3, "endpointId"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setEndpointId(Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v2, "sncService"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    new-instance v0, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    .line 85
    .local v0, service:Lcom/android/email/syncnconnect/utils/SncService;
    const-string v2, "serviceId"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    .line 86
    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    .line 87
    const-string v2, "isNotified"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setIsNotified(Ljava/lang/String;)V

    .line 89
    iget-boolean v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mIsUserEndPoint:Z

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v1

    .line 91
    .local v1, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setSncServiceList(Ljava/util/List;)V

    goto :goto_0

    .line 94
    .end local v1           #serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    :cond_2
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mEndpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v1

    .line 95
    .restart local v1       #serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mEndpoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;

    invoke-virtual {v2, v1}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->setSncServiceList(Ljava/util/List;)V

    goto :goto_0

    .line 98
    .end local v0           #service:Lcom/android/email/syncnconnect/utils/SncService;
    .end local v1           #serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    :cond_3
    const-string v2, "sncUserEndpoint"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 99
    iput-boolean v3, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mIsUserEndPoint:Z

    .line 101
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->setRegistered(Z)V

    .line 103
    new-instance v2, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-direct {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;-><init>()V

    iput-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    .line 104
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "userName"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setUserName(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "userEndpointId"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setUserEndpointId(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "provider"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setProvider(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "endpointId"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setEndpointId(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "displayOrder"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDisplayOrder(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "accountName"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setAccountName(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "displayName"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDisplayName(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "defaultFlag"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDefaultFlag(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_4
    const-string v2, "error"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mErrorBundle:Landroid/os/Bundle;

    .line 115
    iput-boolean v3, p0, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;->mIsErrorResponse:Z

    goto/16 :goto_0
.end method
