.class public Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SyncAllXMLParser.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mIsErrorResponse:Z

.field private mResponseVO:Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;

.field private mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

.field private mVal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;)V
    .locals 2
    .parameter "responseVO"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;

    .line 20
    iput-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mErrorBundle:Landroid/os/Bundle;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mIsErrorResponse:Z

    .line 26
    iput-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    .line 29
    iput-object p1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;

    .line 30
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
    .line 35
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    .line 36
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

    .line 41
    const-string v1, "sncServiceInfo"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getSncServiceInfoList()Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, serviceInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncServiceInfo;>;"
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->setSncServiceInfoList(Ljava/util/List;)V

    .line 45
    iput-object v3, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    .line 73
    .end local v0           #serviceInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncServiceInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v1, "jobId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setJobId(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    const-string v1, "operationId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setOperationId(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_3
    const-string v1, "providerId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 51
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setProviderId(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_4
    const-string v1, "providerSrvcDetailId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 53
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setProviderSrvcDetailsId(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_5
    const-string v1, "reqUserEmail"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 55
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setReqUserEmail(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_6
    const-string v1, "returnCode"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 57
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setReturnCode(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_7
    const-string v1, "serviceId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 59
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setServiceId(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_8
    const-string v1, "sourceProviderId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 61
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setSourceProviderId(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_9
    const-string v1, "userEndpointId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 63
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setUserEndpointId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    :cond_a
    const-string v1, "code"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mIsErrorResponse:Z

    if-eqz v1, :cond_b

    .line 65
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const-string v2, "error_code"

    iget-object v3, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 66
    :cond_b
    const-string v1, "message"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mIsErrorResponse:Z

    if-eqz v1, :cond_c

    .line 67
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const-string v2, "error_text"

    iget-object v3, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :cond_c
    const-string v1, "error"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mIsErrorResponse:Z

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mErrorBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->setErrorBundle(Landroid/os/Bundle;)V

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mIsErrorResponse:Z

    .line 71
    iput-object v3, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mErrorBundle:Landroid/os/Bundle;

    goto/16 :goto_0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
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
    .line 78
    const-string v0, "error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mErrorBundle:Landroid/os/Bundle;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mIsErrorResponse:Z

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v0, "sncServiceInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    goto :goto_0
.end method
