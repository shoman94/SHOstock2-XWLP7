.class public Lcom/android/mms/MmsConfig;
.super Ljava/lang/Object;
.source "MmsConfig.java"


# static fields
.field public static SMS_DB_COUNT:I

.field private static mAliasEnabled:Z

.field private static mAliasRuleMaxChars:I

.field private static mAliasRuleMinChars:I

.field private static mAllowAttachAudio:Z

.field private static mAllowSplitBarMove:Z

.field private static mCallbackOption:Z

.field private static mComposeMaxLengthLimit:I

.field private static mDefaultMMSMessagesPerThread:I

.field private static mDefaultSMSMessagesPerThread:I

.field private static mDisableEndterKey:I

.field private static mDisableSmsSettingNetworkLock:I

.field private static mEmailGateway:Ljava/lang/String;

.field private static mEnableAuthMdn:Z

.field private static mEnableEmailAndSegmentedSms:Z

.field private static mEnablePrefixFwd:Z

.field private static mEnableSaveEmptyRecipient:Z

.field private static mEnableSignature:Z

.field private static mHttpParams:Ljava/lang/String;

.field private static mHttpParamsLine1Key:Ljava/lang/String;

.field private static mHttpSocketTimeout:I

.field private static mInputModeAuto:I

.field private static mInternational_SMS_Guard:I

.field private static mMaxImageHeight:I

.field private static mMaxImageHeight_HighResolution:I

.field private static mMaxImageWidth:I

.field private static mMaxImageWidth_HighResolution:I

.field private static mMaxMessageCountPerThread:I

.field private static mMaxMessageSize:I

.field private static mMaxMessageSize_mir:I

.field private static mMaxMessageSize_tel:I

.field private static mMaxSizeScaleForPendingMmsAllowed:I

.field private static mMaxTextViewSize:I

.field private static mMinMessageCountPerThread:I

.field private static mMinimumSlideElementDuration:I

.field private static mMmsEnabled:I

.field private static mMmsHeaderSize:I

.field private static mNotifyWapMMSC:Z

.field private static mNotifyWapMMSC_Telefonica:Z

.field private static mOptionalFieldAttendance:Z

.field private static mRecipientLimit:I

.field private static mSavePdu:Z

.field private static mScreenOnOffOption:Z

.field private static mSendAnimationJpn:I

.field private static mSignatureSettings:Z

.field private static mSmsExpiredDate:I

.field private static mSmsToMmsTextThreshold:I

.field private static mSubjectSMS:I

.field private static mSupportEmoji:I

.field private static mSupportHD:Z

.field private static mTransIdEnabled:Z

.field private static mTransactionLoggable:Z

.field private static mUSAATTUaProfUrl:Ljava/lang/String;

.field private static mUSAATTUserAgent:Ljava/lang/String;

.field private static mUSATMOUaProfUrl:Ljava/lang/String;

.field private static mUSATMOUserAgent:Ljava/lang/String;

.field private static mUaDebugSet:Z

.field private static mUaProfTagName:Ljava/lang/String;

.field private static mUaProfUrl:Ljava/lang/String;

.field private static mUaProfUrlDebug:Ljava/lang/String;

.field private static mUserAgent:Ljava/lang/String;

.field private static mUserAgentDebug:Ljava/lang/String;

.field private static mVibrationOption:Z

