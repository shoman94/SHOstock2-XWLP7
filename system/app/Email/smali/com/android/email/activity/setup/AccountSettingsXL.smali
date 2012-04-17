.class public Lcom/android/email/activity/setup/AccountSettingsXL;
.super Landroid/preference/PreferenceActivity;
.source "AccountSettingsXL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;,
        Lcom/android/email/activity/setup/AccountSettingsXL$ControllerResult;,
        Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;,
        Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;,
        Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;,
        Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;,
        Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;
    }
.end annotation


# static fields
.field private static final SECRET_KEY_CODES:[I

.field public static mDeleteMode:Z

.field private static mDeleteaccountId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsRotating:Z

.field public static mPrevPreference:Z


# instance fields
.field private mAccountDeleteItem:[J

.field private mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

.field private final mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;

.field private final mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;

.field private mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

.field private mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

.field private mController:Lcom/android/email/Controller;

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field mCurrentFragment:Landroid/app/Fragment;

.field private mCurrentHeaderPosition:I

.field private mDefaultAccountId:J

.field private mDeleteAccountPressed:Z

.field private mDeletingAccountId:J

.field private mGeneratedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

.field private mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

.field private mNumGeneralHeaderClicked:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

.field private mRequestedAccountId:J

.field private mResumed:Z

.field private mSecretKeyCodeIndex:I

.field private mShowDebugMenu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->SECRET_KEY_CODES:[I

    .line 172
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    .line 181
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mIsRotating:Z

    .line 185
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mPrevPreference:Z

    return-void

    .line 131
    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 136
    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    .line 149
    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    .line 164
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    .line 179
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    .line 192
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;

    .line 194
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;

    .line 1494
    return-void
.end method

.method static synthetic access$1002(Lcom/android/email/activity/setup/AccountSettingsXL;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/android/email/activity/setup/AccountSettingsXL;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSettingsXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->forceBack()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSettingsXL;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL;->forceSwitchHeader(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSettingsXL;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSettingsXL;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsXL;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/email/activity/setup/AccountSettingsXL;[Landroid/preference/PreferenceActivity$Header;)[Landroid/preference/PreferenceActivity$Header;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method public static actionSettings(Landroid/app/Activity;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    const-string v1, "AccountSettingsXL.account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method

.method public static actionSettingsWithDebug(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    const-string v1, "AccountSettingsXL.enable_debug"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 244
    return-void
.end method

.method public static actionSettings_withdeleteoption(Landroid/app/Activity;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    const-string v1, "AccountSettingsXL.account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 216
    const-string v1, "AccountSettingsXL.for_deleteoption"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method public static createAccountSettingsIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    const-string v1, "AccountSettingsXL.account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 232
    const-string v1, "AccountSettingsXL.for_account"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    return-object v0
.end method

.method private enableDebugMenu()V
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mShowDebugMenu:Z

    .line 590
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateHeaders()V

    .line 591
    return-void
.end method

.method private forceBack()V
    .locals 1

    .prologue
    .line 1040
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    .line 1041
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onBackPressed()V

    .line 1042
    return-void
.end method

.method private forceSwitchHeader(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1025
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentHeaderPosition:I

    .line 1027
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    .line 1029
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL;->setSelection(I)V

    .line 1030
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1031
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1032
    return-void
.end method

.method private getAddedAccountCategory()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 767
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    if-nez v0, :cond_0

    .line 768
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    .line 769
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    const v1, 0x7f0805dc

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 770
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 771
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    const/4 v1, 0x0

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 772
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 773
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 774
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 4

    .prologue
    const v3, 0x7f0805ba

    .line 753
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v0, :cond_0

    .line 754
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    .line 755
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 756
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 757
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 758
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v1, 0x0

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 759
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const-class v1, Lcom/android/email/activity/setup/GeneralPreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 760
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private onAddNewAccount()V
    .locals 0

    .prologue
    .line 615
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 616
    return-void
.end method

.method private onDeleteAccount()V
    .locals 3

    .prologue
    const v2, 0x7f080058

    .line 643
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsXL$3;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsXL$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsXL$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsXL$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080043

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsXL$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsXL$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 677
    return-void
.end method

.method private onDeleteMode()V
    .locals 4

    .prologue
    .line 621
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[toma] mRequestedAccountId :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[toma] mDefaultAccountId :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 625
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    .line 627
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    .line 628
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 629
    return-void
.end method

.method private onDeleteModeCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 632
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 633
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    .line 634
    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    .line 635
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    .line 636
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 637
    return-void
.end method

.method private shouldShowNewAccount()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 598
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->isMultiPane()Z

    move-result v1

    if-nez v1, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->hasHeaders()Z

    move-result v1

    if-nez v1, :cond_2

    .line 611
    :cond_0
    :goto_0
    return v0

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/setup/GeneralPreferences;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/setup/DebugFragment;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    if-eqz v1, :cond_0

    .line 611
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public deleteAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 1242
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/NotificationController;->cancelNewMessageNotification(J)V

    .line 1246
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Controller;->deleteAccount(J)V

    .line 1251
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 1253
    .local v0, prefsHeader:Landroid/preference/PreferenceActivity$Header;
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1254
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    .line 1255
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 1263
    .end local v0           #prefsHeader:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-void

    .line 1261
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->finish()V

    goto :goto_0
.end method

.method public deleteAccountCallbackResult(Landroid/os/Bundle;J)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const v8, 0x7f080270

    const/4 v7, 0x0

    .line 1360
    const-string v0, "Email"

    const-string v1, "deleteAccountCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    sput-boolean v7, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    .line 1363
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    .line 1364
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 1374
    if-eqz p1, :cond_6

    .line 1375
    const-string v0, "status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .line 1377
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1383
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1385
    if-eqz v0, :cond_0

    .line 1386
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1390
    :cond_0
    if-nez v1, :cond_3

    .line 1391
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->finish()V

    .line 1420
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1422
    if-nez p1, :cond_4

    .line 1423
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1438
    :goto_2
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1439
    return-void

    .line 1385
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 1386
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1385
    :cond_2
    throw v1

    .line 1392
    :cond_3
    if-nez v6, :cond_1

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    iget-wide v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1403
    if-eqz p1, :cond_1

    .line 1404
    const-string v0, "status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    goto :goto_1

    .line 1426
    :cond_4
    const-string v0, "status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1427
    const-string v1, "status_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1428
    if-eqz v0, :cond_5

    .line 1429
    const v0, 0x7f080589

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1433
    :cond_5
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_6
    move v6, v7

    goto/16 :goto_0
.end method

.method public onAttach(Landroid/app/Fragment;)V
    .locals 3
    .parameter "f"

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    .line 1050
    instance-of v2, p1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 1051
    check-cast v1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    .line 1052
    .local v1, asf:Lcom/android/email/activity/setup/AccountSettingsFragment;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->setCallback(Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;)V

    .line 1059
    .end local v1           #asf:Lcom/android/email/activity/setup/AccountSettingsFragment;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mResumed:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->hasHeaders()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1060
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    .line 1062
    :cond_1
    return-void

    .line 1053
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v2, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    .line 1055
    .local v0, asbf:Lcom/android/email/activity/setup/AccountServerBaseFragment;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v1, :cond_0

    .line 564
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 565
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onDeleteModeCancel()V

    .line 569
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    .line 573
    :goto_1
    return-void

    .line 567
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Email"

    const-string v2, "Error in onBackPressed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v9, -0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 701
    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    .line 704
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 705
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-nez v0, :cond_0

    .line 706
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getAddedAccountCategory()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_2

    .line 712
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    array-length v2, v0

    move v0, v1

    .line 713
    :goto_0
    if-ge v0, v2, :cond_2

    .line 714
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    aget-object v3, v3, v0

    .line 715
    if-eqz v3, :cond_1

    iget-wide v4, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v9

    if-eqz v4, :cond_1

    .line 716
    iget-wide v4, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 717
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    iget-wide v4, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 723
    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    .line 725
    iput-wide v9, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    .line 713
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    :cond_2
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mShowDebugMenu:Z

    if-eqz v0, :cond_3

    .line 735
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 736
    const v2, 0x7f080034

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 737
    iput-object v8, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 738
    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 739
    const-class v1, Lcom/android/email/activity/setup/DebugFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 740
    iput-object v8, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 741
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    :cond_3
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    .line 746
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 529
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 534
    .local v0, result:Landroid/content/Intent;
    invoke-static {p2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getTitleFromArgs(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, title:Ljava/lang/String;
    if-nez p3, :cond_0

    if-eqz v1, :cond_0

    .line 536
    const-string v2, "AccountSettings.title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    :cond_0
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 783
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 784
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 248
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "intent.seven.action.EMAIL_ACCOUNT_PREFERENCE"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->finish()V

    .line 323
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 263
    .local v1, i:Landroid/content/Intent;
    if-nez p1, :cond_1

    .line 267
    const-string v3, "com.android.email.activity.setup.ACCOUNT_MANAGER_ENTRY"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 270
    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    invoke-direct {v3, p0, v8}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    new-array v4, v7, [Landroid/content/Intent;

    aput-object v1, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    .line 284
    :cond_1
    :goto_1
    const-string v3, "AccountSettingsXL.enable_debug"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mShowDebugMenu:Z

    .line 286
    iget-wide v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    iput-wide v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccountId:J

    .line 287
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    .line 289
    const-string v3, "AccountSettings.title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, title:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 291
    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 298
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 304
    .local v0, actionBar:Landroid/app/ActionBar;
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 305
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 306
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 309
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mController:Lcom/android/email/Controller;

    .line 310
    new-instance v3, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsXL$ControllerResult;

    invoke-direct {v5, p0, v8}, Lcom/android/email/activity/setup/AccountSettingsXL$ControllerResult;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    invoke-direct {v3, v4, v5}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 312
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mController:Lcom/android/email/Controller;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v3, v4}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    goto :goto_0

    .line 272
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v2           #title:Ljava/lang/String;
    :cond_3
    const-string v3, "intent.seven.action.EMAIL_ACCOUNT_PREFERENCE"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 274
    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    invoke-direct {v3, p0, v8}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    new-array v4, v7, [Landroid/content/Intent;

    aput-object v1, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    goto :goto_1

    .line 279
    :cond_4
    const-string v3, "AccountSettingsXL.account_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    .line 280
    const-string v3, "AccountSettingsXL.for_deleteoption"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 448
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 450
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-ne v0, v2, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 457
    :goto_0
    return v2

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 407
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 408
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 409
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    .line 410
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 411
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    .line 412
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 417
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    .line 427
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 8
    .parameter "header"
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 968
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v4, v4, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v4, :cond_0

    .line 969
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v4, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->haveSettingsChanged()Z

    move-result v2

    .line 970
    .local v2, changed:Z
    if-eqz v2, :cond_0

    .line 971
    invoke-static {p2}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;->newInstanceForHeader(I)Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;

    move-result-object v3

    .line 973
    .local v3, dialogFragment:Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "UnsavedChangesDialogFragment"

    invoke-virtual {v3, v4, v5}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1017
    .end local v2           #changed:Z
    .end local v3           #dialogFragment:Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;
    :goto_0
    return-void

    .line 978
    :cond_0
    sget-boolean v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-ne v4, v7, :cond_1

    .line 979
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 980
    .local v0, accountid:J
    sget-object v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 981
    sget-object v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 985
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    .line 986
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 989
    .end local v0           #accountid:J
    :cond_1
    if-nez p2, :cond_4

    .line 990
    sput-boolean v7, Lcom/android/email/activity/setup/AccountSettingsXL;->mPrevPreference:Z

    .line 996
    :goto_2
    if-nez p2, :cond_5

    sget-boolean v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-nez v4, :cond_5

    .line 997
    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    .line 998
    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 999
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->enableDebugMenu()V

    .line 1006
    :cond_2
    :goto_3
    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    iput-wide v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccountId:J

    .line 1007
    iput p2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentHeaderPosition:I

    .line 1016
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    .line 983
    .restart local v0       #accountid:J
    :cond_3
    sget-object v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 992
    .end local v0           #accountid:J
    :cond_4
    sput-boolean v6, Lcom/android/email/activity/setup/AccountSettingsXL;->mPrevPreference:Z

    goto :goto_2

    .line 1002
    :cond_5
    iput v6, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    goto :goto_3
.end method

.method public onIncomingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 7
    .parameter

    .prologue
    .line 1146
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v0

    .line 1147
    if-eqz v0, :cond_0

    .line 1148
    invoke-virtual {v0}, Lcom/android/email/mail/Store;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v0

    .line 1149
    if-eqz v0, :cond_0

    .line 1150
    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1151
    const-class v1, Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1152
    const-class v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getSettingsModeArgs()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f080135

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1155
    :cond_1
    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    const-class v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getSettingsModeArgs()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f080198

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    const-string v1, "Email"

    const-string v2, "Error while trying to invoke store settings."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onIncomingSettingsForSeven(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1215
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1216
    const-class v0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080135

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1218
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 434
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-object v1, Lcom/android/email/activity/setup/AccountSettingsXL;->SECRET_KEY_CODES:[I

    iget v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_1

    .line 435
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    .line 436
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    sget-object v1, Lcom/android/email/activity/setup/AccountSettingsXL;->SECRET_KEY_CODES:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 437
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    .line 438
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->enableDebugMenu()V

    .line 443
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 441
    :cond_1
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 476
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 521
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 523
    :cond_0
    :goto_0
    return v1

    .line 485
    :sswitch_0
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 486
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 488
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onBackPressed()V

    goto :goto_0

    .line 491
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onAddNewAccount()V

    goto :goto_0

    .line 495
    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onDeleteMode()V

    .line 496
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 497
    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 508
    :sswitch_3
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    if-nez v2, :cond_0

    .line 509
    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    .line 510
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onDeleteAccount()V

    goto :goto_0

    .line 516
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onDeleteModeCancel()V

    goto :goto_0

    .line 476
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f1002ac -> :sswitch_2
        0x7f1002ae -> :sswitch_1
        0x7f1002b2 -> :sswitch_3
        0x7f1002b3 -> :sswitch_4
    .end sparse-switch
.end method

.method public onOutgoingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 7
    .parameter

    .prologue
    .line 1172
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v0

    .line 1173
    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {v0}, Lcom/android/email/mail/Sender;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v0

    .line 1175
    if-eqz v0, :cond_0

    .line 1176
    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1177
    const-class v1, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    const-class v0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getSettingsModeArgs()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f080136

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    const-string v1, "Email"

    const-string v2, "Error while trying to invoke sender settings."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 401
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mResumed:Z

    .line 403
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const v2, 0x7f1002b2

    const/4 v1, 0x1

    .line 462
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 464
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-ne v0, v1, :cond_0

    .line 465
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 466
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 471
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->shouldShowNewAccount()Z

    move-result v0

    return v0

    .line 468
    :cond_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 347
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mIsRotating:Z

    .line 349
    const-string v4, "com.android.email.activity.AccountSettingXL.deleteMode"

    sget-boolean v5, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    .line 351
    const-string v4, "com.android.email.activity.AccountSettingXL.ACCOUNTDELET_ITEM "

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountDeleteItem:[J

    .line 352
    sget-object v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 353
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountDeleteItem:[J

    .local v1, arr$:[J
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-wide v4, v1, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 354
    .local v0, AccountId:Ljava/lang/Long;
    sget-object v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    .end local v0           #AccountId:Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 361
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 367
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 371
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 373
    .local v7, count:I
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 375
    if-eqz v6, :cond_0

    .line 376
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_0
    if-nez v7, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->finish()V

    .line 386
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 387
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mResumed:Z

    .line 389
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    .line 397
    :cond_2
    return-void

    .line 375
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 376
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_3
    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8
    .parameter "outState"

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 329
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/email/activity/setup/AccountSettingsXL;->mIsRotating:Z

    .line 331
    const-string v5, "com.android.email.activity.AccountSettingXL.deleteMode"

    sget-boolean v6, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 333
    sget-object v5, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 334
    .local v1, cnt:I
    const/4 v2, 0x0

    .line 335
    .local v2, i:I
    new-array v5, v1, [J

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountDeleteItem:[J

    .line 336
    sget-object v5, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 337
    .local v0, AccountId:Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountDeleteItem:[J

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v5, v2

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 339
    .end local v0           #AccountId:Ljava/lang/Long;
    :cond_0
    const-string v5, "com.android.email.activity.AccountSettingXL.ACCOUNTDELET_ITEM "

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountDeleteItem:[J

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 340
    return-void
.end method

.method public onSyncScheduleSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f08043d

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1190
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1192
    :goto_0
    if-nez v0, :cond_1

    .line 1193
    const-class v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1201
    :goto_1
    return-void

    :cond_0
    move v0, v6

    .line 1190
    goto :goto_0

    .line 1196
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1197
    const-class v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x3ec

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 1704
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1705
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    .line 1709
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1710
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1709
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1716
    .end local v0           #i:I
    :cond_0
    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    invoke-direct {v1, p0, p0, v2}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Landroid/content/Context;Ljava/util/List;)V

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1717
    return-void
.end method

.method public updateAccounts()V
    .locals 5

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 686
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    .line 689
    :cond_0
    return-void
.end method
