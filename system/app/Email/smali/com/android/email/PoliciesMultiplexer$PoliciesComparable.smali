.class public final Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
.super Lcom/android/emailcommon/provider/EmailContent$Policies;
.source "PoliciesMultiplexer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/PoliciesMultiplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PoliciesComparable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/provider/EmailContent$Policies;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent$Policies;-><init>()V

    return-void
.end method

.method private compareBoolean(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I
    .locals 5
    .parameter "another"

    .prologue
    const/4 v3, 0x1

    .line 262
    invoke-virtual {p0}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->getBooleanValue()Z

    move-result v0

    .line 263
    .local v0, a:Z
    invoke-virtual {p1}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->getBooleanValue()Z

    move-result v1

    .line 264
    .local v1, b:Z
    const/4 v2, 0x0

    .line 265
    .local v2, retValue:I
    if-ne v0, v3, :cond_0

    if-nez v1, :cond_0

    .line 266
    const/4 v2, 0x1

    .line 267
    :cond_0
    if-nez v0, :cond_1

    if-ne v1, v3, :cond_1

    .line 268
    const/4 v2, -0x1

    .line 272
    :cond_1
    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v4, "AttachmentsEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v4, "AllowSimpleDevicePassword"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v4, "AllowStorageCard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v4, "AllowCamera"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v4, "AllowWifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v4, "AllowTextMessaging"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v4, "AllowPOPIMAPEmail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v4, "AllowHTMLEmail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v4, "AllowBrowser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v4, "AllowInternetSharing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v4, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v4, "AllowSMIMESoftCerts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v4, "AllowDesktopSync"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v4, "AllowIrDA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 289
    :cond_2
    neg-int v2, v2

    .line 292
    :cond_3
    return v2
.end method

.method private compareInteger(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I
    .locals 7
    .parameter "another"

    .prologue
    const/4 v6, -0x1

    .line 296
    invoke-virtual {p0}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->getIntegerValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 297
    .local v0, a:I
    invoke-virtual {p1}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->getIntegerValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 298
    .local v1, b:I
    const/4 v3, 0x0

    .line 300
    .local v3, retValue:I
    const/4 v2, 0x0

    .line 306
    .local v2, invert:Z
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "MaxInactivityTime"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "MaxDevicePasswordFailedAttempts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "DevicePasswordExpiration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "MaxAttachmentSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "MaxCalendarAgeFilter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "MaxEmailAgeFilter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "MaxEmailBodyTruncationSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "MaxEmailHtmlBodyTruncationSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 317
    :cond_0
    if-nez v1, :cond_1

    .line 318
    const v1, 0x7fffffff

    .line 320
    :cond_1
    if-nez v0, :cond_2

    .line 321
    const v0, 0x7fffffff

    .line 324
    :cond_2
    const/4 v2, 0x1

    .line 349
    :cond_3
    :goto_0
    if-le v0, v1, :cond_b

    .line 350
    const/4 v3, 0x1

    .line 355
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 356
    neg-int v3, v3

    .line 359
    :cond_5
    return v3

    .line 327
    :cond_6
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "RequireSignedSMIMEAlgorithm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "RequireEncryptionSMIMEAlgorithm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 330
    :cond_7
    if-ne v0, v6, :cond_8

    .line 331
    const v0, 0x7fffffff

    .line 334
    :cond_8
    if-ne v1, v6, :cond_9

    .line 335
    const v1, 0x7fffffff

    .line 338
    :cond_9
    const/4 v2, 0x1

    goto :goto_0

    .line 344
    :cond_a
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    const-string v5, "AllowBluetoothMode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 345
    const/4 v2, 0x1

    goto :goto_0

    .line 351
    :cond_b
    if-ge v0, v1, :cond_4

    .line 352
    const/4 v3, -0x1

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I
    .locals 3
    .parameter "another"

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, retVal:I
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 252
    .local v1, tempType:Ljava/lang/String;
    const-string v2, "Boolean"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    invoke-direct {p0, p1}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareBoolean(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v0

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    const-string v2, "Integer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-direct {p0, p1}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareInteger(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 241
    check-cast p1, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v0

    return v0
.end method

.method public getBooleanValue()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getIntegerValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