.field private static mWapPush:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x1388

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 46
    sput v2, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 67
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    .line 69
    sput v3, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    .line 71
    const v0, 0x4b000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    .line 72
    const v0, 0x96000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize_tel:I

    .line 73
    const v0, 0xfa000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize_mir:I

    .line 75
    const/16 v0, 0x1400

    sput v0, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    .line 77
    const-string v0, "Android-Mms/2.0"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    .line 78
    const-string v0, "Android-Mms/2.0"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUSAATTUserAgent:Ljava/lang/String;

    .line 79
    const-string v0, "Android-Mms/2.0"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUSATMOUserAgent:Ljava/lang/String;

    .line 80
    const-string v0, "x-wap-profile"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    .line 82
    sput-object v1, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    .line 83
    sput-object v1, Lcom/android/mms/MmsConfig;->mUSAATTUaProfUrl:Ljava/lang/String;

    .line 84
    sput-object v1, Lcom/android/mms/MmsConfig;->mUSATMOUaProfUrl:Ljava/lang/String;

    .line 85
    sput-object v1, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    .line 87
    sput-object v1, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    move-object v0, v1

    .line 89
    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    .line 91
    const/16 v0, 0x1e0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    .line 93
    const/16 v0, 0x280

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    .line 95
    const/16 v0, 0x4b0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight_HighResolution:I

    .line 97
    const/16 v0, 0x640

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth_HighResolution:I

    .line 99
    const v0, 0x7fffffff

    sput v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 101
    const/16 v0, 0xc8

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    .line 103
    const/16 v0, 0x14

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    .line 105
    sput v4, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    .line 107
    sput v5, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    .line 109
    const/4 v0, 0x4

    sput v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    .line 111
    const v0, 0xea60

    sput v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    .line 113
    const/4 v0, 0x5

    sput v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    .line 115
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    .line 116
    sput-boolean v3, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC_Telefonica:Z

    .line 118
    sput-boolean v3, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    .line 121
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mTransactionLoggable:Z

    .line 123
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mSavePdu:Z

    .line 125
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    .line 127
    sput-object v1, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    .line 129
    sput-object v1, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    .line 132
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mOptionalFieldAttendance:Z

    .line 138
    const/16 v0, 0xa

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    .line 141
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    .line 143
    sput v4, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    .line 145
    const/16 v0, 0x30

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    .line 148
    sput v2, Lcom/android/mms/MmsConfig;->mDisableEndterKey:I

    .line 150
    sput v2, Lcom/android/mms/MmsConfig;->mComposeMaxLengthLimit:I

    .line 152
    sput v2, Lcom/android/mms/MmsConfig;->mInputModeAuto:I

    .line 154
    sput v2, Lcom/android/mms/MmsConfig;->mSmsExpiredDate:I

    .line 156
    sput v2, Lcom/android/mms/MmsConfig;->mSendAnimationJpn:I

    .line 158
    sput v3, Lcom/android/mms/MmsConfig;->mWapPush:I

    .line 160
    sput v2, Lcom/android/mms/MmsConfig;->mDisableSmsSettingNetworkLock:I

    .line 162
    sput v2, Lcom/android/mms/MmsConfig;->mSupportEmoji:I

    .line 164
    sput v3, Lcom/android/mms/MmsConfig;->mSubjectSMS:I

    .line 166
    sput v3, Lcom/android/mms/MmsConfig;->mInternational_SMS_Guard:I

    .line 170
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mAllowSplitBarMove:Z

    .line 171
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mSupportHD:Z

    .line 173
    sput v5, Lcom/android/mms/MmsConfig;->mMaxTextViewSize:I

    .line 175
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnablePrefixFwd:Z

    .line 176
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableAuthMdn:Z

    .line 177
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableSaveEmptyRecipient:Z

    .line 178
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableEmailAndSegmentedSms:Z

    .line 179
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableSignature:Z

    .line 182
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mScreenOnOffOption:Z

    .line 183
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mSignatureSettings:Z

    .line 184
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mVibrationOption:Z

    .line 185
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mCallbackOption:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 573
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 577
    :cond_1
    if-eq v0, v2, :cond_2

    .line 578
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 581
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 582
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 585
    :cond_3
    return-void
.end method

.method public static getAliasMaxChars()I
    .locals 1

    .prologue
    .line 389
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    return v0
.end method

.method public static getAliasMinChars()I
    .locals 1

    .prologue
    .line 385
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    return v0
.end method

.method public static getAllowAttachAudio()Z
    .locals 1

    .prologue
    .line 393
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    return v0
.end method

.method public static getCallbackOption()Z
    .locals 1

    .prologue
    .line 406
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mCallbackOption:Z

    return v0
.end method

.method public static getComposeMaxLengthLimit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 485
    sget v1, Lcom/android/mms/MmsConfig;->mComposeMaxLengthLimit:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultMMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 339
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    return v0
.end method

.method public static getDefaultSMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 335
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    return v0
.end method

.method public static getDisableEndterKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 479
    sget v1, Lcom/android/mms/MmsConfig;->mDisableEndterKey:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEmailGateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    return-object v0
