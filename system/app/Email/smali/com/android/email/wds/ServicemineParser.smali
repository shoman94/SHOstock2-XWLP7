.class public Lcom/android/email/wds/ServicemineParser;
.super Ljava/lang/Object;
.source "ServicemineParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/wds/ServicemineParser$1;,
        Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method


# virtual methods
.method public parse(Lorg/xml/sax/InputSource;)Lcom/android/email/wds/EmailProviderWds;
    .locals 10
    .parameter "serviceMineXml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v6, settings:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/email/wds/ServicemineEmailSetting;>;"
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 147
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 149
    .local v4, parser:Ljavax/xml/parsers/SAXParser;
    new-instance v2, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;

    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;-><init>(Lcom/android/email/wds/ServicemineParser;Lcom/android/email/wds/ServicemineParser$1;)V

    .line 150
    .local v2, handler:Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;
    invoke-virtual {v4, p1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 151
    invoke-virtual {v2}, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->getSettings()Ljava/util/Collection;

    move-result-object v6

    .line 152
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/wds/ServicemineEmailSetting;

    .line 154
    .local v5, se:Lcom/android/email/wds/ServicemineEmailSetting;
    const-string v7, "SERVICEMINE-PARSER: "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/email/wds/ServicemineEmailSetting;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v7, "SERVICEMINE-PARSER: "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/android/email/wds/ServicemineEmailSetting;->port:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v7, "SERVICEMINE-PARSER: "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/email/wds/ServicemineEmailSetting;->server:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v7, "SERVICEMINE-PARSER: "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/email/wds/ServicemineEmailSetting;->securityType:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v7, "SERVICEMINE-PARSER: "

    const-string v8, "==========================="

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    .end local v5           #se:Lcom/android/email/wds/ServicemineEmailSetting;
    :cond_0
    new-instance v0, Lcom/android/email/wds/EmailProviderWds;

    invoke-direct {v0, v6}, Lcom/android/email/wds/EmailProviderWds;-><init>(Ljava/util/Collection;)V

    .line 163
    .local v0, emailProvider:Lcom/android/email/wds/EmailProviderWds;
    iget-object v7, v2, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->autoCorrectedDomain:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/email/wds/EmailProviderWds;->autoCorrectedDomain:Ljava/lang/String;

    .line 164
    iget-object v7, v2, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->authNameFormat:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/email/wds/EmailProviderWds;->authNameFormat:Ljava/lang/String;

    .line 166
    return-object v0
.end method
