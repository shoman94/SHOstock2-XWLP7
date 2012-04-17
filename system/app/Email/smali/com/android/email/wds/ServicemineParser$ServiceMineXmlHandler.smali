.class Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ServicemineParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/wds/ServicemineParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceMineXmlHandler"
.end annotation


# instance fields
.field authNameFormat:Ljava/lang/String;

.field autoCorrectedDomain:Ljava/lang/String;

.field characteristics:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field characters:Ljava/lang/StringBuffer;

.field currentSetting:Lcom/android/email/wds/ServicemineEmailSetting;

.field settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/wds/ServicemineEmailSetting;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/email/wds/ServicemineParser;


# direct methods
.method private constructor <init>(Lcom/android/email/wds/ServicemineParser;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 169
    iput-object p1, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->this$0:Lcom/android/email/wds/ServicemineParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->settings:Ljava/util/Map;

    .line 172
    iput-object v1, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->characters:Ljava/lang/StringBuffer;

    .line 174
    iput-object v1, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->autoCorrectedDomain:Ljava/lang/String;

    .line 175
    const-string v0, "$user"

    iput-object v0, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->authNameFormat:Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->characteristics:Ljava/util/Stack;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/wds/ServicemineParser;Lcom/android/email/wds/ServicemineParser$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;-><init>(Lcom/android/email/wds/ServicemineParser;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
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
    .line 180
    iget-object v0, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->characters:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->characters:Ljava/lang/StringBuffer;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->characters:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 183
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 225
    move-object v0, p3

    .line 226
    .local v0, ourName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    if-ne v0, v1, :cond_1

    .line 227
    :cond_0
    move-object v0, p2

    .line 232
    :cond_1
    const-string v1, "configuration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    iget-object v1, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->settings:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->currentSetting:Lcom/android/email/wds/ServicemineEmailSetting;

    iget-object v2, v2, Lcom/android/email/wds/ServicemineEmailSetting;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->currentSetting:Lcom/android/email/wds/ServicemineEmailSetting;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iput-object v4, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->currentSetting:Lcom/android/email/wds/ServicemineEmailSetting;

    .line 254
    :cond_2
    :goto_0
    iput-object v4, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->characters:Ljava/lang/StringBuffer;

    .line 255
    return-void

    .line 236
    :cond_3
    const-string v1, "protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 238
    iget-object v1, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->currentSetting:Lcom/android/email/wds/ServicemineEmailSetting;

    iget-object v2, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->characters:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/wds/ServicemineEmailSetting;->setProtocol(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_4
    const-string v1, "encryption-type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 241
    iget-object v1, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->currentSetting:Lcom/android/email/wds/ServicemineEmailSetting;

    iget-object v2, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->characters:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/wds/ServicemineEmailSetting;->setSecurityType(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_5
    const-string v1, "characteristic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 244
    iget-object v1, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->characteristics:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 245
    :cond_6
    const-string v1, "lookup-domain"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 247
    iget-object v1, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->characters:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->autoCorrectedDomain:Ljava/lang/String;

    goto :goto_0

    .line 248
    :cond_7
    const-string v1, "aauthname-format"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    const-string v1, "email-address"

    iget-object v2, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->characters:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    const-string v1, "$email"

    iput-object v1, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->authNameFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/email/wds/ServicemineEmailSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->settings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 188
    move-object v1, p3

    .line 189
    .local v1, ourName:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    if-ne v1, v3, :cond_1

    .line 190
    :cond_0
    move-object v1, p2

    .line 192
    :cond_1
    const-string v3, "configuration"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 194
    const-string v3, "id"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, id:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->settings:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/wds/ServicemineEmailSetting;

    iput-object v3, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->currentSetting:Lcom/android/email/wds/ServicemineEmailSetting;

    .line 196
    const-string v3, "email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->currentSetting:Lcom/android/email/wds/ServicemineEmailSetting;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v3, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->currentSetting:Lcom/android/email/wds/ServicemineEmailSetting;

    if-nez v3, :cond_2

    .line 198
    new-instance v3, Lcom/android/email/wds/ServicemineEmailSetting;

    invoke-direct {v3}, Lcom/android/email/wds/ServicemineEmailSetting;-><init>()V

    iput-object v3, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->currentSetting:Lcom/android/email/wds/ServicemineEmailSetting;

    .line 199
    :cond_2
    const-string v3, "email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->currentSetting:Lcom/android/email/wds/ServicemineEmailSetting;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v3, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->currentSetting:Lcom/android/email/wds/ServicemineEmailSetting;

    iput-object v0, v3, Lcom/android/email/wds/ServicemineEmailSetting;->id:Ljava/lang/String;

    .line 220
    .end local v0           #id:Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 201
    :cond_4
    const-string v3, "characteristic"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 203
    iget-object v3, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->characteristics:Ljava/util/Stack;

    const-string v4, "type"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_5
    const-string v3, "parm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 205
    const-string v3, "name"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, parmType:Ljava/lang/String;
    const-string v3, "ADDR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "APPADDR"

    iget-object v4, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->characteristics:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 210
    iget-object v3, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->currentSetting:Lcom/android/email/wds/ServicemineEmailSetting;

    const-string v4, "value"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/email/wds/ServicemineEmailSetting;->server:Ljava/lang/String;

    goto :goto_0

    .line 211
    :cond_6
    const-string v3, "PORTNBR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "PORT"

    iget-object v4, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->characteristics:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 215
    iget-object v3, p0, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->currentSetting:Lcom/android/email/wds/ServicemineEmailSetting;

    const-string v4, "value"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/android/email/wds/ServicemineEmailSetting;->port:I

    goto :goto_0

    .line 217
    .end local v2           #parmType:Ljava/lang/String;
    :cond_7
    const-string v3, "error"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 218
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string v4, "Error tag encountered"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