.end method

.method public static final getEnableAuthMdn()Z
    .locals 1

    .prologue
    .line 846
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableAuthMdn:Z

    return v0
.end method

.method public static final getEnableEmailAndSegmentedSms()Z
    .locals 1

    .prologue
    .line 854
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableEmailAndSegmentedSms:Z

    return v0
.end method

.method public static final getEnablePrefixFwd()Z
    .locals 1

    .prologue
    .line 842
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnablePrefixFwd:Z

    return v0
.end method

.method public static final getEnableSaveEmptyRecipient()Z
    .locals 1

    .prologue
    .line 850
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSaveEmptyRecipient:Z

    return v0
.end method

.method public static final getEnableSignature()Z
    .locals 1

    .prologue
    .line 858
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSignature:Z

    return v0
.end method

.method public static getEnableSmsToMmsThreshold()Z
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public static getHttpParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpParamsLine1Key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpSocketTimeout()I
    .locals 1

    .prologue
    .line 362
    sget v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    return v0
.end method

.method public static getInputModeAuto()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 491
    sget v1, Lcom/android/mms/MmsConfig;->mInputModeAuto:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInternational_SMS_Guard()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 533
    sget v1, Lcom/android/mms/MmsConfig;->mInternational_SMS_Guard:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMaxContentsSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 214
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, cscCode:Ljava/lang/String;
    const-string v1, "XEC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "TNZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 218
    :cond_0
    sget v1, Lcom/android/mms/MmsConfig;->mMaxMessageSize_tel:I

    sget v2, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    sub-int/2addr v1, v2

    .line 222
    :goto_0
    return v1

    .line 219
    :cond_1
    const-string v1, "MIR"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 220
    sget v1, Lcom/android/mms/MmsConfig;->mMaxMessageSize_mir:I

    sget v2, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 222
    :cond_2
    sget v1, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    sget v2, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public static getMaxImageHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 283
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, cscCode:Ljava/lang/String;
    const-string v1, "XEC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "SFR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "MIR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TNZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "NEE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TLA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "COV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "HTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "VDS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "NCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "ODK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TSF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "ELS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "DNF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDTFeature()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isORGFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    :cond_0
    sget v1, Lcom/android/mms/MmsConfig;->mMaxImageHeight_HighResolution:I

    .line 303
    :goto_0
    return v1

    :cond_1
    sget v1, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    goto :goto_0
.end method

.method public static getMaxImageWidth()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 307
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, cscCode:Ljava/lang/String;
    const-string v1, "XEC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "SFR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "MIR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TNZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "NEE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TLA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "COV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "HTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "VDS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "NCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "ODK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TSF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "ELS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "DNF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDTFeature()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isORGFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    :cond_0
    sget v1, Lcom/android/mms/MmsConfig;->mMaxImageWidth_HighResolution:I

    .line 327
    :goto_0
    return v1

    :cond_1
    sget v1, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    goto :goto_0
.end method

.method public static getMaxMessageCountPerThread()I
    .locals 1

    .prologue
    .line 347
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    return v0
.end method

.method public static getMaxMessageSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 202
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, cscCode:Ljava/lang/String;
    const-string v1, "XEC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "TNZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 206
    :cond_0
    sget v1, Lcom/android/mms/MmsConfig;->mMaxMessageSize_tel:I

    .line 210
    :goto_0
    return v1

    .line 207
    :cond_1
    const-string v1, "MIR"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 208
    sget v1, Lcom/android/mms/MmsConfig;->mMaxMessageSize_mir:I

    goto :goto_0

    .line 210
    :cond_2
    sget v1, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto :goto_0
.end method

.method public static getMaxSizeScaleForPendingMmsAllowed()I
    .locals 1

    .prologue
    .line 377
    sget v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    return v0
.end method

.method public static final getMaxTextViewSize()I
    .locals 1

    .prologue
    .line 838
    sget v0, Lcom/android/mms/MmsConfig;->mMaxTextViewSize:I

    return v0
.end method

.method public static getMinMessageCountPerThread()I
    .locals 1

    .prologue
    .line 343
    sget v0, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    return v0
.end method

