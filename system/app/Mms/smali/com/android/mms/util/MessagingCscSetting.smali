.class public Lcom/android/mms/util/MessagingCscSetting;
.super Ljava/lang/Object;
.source "MessagingCscSetting.java"


# static fields
.field static final CSC_KEY_BOOL:[Ljava/lang/String;

.field static final CSC_KEY_INT:[Ljava/lang/String;

.field static final CSC_KEY_STR:[Ljava/lang/String;

.field static final PREF_KEY_BOOL:[Ljava/lang/String;

.field static final PREF_KEY_INT:[Ljava/lang/String;

.field static final PREF_KEY_STR:[Ljava/lang/String;

.field private static mAutoDelete:I

.field private static mCbActivation:I

.field private static mContext:Landroid/content/Context;

.field static mEditor:Landroid/content/SharedPreferences$Editor;

.field private static mEnableNotification:I

.field private static mEnablePushMesage:I

.field private static mMaxChCount:I

.field private static mMaxRecipient:I

.field private static mMmsAutoRetireve:I

.field private static mMmsAutoRetireveRoam:I

.field private static mMmsCreationMode:Ljava/lang/String;

.field private static mMmsDeleteLimit:I

.field private static mMmsDeliveryReport:I

.field private static mMmsReadReport:I

.field private static mMyChannels:I

.field private static mNotiVibrate:I

.field private static mPrefs:Landroid/content/SharedPreferences;

.field private static mServiceLoadingAction:Ljava/lang/String;

.field private static mSimState:Z

.field private static mSmsDeleteLimit:I

.field private static mSmsDeliveryReport:I

.field private static mSmsInputMethod:Ljava/lang/String;

.field private static mSmsReplyPath:I

.field private static mSmsToMmsThreshold:I

.field private static mSmsc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 62
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "csc_pref_key_sms_delivery_reports"

    aput-object v1, v0, v4

    const-string v1, "csc_pref_key_mms_delivery_reports"

    aput-object v1, v0, v5

    const-string v1, "csc_pref_key_mms_read_reports"

    aput-object v1, v0, v6

    const-string v1, "csc_pref_key_mms_auto_retrieval"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "csc_pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "csc_pref_key_auto_delete"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "csc_pref_key_vibrate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "csc_pref_key_enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "csc_pref_key_enable_push_message"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "csc_pref_key_cb_settings_activation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    .line 75
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_key_sms_delivery_reports"

    aput-object v1, v0, v4

    const-string v1, "pref_key_mms_delivery_reports"

    aput-object v1, v0, v5

    const-string v1, "pref_key_mms_read_reports"

    aput-object v1, v0, v6

    const-string v1, "pref_key_mms_auto_retrieval"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_key_auto_delete"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_key_vibrate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_key_enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_key_enable_push_message"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_key_cb_settings_activation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_BOOL:[Ljava/lang/String;

    .line 92
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "csc_pref_key_mms_creation_mode"

    aput-object v1, v0, v4

    const-string v1, "csc_pref_key_sms_input_mode"

    aput-object v1, v0, v5

    const-string v1, "csc_pref_key_service_loading_action"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    .line 100
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "pref_key_mms_creation_mode"

    aput-object v1, v0, v4

    const-string v1, "pref_key_sms_input_mode"

    aput-object v1, v0, v5

    const-string v1, "pref_key_service_loading_action"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_STR:[Ljava/lang/String;

    .line 109
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    .line 111
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_INT:[Ljava/lang/String;

    .line 114
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeliveryReport:I

    .line 116
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mSmsReplyPath:I

    .line 118
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeliveryReport:I

    .line 120
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsReadReport:I

    .line 122
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireve:I

    .line 124
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireveRoam:I

    .line 126
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mAutoDelete:I

    .line 128
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mNotiVibrate:I

    .line 130
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mEnableNotification:I

    .line 132
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mCbActivation:I

    .line 133
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mSmsToMmsThreshold:I

    .line 135
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMaxRecipient:I

    .line 136
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeleteLimit:I

    .line 137
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeleteLimit:I

    .line 139
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsCreationMode:Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsInputMethod:Ljava/lang/String;

    .line 144
    sput v4, Lcom/android/mms/util/MessagingCscSetting;->mMaxChCount:I

    .line 145
    sput v4, Lcom/android/mms/util/MessagingCscSetting;->mMyChannels:I

    .line 148
    sput-boolean v4, Lcom/android/mms/util/MessagingCscSetting;->mSimState:Z

    .line 157
    sput v3, Lcom/android/mms/util/MessagingCscSetting;->mEnablePushMesage:I

    .line 159
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mServiceLoadingAction:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 164
    sput-object p1, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    .line 165
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    .line 166
    return-void
.end method

.method public static loadCscToDefaultSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "cscKey"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 329
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 330
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 332
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "Mms/MessagingCscSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadCscToDefaultSettings] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v3, "STRING"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 336
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_STR:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 335
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    .end local v1           #i:I
    :cond_1
    const-string v3, "INT"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 340
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 341
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 342
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_INT:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 340
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 344
    .end local v1           #i:I
    :cond_3
    const-string v3, "BOOLEAN"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 345
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 346
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 347
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_BOOL:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 345
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 351
    .end local v1           #i:I
    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 353
    const-string v3, "csc_pref_key_threshold"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 354
    const-string v3, "csc_pref_key_threshold"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setSmsMmsThreshold(I)V

    .line 355
    :cond_6
    const-string v3, "csc_pref_key_max_recipient"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 356
    const-string v3, "csc_pref_key_max_recipient"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setSmsMmsMaxRecipient(I)V

    .line 358
    :cond_7
    const-string v3, "csc_pref_key_mms_delete_limit"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 359
    const-string v3, "Mms/MessagingCscSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS delete limit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "csc_pref_key_mms_delete_limit"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v3

    const-string v4, "csc_pref_key_mms_delete_limit"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, p0, v4}, Lcom/android/mms/util/Recycler$MmsRecycler;->setMessageLimit(Landroid/content/Context;I)V

    .line 362
    :cond_8
    const-string v3, "csc_pref_key_sms_delete_limit"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 363
    const-string v3, "Mms/MessagingCscSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS delete limit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "csc_pref_key_sms_delete_limit"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v3

    const-string v4, "csc_pref_key_sms_delete_limit"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, p0, v4}, Lcom/android/mms/util/Recycler$SmsRecycler;->setMessageLimit(Landroid/content/Context;I)V

    .line 366
    :cond_9
    return-void
.end method

.method public static loadCscToDefaultSettings(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 300
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    .line 301
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 303
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 304
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_BOOL:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOL:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 303
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 311
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_STR:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STR:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 317
    :cond_3
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 318
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 319
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_INT:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INT:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 317
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 324
    :cond_5
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 325
    const/4 v1, 0x1

    return v1
.end method

.method public static loadDefaultSettings()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 238
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    .line 239
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 242
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_sim_ready_status"

    sget-boolean v4, Lcom/android/mms/util/MessagingCscSetting;->mSimState:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_key_manage_smsc_address"

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->mSmsc:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_cb_my_channel_max_count"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mMaxChCount:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 247
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "pref_cb_my_channel_enabled_count"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mMyChannels:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 250
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeliveryReport:I

    if-ltz v0, :cond_0

    .line 251
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_sms_delivery_reports"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeliveryReport:I

    if-lez v0, :cond_12

    move v0, v1

    :goto_0
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 254
    :cond_0
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeliveryReport:I

    if-ltz v0, :cond_1

    .line 255
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_mms_delivery_reports"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeliveryReport:I

    if-lez v0, :cond_13

    move v0, v1

    :goto_1
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 256
    :cond_1
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsReadReport:I

    if-ltz v0, :cond_2

    .line 257
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_mms_read_reports"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsReadReport:I

    if-lez v0, :cond_14

    move v0, v1

    :goto_2
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 258
    :cond_2
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireve:I

    if-ltz v0, :cond_3

    .line 259
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_mms_auto_retrieval"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireve:I

    if-lez v0, :cond_15

    move v0, v1

    :goto_3
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 260
    :cond_3
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireveRoam:I

    if-ltz v0, :cond_4

    .line 261
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_mms_retrieval_during_roaming"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireveRoam:I

    if-lez v0, :cond_16

    move v0, v1

    :goto_4
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 262
    :cond_4
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mAutoDelete:I

    if-ltz v0, :cond_5

    .line 263
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_auto_delete"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mAutoDelete:I

    if-lez v0, :cond_17

    move v0, v1

    :goto_5
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 264
    :cond_5
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mNotiVibrate:I

    if-ltz v0, :cond_6

    .line 265
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_vibrate"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mNotiVibrate:I

    if-lez v0, :cond_18

    move v0, v1

    :goto_6
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 266
    :cond_6
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mEnableNotification:I

    if-ltz v0, :cond_7

    .line 267
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_enable_notifications"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mEnableNotification:I

    if-lez v0, :cond_19

    move v0, v1

    :goto_7
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 268
    :cond_7
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mCbActivation:I

    if-ltz v0, :cond_8

    .line 269
    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "csc_pref_key_cb_settings_activation"

    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mCbActivation:I

    if-lez v0, :cond_1a

    move v0, v1

    :goto_8
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 271
    :cond_8
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsToMmsThreshold:I

    if-ltz v0, :cond_9

    .line 272
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_threshold"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mSmsToMmsThreshold:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 273
    :cond_9
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMaxRecipient:I

    if-ltz v0, :cond_a

    .line 274
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_max_recipient"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mMaxRecipient:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 276
    :cond_a
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsCreationMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 277
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_mms_creation_mode"

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->mMmsCreationMode:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 278
    :cond_b
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsInputMethod:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 279
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_sms_input_mode"

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->mSmsInputMethod:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 280
    :cond_c
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeleteLimit:I

    if-ltz v0, :cond_d

    .line 281
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_mms_delete_limit"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeleteLimit:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 282
    :cond_d
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeleteLimit:I

    if-ltz v0, :cond_e

    .line 283
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_sms_delete_limit"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeleteLimit:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 286
    :cond_e
    sget v0, Lcom/android/mms/util/MessagingCscSetting;->mEnablePushMesage:I

    if-ltz v0, :cond_10

    .line 287
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "csc_pref_key_enable_push_message"

    sget v4, Lcom/android/mms/util/MessagingCscSetting;->mEnablePushMesage:I

    if-lez v4, :cond_f

    move v2, v1

    :cond_f
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 288
    :cond_10
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mServiceLoadingAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 289
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "csc_pref_key_service_loading_action"

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->mServiceLoadingAction:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    :cond_11
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 294
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/util/MessagingCscSetting;->loadCscToDefaultSettings(Landroid/content/Context;)Z

    .line 296
    return v1

    :cond_12
    move v0, v2

    .line 251
    goto/16 :goto_0

    :cond_13
    move v0, v2

    .line 255
    goto/16 :goto_1

    :cond_14
    move v0, v2

    .line 257
    goto/16 :goto_2

    :cond_15
    move v0, v2

    .line 259
    goto/16 :goto_3

    :cond_16
    move v0, v2

    .line 261
    goto/16 :goto_4

    :cond_17
    move v0, v2

    .line 263
    goto/16 :goto_5

    :cond_18
    move v0, v2

    .line 265
    goto/16 :goto_6

    :cond_19
    move v0, v2

    .line 267
    goto/16 :goto_7

    :cond_1a
    move v0, v2

    .line 269
    goto/16 :goto_8
.end method

.method public static storeCscSettings()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    .line 185
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_delivery_reports"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_delivery_reports"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    :goto_0
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeliveryReport:I

    .line 189
    :cond_0
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_delivery_reports"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_delivery_reports"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_1
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeliveryReport:I

    .line 191
    :cond_1
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_read_reports"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_read_reports"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_2
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsReadReport:I

    .line 193
    :cond_2
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_auto_retrieval"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_auto_retrieval"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_3
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireve:I

    .line 195
    :cond_3
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_retrieval_during_roaming"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_retrieval_during_roaming"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_4
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsAutoRetireveRoam:I

    .line 197
    :cond_4
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_auto_delete"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_auto_delete"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_5
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mAutoDelete:I

    .line 199
    :cond_5
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_vibrate"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 200
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_vibrate"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    :goto_6
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mNotiVibrate:I

    .line 201
    :cond_6
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_enable_notifications"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 202
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_enable_notifications"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_7
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mEnableNotification:I

    .line 203
    :cond_7
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_delivery_reports"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 205
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_creation_mode"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 206
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_creation_mode"

    const-string v4, "free"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsCreationMode:Ljava/lang/String;

    .line 208
    :cond_8
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_input_mode"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 209
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_input_mode"

    const-string v4, "Automatic"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsInputMethod:Ljava/lang/String;

    .line 212
    :cond_9
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_threshold"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 213
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_threshold"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsToMmsThreshold:I

    .line 215
    :cond_a
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_max_recipient"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 216
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_max_recipient"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMaxRecipient:I

    .line 218
    :cond_b
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_delete_limit"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 219
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_mms_delete_limit"

    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v4

    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/mms/util/Recycler$MmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMmsDeleteLimit:I

    .line 221
    :cond_c
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_delete_limit"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 222
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_sms_delete_limit"

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v4

    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsDeleteLimit:I

    .line 225
    :cond_d
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_enable_push_message"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 226
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_enable_push_message"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_8
    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mEnablePushMesage:I

    .line 227
    :cond_e
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_service_loading_action"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 228
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_service_loading_action"

    const-string v4, "pref_key_service_loading_action"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mServiceLoadingAction:Ljava/lang/String;

    .line 232
    :cond_f
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_cb_settings_activation"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 233
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "csc_pref_key_cb_settings_activation"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    move v2, v1

    :cond_10
    sput v2, Lcom/android/mms/util/MessagingCscSetting;->mCbActivation:I

    .line 234
    :cond_11
    return v1

    :cond_12
    move v0, v2

    .line 186
    goto/16 :goto_0

    :cond_13
    move v0, v2

    .line 190
    goto/16 :goto_1

    :cond_14
    move v0, v2

    .line 192
    goto/16 :goto_2

    :cond_15
    move v0, v2

    .line 194
    goto/16 :goto_3

    :cond_16
    move v0, v2

    .line 196
    goto/16 :goto_4

    :cond_17
    move v0, v2

    .line 198
    goto/16 :goto_5

    :cond_18
    move v0, v2

    .line 200
    goto/16 :goto_6

    :cond_19
    move v0, v2

    .line 202
    goto/16 :goto_7

    :cond_1a
    move v0, v2

    .line 226
    goto :goto_8
.end method

.method public static storeCurrentSettings()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 169
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    .line 172
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_manage_smsc_address"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->mSmsc:Ljava/lang/String;

    .line 173
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_sim_ready_status"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/util/MessagingCscSetting;->mSimState:Z

    .line 176
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_cb_my_channel_max_count"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMaxChCount:I

    .line 177
    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_cb_my_channel_enabled_count"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/util/MessagingCscSetting;->mMyChannels:I

    .line 179
    const/4 v0, 0x1

    return v0
.end method
