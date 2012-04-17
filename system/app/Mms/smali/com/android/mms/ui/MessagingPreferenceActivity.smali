.class public Lcom/android/mms/ui/MessagingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static BUBBLE_DATE_SIZE_HUGE:F

.field public static BUBBLE_DATE_SIZE_LARGE:F

.field public static BUBBLE_DATE_SIZE_NORMAL:F

.field public static BUBBLE_DATE_SIZE_SMALL:F

.field public static BUBBLE_DATE_SIZE_TINY:F

.field private static final SMSC_URI:Landroid/net/Uri;


# instance fields
.field private mCBListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mFontSizeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

.field private mReqReceiver:Landroid/content/BroadcastReceiver;

.field private mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mServiceLoadingActionName:[Ljava/lang/String;

.field private mServiceLoadingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x4180

    .line 121
    const-string v0, "content://sms/smsc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI:Landroid/net/Uri;

    .line 173
    sput v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_HUGE:F

    .line 174
    sput v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_LARGE:F

    .line 175
    sput v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_NORMAL:F

    .line 176
    const v0, 0x415547ae

    sput v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_SMALL:F

    .line 177
    const/high16 v0, 0x4140

    sput v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_TINY:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 199
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    .line 221
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 769
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$4;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 776
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$5;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 805
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$7;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 821
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$8;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 880
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$9;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private InitPreference(Landroid/content/SharedPreferences;)V
    .locals 9
    .parameter "sharedPrefs"

    .prologue
    .line 534
    const-string v7, "pref_key_font_size_q1"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/FontSizePreference;

    .line 535
    .local v2, fontSizePreferenceQ1:Lcom/android/mms/ui/FontSizePreference;
    const-string v7, "pref_key_font_size"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/FontSizePreference;

    .line 541
    .local v1, fontSizePreference:Lcom/android/mms/ui/FontSizePreference;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-direct {p0, v7, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 544
    const/4 v0, 0x0

    .line 552
    .local v0, fontSizeName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 553
    const-string v7, "pref_key_font_size"

    const-string v8, "Normal"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndexByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/mms/ui/FontSizePreference;->setSummaryByIndex(I)V

    .line 558
    :cond_0
    const-string v7, "pref_key_text_field_color"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/TextFieldColorPreference;

    .line 559
    .local v6, textFieldColorPreference:Lcom/android/mms/ui/TextFieldColorPreference;
    if-eqz v6, :cond_1

    .line 560
    const/4 v5, 0x0

    .line 562
    .local v5, textFieldColor:Ljava/lang/String;
    const-string v7, "pref_key_text_field_color"

    const-string v8, "Black"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 565
    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/TextFieldColorPreference;->setSummaryByIndex(I)V

    .line 569
    .end local v5           #textFieldColor:Ljava/lang/String;
    :cond_1
    const-string v7, "pref_key_service_loading_action"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 570
    .local v3, serviceLoadingPreference:Landroid/preference/Preference;
    if-eqz v3, :cond_2

    .line 571
    const-string v7, "pref_key_service_loading_action"

    const-string v8, "Prompt"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, slAction:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 579
    .end local v4           #slAction:Ljava/lang/String;
    :cond_2
    const-string v7, "GT-I9100"

    const-string v8, "GT-I9100"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "GT-I9100P"

    const-string v8, "GT-I9100"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "JANICE"

    const-string v8, "GT-I9100"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 580
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 581
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCallbackNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreDefaultPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private clearPickerDialog()V
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->dismiss()V

    .line 1191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 1193
    :cond_0
    return-void
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 681
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 682
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 683
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 684
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 685
    const v1, 0x7f090110

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 686
    const v1, 0x7f090111

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 687
    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 689
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 690
    return-void
.end method

.method public static convertCreationMode(Ljava/lang/String;)I
    .locals 2
    .parameter "modeName"

    .prologue
    .line 973
    const-string v0, "restricted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    const/4 v0, 0x0

    .line 978
    :goto_0
    return v0

    .line 975
    :cond_0
    const-string v0, "warning"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    const/4 v0, 0x1

    goto :goto_0

    .line 977
    :cond_1
    const-string v0, "free"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 978
    const/4 v0, 0x2

    goto :goto_0

    .line 980
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown MMS creation mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createCBListener(Landroid/preference/Preference;)V
    .locals 1
    .parameter "callbackText"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCBListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCBListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 443
    :goto_0
    return-void

    .line 430
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCBListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 442
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCBListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public static getBubbleFontSize(Landroid/content/Context;)F
    .locals 5
    .parameter

    .prologue
    .line 1042
    .line 1043
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1074
    const-string v1, "pref_key_font_size"

    const-string v2, "Normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1075
    const-string v0, "Normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    const v0, 0x419547ae

    .line 1083
    :goto_0
    const-string v2, "Mms/MessagingPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fontSizePref = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", getBubbleFontSize() returns "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    return v0

    .line 1077
    :cond_0
    const-string v0, "Small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1078
    const/high16 v0, 0x4180

    goto :goto_0

    .line 1080
    :cond_1
    const/high16 v0, 0x4160

    goto :goto_0
.end method

.method public static getExpiryTime(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 951
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 952
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_sms_expiry"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, tempStr:Ljava/lang/String;
    const-string v2, "0 day"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 954
    const/4 v2, 0x0

    .line 960
    :goto_0
    return v2

    .line 955
    :cond_0
    const-string v2, "1 day"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 956
    const/16 v2, 0xa7

    goto :goto_0

    .line 957
    :cond_1
    const-string v2, "2 days"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 958
    const/16 v2, 0xa8

    goto :goto_0

    .line 960
    :cond_2
    const/16 v2, 0xa9

    goto :goto_0
.end method

.method public static getFontSizePreferenceDialogFontSize(I)F
    .locals 4
    .parameter

    .prologue
    .line 1088
    .line 1089
    packed-switch p0, :pswitch_data_0

    .line 1106
    sget v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    .line 1109
    :goto_0
    const-string v1, "Mms/MessagingPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFontSizePreferenceDialogFontSize() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    return v0

    .line 1091
    :pswitch_0
    sget v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_HUGE:F

    goto :goto_0

    .line 1094
    :pswitch_1
    sget v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_LARGE:F

    goto :goto_0

    .line 1097
    :pswitch_2
    sget v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    goto :goto_0

    .line 1100
    :pswitch_3
    sget v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_SMALL:F

    goto :goto_0

    .line 1103
    :pswitch_4
    sget v0, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_TINY:F

    goto :goto_0

    .line 1089
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInputmode(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    .line 927
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 928
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_sms_input_mode"

    const-string v4, "Automatic"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 931
    .local v1, tempStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getInputModeAuto()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 942
    :cond_0
    :goto_0
    return v2

    .line 935
    :cond_1
    const-string v3, "GSM alphabet"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 936
    const/4 v2, 0x0

    goto :goto_0

    .line 937
    :cond_2
    const-string v3, "Unicode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 938
    const/4 v2, 0x1

    goto :goto_0

    .line 939
    :cond_3
    const-string v3, "Automatic"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public static getMessageFontSizeIndex(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1013
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1014
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_font_size"

    const-string v3, "Normal"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, fontSizeName:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndexByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static getMessageFontSizeIndexByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "fontSizeName"

    .prologue
    .line 1021
    const/4 v0, 0x0

    .line 1023
    .local v0, messageFontSize:I
    const-string v1, "Follow system font size"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1024
    const/4 v0, 0x0

    .line 1037
    :goto_0
    const-string v1, "Mms/MessagingPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMessageFontSizeIndexByNameByName() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    return v0

    .line 1025
    :cond_0
    const-string v1, "Huge"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1026
    const/4 v0, 0x1

    goto :goto_0

    .line 1027
    :cond_1
    const-string v1, "Large"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1028
    const/4 v0, 0x2

    goto :goto_0

    .line 1029
    :cond_2
    const-string v1, "Normal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1030
    const/4 v0, 0x3

    goto :goto_0

    .line 1031
    :cond_3
    const-string v1, "Small"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1032
    const/4 v0, 0x4

    goto :goto_0

    .line 1034
    :cond_4
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getSelectedFontSizeIndexByPref(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1134
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1135
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_font_size"

    const-string v3, "Normal"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    .local v0, fontName:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndexByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getServiceLoading(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1161
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1162
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_service_loading_action"

    const-string v3, "Prompt"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1165
    .local v1, slAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoading(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getServiceLoading(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 1171
    const-string v0, "Mms/MessagingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushMsg   getServiceLoading  slAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const-string v0, "Always"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    const/4 v0, 0x0

    .line 1183
    :goto_0
    return v0

    .line 1180
    :cond_0
    const-string v0, "Prompt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1181
    const/4 v0, 0x1

    goto :goto_0

    .line 1183
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "slAction"

    .prologue
    const/4 v1, 0x0

    .line 1197
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-object v1

    .line 1200
    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoading(Ljava/lang/String;)I

    move-result v0

    .line 1201
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1204
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public static getTextFieldColor(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1142
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1143
    .local v0, pref:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 1145
    .local v1, textFieldColor:Ljava/lang/String;
    const-string v2, "pref_key_text_field_color"

    const-string v3, "Black"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1148
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static getTextFieldColor(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 1152
    const-string v0, "White"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    const/4 v0, 0x1

    .line 1155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0
    .parameter "pref"
    .parameter "removePref"

    .prologue
    .line 610
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 611
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 613
    :cond_0
    return-void
.end method

.method private restoreDefaultPreferences()V
    .locals 4

    .prologue
    .line 745
    new-instance v0, Lcom/android/mms/util/MessagingCscSetting;

    invoke-direct {v0, p0}, Lcom/android/mms/util/MessagingCscSetting;-><init>(Landroid/content/Context;)V

    .line 746
    .local v0, cscSetting:Lcom/android/mms/util/MessagingCscSetting;
    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->storeCurrentSettings()Z

    .line 747
    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->storeCscSettings()Z

    .line 749
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 750
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 752
    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->loadDefaultSettings()Z

    .line 754
    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 756
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 758
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 759
    .local v2, smsManager:Landroid/telephony/SmsManager;
    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSettingsInfo(Landroid/content/SharedPreferences;Landroid/telephony/SmsManager;)V

    .line 761
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initSmsSettings(Landroid/telephony/SmsManager;)V

    .line 762
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initMmsSettings()V

    .line 763
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initOthersSettings(Landroid/content/SharedPreferences;)V

    .line 765
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->InitPreference(Landroid/content/SharedPreferences;)V

    .line 767
    return-void
.end method

.method private setCallbackNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackNumber"

    .prologue
    .line 628
    const-string v2, "pref_key_callback_text"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 630
    .local v0, prefCallbackText:Landroid/preference/EditTextPreference;
    if-nez v0, :cond_0

    .line 641
    :goto_0
    return-void

    .line 633
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 634
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 635
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    .line 636
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 637
    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 640
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMmsDisplayLimit()V
    .locals 5

    .prologue
    .line 622
    const-string v1, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 623
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 624
    const v1, 0x7f09007c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 625
    :cond_0
    return-void
.end method

.method private setSmsDisplayLimit()V
    .locals 5

    .prologue
    .line 616
    const-string v1, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 617
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 618
    const v1, 0x7f09007c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 619
    :cond_0
    return-void
.end method

.method private showMmsLimitNumberPickerDlg()V
    .locals 8

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->clearPickerDialog()V

    .line 729
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f090083

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIIILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 732
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    .line 733
    return-void
.end method

.method private showSmsLimitNumberPickerDlg()V
    .locals 8

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->clearPickerDialog()V

    .line 737
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f090082

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIIILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 740
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    .line 741
    return-void
.end method

.method private updateSettingsInfo(Landroid/content/SharedPreferences;Landroid/telephony/SmsManager;)V
    .locals 9
    .parameter "sharedPrefs"
    .parameter "smsManager"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 481
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 483
    const-string v5, "pref_key_manage_smsc_address"

    const-string v6, ""

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, summary_smsc:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09011c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #summary_smsc:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 487
    .restart local v4       #summary_smsc:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    const-string v6, "pref_key_manage_smsc_address"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    .line 488
    .local v3, smscPrefs:Landroid/preference/EditTextPreference;
    if-eqz v3, :cond_3

    .line 493
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, code:Ljava/lang/String;
    const-string v5, "HTS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v7, :cond_1

    const-string v5, "H3G"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v7, :cond_1

    const-string v5, "3IE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v7, :cond_1

    const-string v5, "HUI"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v7, :cond_2

    .line 496
    :cond_1
    const-string v5, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 505
    :cond_2
    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 517
    .end local v1           #code:Ljava/lang/String;
    :cond_3
    const-string v5, "LanguageCount"

    const/16 v6, 0x9

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 518
    .local v2, langCount:I
    const-string v5, "pref_key_cb_language"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 522
    .local v0, cbPreference:Landroid/preference/Preference;
    if-eqz v0, :cond_4

    .line 523
    if-eq v2, v7, :cond_5

    .line 524
    const v5, 0x7f09008c

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 531
    .end local v0           #cbPreference:Landroid/preference/Preference;
    .end local v2           #langCount:I
    .end local v3           #smscPrefs:Landroid/preference/EditTextPreference;
    .end local v4           #summary_smsc:Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 526
    .restart local v0       #cbPreference:Landroid/preference/Preference;
    .restart local v2       #langCount:I
    .restart local v3       #smscPrefs:Landroid/preference/EditTextPreference;
    .restart local v4       #summary_smsc:Ljava/lang/String;
    :cond_5
    const v5, 0x7f09008d

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static useSplitView(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 989
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 990
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_split_view"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected initMmsSettings()V
    .locals 3

    .prologue
    .line 321
    const-string v1, "pref_key_mms_settings"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 324
    .local v0, MmsCategory:Landroid/preference/PreferenceCategory;
    const-string v1, "GT-I9100"

    const-string v2, "SPH-D710"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GT-I9100"

    const-string v2, "SPH-D705"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GT-I9100"

    const-string v2, "SCH-R760"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GT-I9100"

    const-string v2, "ISW11SC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    :cond_0
    const-string v1, "GT-I9100"

    const-string v2, "SPH-D710"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GT-I9100"

    const-string v2, "SPH-D705"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GT-I9100"

    const-string v2, "SCH-R760"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GT-I9100"

    const-string v2, "ISW11SC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    :cond_1
    const-string v1, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 354
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 356
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pref_key_mms_settings"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 357
    const-string v1, "pref_key_storage_settings"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v2, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 360
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 361
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    .line 362
    :cond_4
    return-void
.end method

.method protected initOthersSettings(Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "sharedPrefs"

    .prologue
    .line 371
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "pref_key_cb_settings"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 377
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getWapPush()Z

    move-result v3

    if-nez v3, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "pref_key_push_message_settings"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 393
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCallbackOption()Z

    move-result v3

    if-nez v3, :cond_5

    .line 394
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "pref_callback_settings"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 405
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSignatureSettings()Z

    move-result v3

    if-nez v3, :cond_3

    .line 406
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "pref_signature_settings"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 410
    :cond_3
    const-string v3, "pref_notification_settings"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 411
    .local v0, NotiCategory:Landroid/preference/PreferenceCategory;
    const-string v3, "pref_key_vibrateWhen"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 412
    const-string v3, "pref_key_backlight"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 418
    const-string v3, "ATL"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 419
    const-string v3, "pref_key_mms_settings"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 420
    .local v2, creationMode:Landroid/preference/PreferenceCategory;
    const-string v3, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 422
    .end local v2           #creationMode:Landroid/preference/PreferenceCategory;
    :cond_4
    return-void

    .line 397
    .end local v0           #NotiCategory:Landroid/preference/PreferenceCategory;
    :cond_5
    const-string v3, "pref_key_callback_text"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 398
    .local v1, callbackText:Landroid/preference/Preference;
    if-eqz v1, :cond_2

    .line 399
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->createCBListener(Landroid/preference/Preference;)V

    .line 400
    const-string v3, "pref_key_callback_text"

    const-string v4, ""

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCallbackNumber(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected initSmsSettings(Landroid/telephony/SmsManager;)V
    .locals 4
    .parameter "smsManager"

    .prologue
    const/4 v3, 0x1

    .line 254
    const-string v2, "pref_key_sms_settings"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 257
    .local v1, smsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsExpiredDate()Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    const-string v2, "pref_key_sms_expiry"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 261
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-nez v2, :cond_1

    .line 262
    const-string v2, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 268
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-nez v2, :cond_2

    .line 270
    const-string v2, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 274
    :cond_2
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, code:Ljava/lang/String;
    const-string v2, "HTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v3, :cond_3

    const-string v2, "H3G"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v3, :cond_3

    const-string v2, "3IE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v3, :cond_3

    const-string v2, "HUI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 276
    :cond_3
    const-string v2, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 288
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getInputModeAuto()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 290
    const-string v2, "pref_key_sms_input_mode"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 294
    :cond_5
    const-string v2, "GT-I9100"

    const-string v3, "SPH-D710"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "GT-I9100"

    const-string v3, "SPH-D705"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "GT-I9100"

    const-string v3, "SCH-R760"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "GT-I9100"

    const-string v3, "ISW11SC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 304
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    .line 307
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNetWorkLock()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 308
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 312
    :cond_7
    const-string v2, "GT-I9100"

    const-string v3, "SPH-D710"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "GT-I9100"

    const-string v3, "SPH-D705"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "GT-I9100"

    const-string v3, "ISW11SC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 315
    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 317
    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 647
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 649
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    if-eqz v0, :cond_1

    .line 652
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/NumberPickerDialog;->hideSip(Landroid/view/inputmethod/InputMethodManager;)V

    .line 655
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 229
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 231
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 232
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    .line 233
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initSmsSettings(Landroid/telephony/SmsManager;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initMmsSettings()V

    .line 235
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initOthersSettings(Landroid/content/SharedPreferences;)V

    .line 238
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReqReceiver:Landroid/content/BroadcastReceiver;

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReqReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.provider.Telephony.GET_SMSC"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 785
    packed-switch p1, :pswitch_data_0

    .line 801
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 787
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$6;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 785
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 658
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 659
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 660
    const v0, 0x7f090071

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 662
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReqReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1235
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 1237
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 667
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 677
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 669
    :pswitch_0
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V

    .line 675
    const/4 v0, 0x1

    goto :goto_0

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 588
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 595
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 598
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 696
    const-string v1, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_2

    .line 697
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showSmsLimitNumberPickerDlg()V

    .line 707
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 708
    const-string v0, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 709
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showSmsLimitNumberPickerDlg()V

    .line 724
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_2
    return v0

    .line 698
    :cond_2
    const-string v1, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_3

    .line 699
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showMmsLimitNumberPickerDlg()V

    goto :goto_0

    .line 700
    :cond_3
    const-string v1, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_4

    .line 701
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 702
    :cond_4
    const-string v1, "pref_key_mms_clear_history"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_0

    .line 703
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showDialog(I)V

    goto :goto_2

    .line 714
    :cond_5
    const-string v1, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_6

    .line 715
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showSmsLimitNumberPickerDlg()V

    goto :goto_1

    .line 716
    :cond_6
    const-string v1, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_7

    .line 717
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showMmsLimitNumberPickerDlg()V

    goto :goto_1

    .line 718
    :cond_7
    const-string v1, "pref_key_mms_clear_history"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 719
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showDialog(I)V

    goto :goto_2
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 448
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 451
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    const-string v1, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessagingPreferenceActivity.onResume : android.util.GateConfig.isGateEnabled() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 458
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateSettingsInfo(Landroid/content/SharedPreferences;Landroid/telephony/SmsManager;)V

    .line 465
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 473
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->InitPreference(Landroid/content/SharedPreferences;)V

    .line 474
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 895
    const-string v1, "Mms/MessagingPreferenceActivity"

    const-string v2, "[SMS] onSharedPreferenceChanged"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    const-string v1, "pref_key_cb_settings_activation"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 904
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 909
    :cond_0
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 910
    const-string v1, "pref_key_mms_delivery_reports"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 911
    const-string v1, "pref_key_mms_delivery_reports"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 913
    .local v0, dr:Z
    if-eqz v0, :cond_2

    .line 914
    const-string v1, "GATE"

    const-string v2, "<GATE-M>DELIVERY_REPORT_OFF</GATE-M>"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .end local v0           #dr:Z
    :cond_1
    :goto_0
    return-void

    .line 917
    .restart local v0       #dr:Z
    :cond_2
    const-string v1, "GATE"

    const-string v2, "<GATE-M>DELIVERY_REPORT_ON</GATE-M>"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 604
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 606
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 607
    return-void
.end method

.method public refreshPreferences(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1210
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1211
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1212
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1214
    const-string v2, "NotSet"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1215
    const-string v2, "pref_key_manage_smsc_address"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1219
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1221
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "pref_key_manage_smsc_address"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 1223
    if-eqz v0, :cond_1

    .line 1224
    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1225
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1229
    :goto_1
    return-void

    .line 1217
    :cond_0
    const-string v0, "pref_key_manage_smsc_address"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1227
    :cond_1
    const-string v0, "Mms/MessagingPreferenceActivity"

    const-string v1, "smscPrefs is Null "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