.method public static getMinimumSlideElementDuration()I
    .locals 1

    .prologue
    .line 366
    sget v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    return v0
.end method

.method public static getMmsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 198
    sget v1, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNetWorkLock()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 515
    sget v1, Lcom/android/mms/MmsConfig;->mDisableSmsSettingNetworkLock:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNotifyWapMMSC()Z
    .locals 2

    .prologue
    .line 370
    const-string v0, "XEC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 371
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC_Telefonica:Z

    .line 373
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    goto :goto_0
.end method

.method public static getOptionalFieldAttendance()Z
    .locals 1

    .prologue
    .line 459
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mOptionalFieldAttendance:Z

    return v0
.end method

.method public static getRecipientLimit()I
    .locals 1

    .prologue
    .line 331
    sget v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    return v0
.end method

.method public static getSavePduFiles()Z
    .locals 1

    .prologue
    .line 425
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mSavePdu:Z

    return v0
.end method

.method public static getScreenOnOffOption()Z
    .locals 1

    .prologue
    .line 397
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mScreenOnOffOption:Z

    return v0
.end method

.method public static getSendAnimationJpn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 503
    sget v1, Lcom/android/mms/MmsConfig;->mSendAnimationJpn:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSignatureSettings()Z
    .locals 1

    .prologue
    .line 400
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mSignatureSettings:Z

    return v0
.end method

.method public static getSmsExpiredDate()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 497
    sget v1, Lcom/android/mms/MmsConfig;->mSmsExpiredDate:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSmsToMmsTextThreshold()I
    .locals 1

    .prologue
    .line 351
    sget v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    return v0
.end method

.method public static getSubjectSMS()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 527
    sget v1, Lcom/android/mms/MmsConfig;->mSubjectSMS:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSupportEmoji()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 521
    sget v1, Lcom/android/mms/MmsConfig;->mSupportEmoji:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTransIdEnabled()Z
    .locals 1

    .prologue
    .line 231
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    return v0
.end method

.method public static getTransactionLoggable()Z
    .locals 1

    .prologue
    .line 414
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mTransactionLoggable:Z

    return v0
.end method

.method public static getUaProfTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUaProfUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    .line 259
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    .line 241
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getVibrationOption()Z
    .locals 1

    .prologue
    .line 403
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mVibrationOption:Z

    return v0
.end method

.method public static getWapPush()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 509
    sget v1, Lcom/android/mms/MmsConfig;->mWapPush:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 188
    const-string v1, "Mms/MmsConfig"

    const-string v2, "MmsConfig.init()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadMmsSettings(Landroid/content/Context;)V

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.debugsettingready"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    return-void
.end method

.method public static isAliasEnabled()Z
    .locals 1

    .prologue
    .line 381
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    return v0
.end method

