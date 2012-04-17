.class public Lcom/android/email/activity/utils/AppPreferences;
.super Ljava/lang/Object;
.source "AppPreferences.java"


# static fields
.field private static EMAIL_PREF_NAME:Ljava/lang/String;

.field public static ENABLE_SNC_GET_TAGS:Z

.field public static ENABLE_SNC_SMART_FORWARD:Z

.field private static TAG:Ljava/lang/String;

.field private static mPrefAccountSelected:J

.field private static mPrefDisplaymode:I

.field private static mPrefSortyBy:I

.field private static mPrefTermsAndconditions:Z

.field private static mPrefTextSize:I

.field private static mPrefViewMode:I

.field private static mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 22
    const-string v0, "EmailAppPreferences"

    sput-object v0, Lcom/android/email/activity/utils/AppPreferences;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/utils/AppPreferences;->mSharedPref:Landroid/content/SharedPreferences;

    .line 24
    const-string v0, "EmailPrefs"

    sput-object v0, Lcom/android/email/activity/utils/AppPreferences;->EMAIL_PREF_NAME:Ljava/lang/String;

    .line 39
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/activity/utils/AppPreferences;->mPrefAccountSelected:J

    .line 40
    sput v2, Lcom/android/email/activity/utils/AppPreferences;->mPrefViewMode:I

    .line 41
    sput v2, Lcom/android/email/activity/utils/AppPreferences;->mPrefSortyBy:I

    .line 42
    sput-boolean v3, Lcom/android/email/activity/utils/AppPreferences;->mPrefTermsAndconditions:Z

    .line 45
    sput v2, Lcom/android/email/activity/utils/AppPreferences;->mPrefDisplaymode:I

    .line 46
    sput v2, Lcom/android/email/activity/utils/AppPreferences;->mPrefTextSize:I

    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/utils/AppPreferences;->ENABLE_SNC_GET_TAGS:Z

    .line 121
    sput-boolean v3, Lcom/android/email/activity/utils/AppPreferences;->ENABLE_SNC_SMART_FORWARD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _initSharedPreferences(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 163
    sget-object v0, Lcom/android/email/activity/utils/AppPreferences;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lcom/android/email/activity/utils/AppPreferences;->EMAIL_PREF_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/utils/AppPreferences;->mSharedPref:Landroid/content/SharedPreferences;

    .line 166
    :cond_0
    return-void
.end method

.method public static getAccountSelected(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    const-wide/16 v2, -0x1

    .line 169
    sget-wide v0, Lcom/android/email/activity/utils/AppPreferences;->mPrefAccountSelected:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 170
    invoke-static {p0}, Lcom/android/email/activity/utils/AppPreferences;->_initSharedPreferences(Landroid/content/Context;)V

    .line 172
    sget-object v0, Lcom/android/email/activity/utils/AppPreferences;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "account_selected"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/email/activity/utils/AppPreferences;->mPrefAccountSelected:J

    .line 175
    :cond_0
    sget-wide v0, Lcom/android/email/activity/utils/AppPreferences;->mPrefAccountSelected:J

    return-wide v0
.end method

.method public static setAccountSelected(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 179
    sget-wide v1, Lcom/android/email/activity/utils/AppPreferences;->mPrefAccountSelected:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 191
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {p0}, Lcom/android/email/activity/utils/AppPreferences;->_initSharedPreferences(Landroid/content/Context;)V

    .line 185
    sget-object v1, Lcom/android/email/activity/utils/AppPreferences;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "account_selected"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    sput-wide p1, Lcom/android/email/activity/utils/AppPreferences;->mPrefAccountSelected:J

    .line 190
    sget-object v1, Lcom/android/email/activity/utils/AppPreferences;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAccountSelected | accountId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