.method public static isDTFeature()Z
    .locals 2

    .prologue
    .line 538
    const-string v0, "DTM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DTR"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TNL"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMZ"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MAX"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TRG"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CRO"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMS"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MBM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TPL"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "COS"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMT"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMH"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    :cond_0
    const/4 v0, 0x1

    .line 554
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMIRSales()Z
    .locals 2

    .prologue
    .line 823
    const-string v0, "MIR"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    const/4 v0, 0x1

    .line 826
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isORGFeature()Z
    .locals 2

    .prologue
    .line 558
    const-string v0, "AMN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FTM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IDE"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ORO"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ONE"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ORA"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    :cond_0
    const/4 v0, 0x1

    .line 566
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadMmsSettings(Landroid/content/Context;)V
    .locals 20
    .parameter "context"

    .prologue
    .line 597
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f050002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 598
    .local v10, parser:Landroid/content/res/XmlResourceParser;
    const-string v17, "Mms/MmsConfig"

    const-string v18, "[loadMmsSettings] "

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :try_start_0
    const-string v17, "mms_config"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/android/mms/MmsConfig;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 603
    :cond_0
    :goto_0
    invoke-static {v10}, Lcom/android/mms/MmsConfig;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 604
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v13

    .line 605
    .local v13, tag:Ljava/lang/String;
    if-nez v13, :cond_2

    .line 805
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 808
    .end local v13           #tag:Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    .line 810
    .local v7, errorStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v17

    if-eqz v17, :cond_1

    sget-object v17, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    if-nez v17, :cond_1

    .line 811
    const-string v7, "uaProfUrl"

    .line 814
    :cond_1
    if-eqz v7, :cond_4a

    .line 815
    const-string v17, "MmsConfig.loadMmsSettings mms_config.xml missing %s setting"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 817
    .local v6, err:Ljava/lang/String;
    const-string v17, "Mms/MmsConfig"

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    new-instance v17, Lcom/android/mms/ContentRestrictionException;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 608
    .end local v6           #err:Ljava/lang/String;
    .end local v7           #errorStr:Ljava/lang/String;
    .restart local v13       #tag:Ljava/lang/String;
    :cond_2
    const/16 v17, 0x0

    :try_start_1
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    .line 609
    .local v9, name:Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    .line 610
    .local v16, value:Ljava/lang/String;
    const/4 v14, 0x0

    .line 611
    .local v14, text:Ljava/lang/String;
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 612
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v14

    .line 616
    :cond_3
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 617
    .local v11, s:Ljava/lang/StringBuffer;
    const-string v17, "Mms/MmsConfig"

    const-string v18, "tag: "

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, " value: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 621
    const-string v17, "bool"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_27

    .line 623
    const-string v17, "enabledMMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 624
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x1

    :goto_2
    sput v17, Lcom/android/mms/MmsConfig;->mMmsEnabled:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 798
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #s:Ljava/lang/StringBuffer;
    .end local v13           #tag:Ljava/lang/String;
    .end local v14           #text:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 799
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v17, "Mms/MmsConfig"

    const-string v18, "loadMmsSettings caught "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 805
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 624
    .end local v5           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9       #name:Ljava/lang/String;
    .restart local v11       #s:Ljava/lang/StringBuffer;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v14       #text:Ljava/lang/String;
    .restart local v16       #value:Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    goto :goto_2

    .line 625
    :cond_5
    :try_start_3
    const-string v17, "enabledTransID"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 626
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 800
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #s:Ljava/lang/StringBuffer;
    .end local v13           #tag:Ljava/lang/String;
    .end local v14           #text:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 801
    .local v5, e:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v17, "Mms/MmsConfig"

    const-string v18, "loadMmsSettings caught "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 805
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 627
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #name:Ljava/lang/String;
    .restart local v11       #s:Ljava/lang/StringBuffer;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v14       #text:Ljava/lang/String;
    .restart local v16       #value:Ljava/lang/String;
    :cond_6
    :try_start_5
    const-string v17, "enabledNotifyWapMMSC"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 628
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 802
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #s:Ljava/lang/StringBuffer;
    .end local v13           #tag:Ljava/lang/String;
    .end local v14           #text:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 803
    .local v5, e:Ljava/io/IOException;
    :try_start_6
    const-string v17, "Mms/MmsConfig"

    const-string v18, "loadMmsSettings caught "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 805
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 629
    .end local v5           #e:Ljava/io/IOException;
    .restart local v9       #name:Ljava/lang/String;
    .restart local v11       #s:Ljava/lang/StringBuffer;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v14       #text:Ljava/lang/String;
    .restart local v16       #value:Ljava/lang/String;
    :cond_7
    :try_start_7
    const-string v17, "aliasEnabled"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 630
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 805
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #s:Ljava/lang/StringBuffer;
    .end local v13           #tag:Ljava/lang/String;
    .end local v14           #text:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :catchall_0
    move-exception v17

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    throw v17

    .line 631
    .restart local v9       #name:Ljava/lang/String;
    .restart local v11       #s:Ljava/lang/StringBuffer;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v14       #text:Ljava/lang/String;
    .restart local v16       #value:Ljava/lang/String;
    :cond_8
    :try_start_8
    const-string v17, "allowAttachAudio"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 632
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    goto/16 :goto_0

    .line 633
    :cond_9
    const-string v17, "disableEndterKey"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 634
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x1

    :goto_3
    sput v17, Lcom/android/mms/MmsConfig;->mDisableEndterKey:I

    goto/16 :goto_0

    :cond_a
    const/16 v17, 0x0

    goto :goto_3

    .line 635
    :cond_b
    const-string v17, "composeMaxLengthLimit"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 636
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/16 v17, 0x1

    :goto_4
    sput v17, Lcom/android/mms/MmsConfig;->mComposeMaxLengthLimit:I

    goto/16 :goto_0

    :cond_c
    const/16 v17, 0x0

    goto :goto_4

    .line 637
    :cond_d
    const-string v17, "inputModeAuto"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 638
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/16 v17, 0x1

    :goto_5
    sput v17, Lcom/android/mms/MmsConfig;->mInputModeAuto:I

    goto/16 :goto_0

    :cond_e
    const/16 v17, 0x0

    goto :goto_5

    .line 639
    :cond_f
    const-string v17, "smsExpiryDate"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 640
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/16 v17, 0x1

    :goto_6
    sput v17, Lcom/android/mms/MmsConfig;->mSmsExpiredDate:I

    goto/16 :goto_0

    :cond_10
    const/16 v17, 0x0

    goto :goto_6

    .line 641
    :cond_11
    const-string v17, "sendAnimationJpn"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 642
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/16 v17, 0x1

    :goto_7
    sput v17, Lcom/android/mms/MmsConfig;->mSendAnimationJpn:I

    goto/16 :goto_0

    :cond_12
    const/16 v17, 0x0

    goto :goto_7

    .line 643
    :cond_13
    const-string v17, "wapPush"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 644
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    const/16 v17, 0x1

    :goto_8
    sput v17, Lcom/android/mms/MmsConfig;->mWapPush:I

    goto/16 :goto_0

    :cond_14
    const/16 v17, 0x0

    goto :goto_8

    .line 645
    :cond_15
    const-string v17, "disable_sms_setting_networklock"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 646
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    const/16 v17, 0x1

    :goto_9
    sput v17, Lcom/android/mms/MmsConfig;->mDisableSmsSettingNetworkLock:I

    goto/16 :goto_0

    :cond_16
    const/16 v17, 0x0

    goto :goto_9

    .line 647
    :cond_17
    const-string v17, "supportEmoji"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 648
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_18

    const/16 v17, 0x1

    :goto_a
    sput v17, Lcom/android/mms/MmsConfig;->mSupportEmoji:I

    goto/16 :goto_0

    :cond_18
    const/16 v17, 0x0

    goto :goto_a

    .line 649
    :cond_19
    const-string v17, "supportHD"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 650
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mSupportHD:Z

    goto/16 :goto_0

    .line 651
    :cond_1a
    const-string v17, "enable_prefix_fwd"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 652
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mEnablePrefixFwd:Z

    goto/16 :goto_0

    .line 653
    :cond_1b
    const-string v17, "enable_auth_mdn"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 654
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mEnableAuthMdn:Z

    goto/16 :goto_0

    .line 655
    :cond_1c
    const-string v17, "enable_save_empty_recipient"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 656
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mEnableSaveEmptyRecipient:Z

    goto/16 :goto_0

    .line 657
    :cond_1d
    const-string v17, "enable_screen_onoff_option"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 658
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mScreenOnOffOption:Z

    goto/16 :goto_0

    .line 659
    :cond_1e
    const-string v17, "enable_signature_settings"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 660
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mSignatureSettings:Z

    goto/16 :goto_0

    .line 661
    :cond_1f
    const-string v17, "enable_vibration_option"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 662
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mVibrationOption:Z

    goto/16 :goto_0

    .line 663
    :cond_20
    const-string v17, "enable_email_segmented_sms"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    .line 664
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mEnableEmailAndSegmentedSms:Z

    goto/16 :goto_0

    .line 665
    :cond_21
    const-string v17, "enable_signature"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 666
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mEnableSignature:Z

    goto/16 :goto_0

    .line 667
    :cond_22
    const-string v17, "enable_callback_option"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 668
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    sput-boolean v17, Lcom/android/mms/MmsConfig;->mCallbackOption:Z

    goto/16 :goto_0

    .line 669
    :cond_23
    const-string v17, "SubjectSMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_25

    .line 670
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_24

    const/16 v17, 0x1

    :goto_b
    sput v17, Lcom/android/mms/MmsConfig;->mSubjectSMS:I

    goto/16 :goto_0

    :cond_24
    const/16 v17, 0x0

    goto :goto_b

    .line 671
    :cond_25
    const-string v17, "International_SMS_Guard"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 672
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_26

    const/16 v17, 0x1

    :goto_c
    sput v17, Lcom/android/mms/MmsConfig;->mInternational_SMS_Guard:I

    goto/16 :goto_0

    :cond_26
    const/16 v17, 0x0

    goto :goto_c

    .line 674
    :cond_27
    const-string v17, "int"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3c

    .line 676
    const-string v17, "maxMessageSize"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2a

    .line 677
    const-string v17, "XEC"

    const-string v18, "ro.csc.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_28

    const-string v17, "TEL"

    const-string v18, "ro.csc.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_28

    const-string v17, "TNZ"

    const-string v18, "ro.csc.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_29

    .line 680
    :cond_28
    sget v17, Lcom/android/mms/MmsConfig;->mMaxMessageSize_tel:I

    sput v17, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto/16 :goto_0

    .line 682
    :cond_29
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto/16 :goto_0

    .line 683
    :cond_2a
    const-string v17, "ATTmaxMessageSize"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2b

    .line 685
    :cond_2b
    const-string v17, "TMOmaxMessageSize"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2c

    .line 687
    :cond_2c
    const-string v17, "mmsHeaderSize"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2d

    .line 688
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    goto/16 :goto_0

    .line 689
    :cond_2d
    const-string v17, "maxImageHeight"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2e

    .line 690
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    goto/16 :goto_0

    .line 691
    :cond_2e
    const-string v17, "maxImageWidth"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2f

    .line 692
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    goto/16 :goto_0

    .line 693
    :cond_2f
    const-string v17, "defaultSMSMessagesPerThread"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_30

    .line 694
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    goto/16 :goto_0

    .line 695
    :cond_30
    const-string v17, "defaultMMSMessagesPerThread"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_31

    .line 696
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    goto/16 :goto_0

    .line 697
    :cond_31
    const-string v17, "minMessageCountPerThread"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_32

    .line 698
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    goto/16 :goto_0

    .line 699
    :cond_32
    const-string v17, "maxMessageCountPerThread"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_33

    .line 700
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    goto/16 :goto_0

    .line 701
    :cond_33
    const-string v17, "smsToMmsTextThreshold"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_34

    .line 702
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 703
    .local v4, defaultThreshold:I
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 705
    .local v12, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v17, "csc_pref_key_threshold"

    move-object/from16 v0, v17

    invoke-interface {v12, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    .line 707
    const-string v17, "Mms/MmsConfig"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[loadMmsSettings] mSmsToMmsTextThreshold= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 709
    .end local v4           #defaultThreshold:I
    .end local v12           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_34
    const-string v17, "recipientLimit"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_36

    .line 710
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 711
    .local v3, defaultMax:I
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 713
    .restart local v12       #sharedPrefs:Landroid/content/SharedPreferences;
    const-string v17, "csc_pref_key_max_recipient"

    move-object/from16 v0, v17

    invoke-interface {v12, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 715
    sget v17, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    if-gez v17, :cond_35

    .line 716
    const v17, 0x7fffffff

    sput v17, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 718
    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "MmsRecipientLimit"

    sget v19, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 720
    const-string v17, "Mms/MmsConfig"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[loadMmsSettings] mRecipientLimit= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 721
    .end local v3           #defaultMax:I
    .end local v12           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_36
    const-string v17, "httpSocketTimeout"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_37

    .line 722
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    goto/16 :goto_0

    .line 723
    :cond_37
    const-string v17, "minimumSlideElementDuration"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_38

    .line 724
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    goto/16 :goto_0

    .line 725
    :cond_38
    const-string v17, "maxSizeScaleForPendingMmsAllowed"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_39

    .line 726
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    goto/16 :goto_0

    .line 727
    :cond_39
    const-string v17, "aliasMinChars"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3a

    .line 728
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    goto/16 :goto_0

    .line 729
    :cond_3a
    const-string v17, "aliasMaxChars"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3b

    .line 730
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    goto/16 :goto_0

    .line 731
    :cond_3b
    const-string v17, "mMaxTextViewSize"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 732
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    sput v17, Lcom/android/mms/MmsConfig;->mMaxTextViewSize:I

    goto/16 :goto_0

    .line 734
    :cond_3c
    const-string v17, "string"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 736
    const-string v17, "userAgent"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3e

    .line 737
    const-string v2, "SAMSUNG-"

    .line 738
    .local v2, baseurl:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 739
    .local v15, uap:Ljava/lang/StringBuffer;
    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 740
    const-string v17, "REL"

    sget-object v18, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3d

    .line 741
    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 742
    .local v8, model:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_3d

    .line 743
    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 744
    const-string v17, "-Mms/2.0"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 747
    .end local v8           #model:Ljava/lang/String;
    :cond_3d
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    .line 748
    sget-object v17, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    sput-object v17, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    goto/16 :goto_0

    .line 749
    .end local v2           #baseurl:Ljava/lang/String;
    .end local v15           #uap:Ljava/lang/StringBuffer;
    :cond_3e
    const-string v17, "USAATTUserAgent"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3f

    .line 756
    :cond_3f
    const-string v17, "USATMOUserAgent"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_40

    .line 763
    :cond_40
    const-string v17, "uaProfTagName"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_41

    .line 764
    sput-object v14, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    goto/16 :goto_0

    .line 765
    :cond_41
    const-string v17, "uaProfUrl"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_45

    .line 766
    const-string v2, "http://wap.samsungmobile.com/uaprof/"

    .line 767
    .restart local v2       #baseurl:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 768
    .restart local v15       #uap:Ljava/lang/StringBuffer;
    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 769
    const-string v17, "REL"

    sget-object v18, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_43

    .line 770
    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 771
    .restart local v8       #model:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_43

    .line 772
    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 773
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDTFeature()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_44

    .line 774
    const-string v17, "BO"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 777
    :cond_42
    :goto_d
    const-string v17, ".xml"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 780
    .end local v8           #model:Ljava/lang/String;
    :cond_43
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    .line 781
    sget-object v17, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    sput-object v17, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    goto/16 :goto_0

    .line 775
    .restart local v8       #model:Ljava/lang/String;
    :cond_44
    invoke-static {}, Lcom/android/mms/MmsConfig;->isMIRSales()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_42

    .line 776
    const-string v17, "HZ"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 782
    .end local v2           #baseurl:Ljava/lang/String;
    .end local v8           #model:Ljava/lang/String;
    .end local v15           #uap:Ljava/lang/StringBuffer;
    :cond_45
    const-string v17, "USAATTuaProfUrl"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_46

    .line 785
    :cond_46
    const-string v17, "USATMOuaProfUrl"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_47

    .line 788
    :cond_47
    const-string v17, "httpParams"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_48

    .line 789
    sput-object v14, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    goto/16 :goto_0

    .line 790
    :cond_48
    const-string v17, "httpParamsLine1Key"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_49

    .line 791
    sput-object v14, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    goto/16 :goto_0

    .line 792
    :cond_49
    const-string v17, "emailGatewayNumber"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 793
    sput-object v14, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 820
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #s:Ljava/lang/StringBuffer;
    .end local v13           #tag:Ljava/lang/String;
    .end local v14           #text:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    .restart local v7       #errorStr:Ljava/lang/String;
    :cond_4a
    return-void
.end method

.method public static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 594
    :cond_1
    return-void
.end method

.method public static setOptionalFieldAttendance(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 463
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mOptionalFieldAttendance:Z

    .line 464
    return-void
.end method

.method public static setSavePduFiles(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 429
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mSavePdu:Z

    .line 430
    return-void
.end method

.method public static setSmsMmsMaxRecipient(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 473
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSmsMmsMaxRecipient] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    sput p0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 475
    return-void
.end method

.method public static setSmsMmsThreshold(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 468
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSmsMmsThreshold] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sput p0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    .line 470
    return-void
.end method

.method public static setTransactionLoggable(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 418
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mTransactionLoggable:Z

    .line 419
    return-void
.end method

.method public static setUaOrigin()V
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    .line 450
    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    .line 451
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    .line 452
    return-void
.end method

.method public static setUaProfUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 444
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    .line 445
    sput-object p0, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 439
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    .line 440
    sput-object p0, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    .line 441
    return-void
.end method
