.class public Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;,
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;,
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;
    }
.end annotation


# static fields
.field private static mCP_Start:I

.field private static mDialog:Landroid/app/ProgressDialog;

.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mActionCode:I

.field private mCanceled:Z

.field private mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

.field private mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field protected mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchView:Landroid/widget/SearchView;

.field public mToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->sEmptyContentValues:Landroid/content/ContentValues;

    .line 641
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 839
    new-instance v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 106
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setButtonClickable(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$800()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$802(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    sput-object p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private configureActivityTitle(Landroid/app/ActionBar;)V
    .locals 2
    .parameter "actionBar"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 229
    .local v0, actionCode:I
    sparse-switch v0, :sswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 231
    :sswitch_0
    const v1, 0x7f0a027d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    :sswitch_1
    const v1, 0x7f0a00ba

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 229
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x136 -> :sswitch_1
    .end sparse-switch
.end method

.method private setButtonClickable(Z)V
    .locals 2
    .parameter "clickable"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 337
    :cond_0
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 288
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 331
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    .line 293
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    sparse-switch v1, :sswitch_data_0

    .line 319
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :sswitch_0
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;-><init>()V

    .line 296
    .local v0, fragment:Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 297
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 298
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectionVisible(Z)V

    .line 299
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 300
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 301
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    .line 302
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 322
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    .line 323
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 324
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 326
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setMultiSelectEnabled(Z)V

    .line 329
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d00e6

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 307
    .end local v0           #fragment:Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    :sswitch_1
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;-><init>()V

    .line 308
    .restart local v0       #fragment:Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 309
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 310
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectionVisible(Z)V

    .line 311
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 312
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/16 v2, -0xb

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 313
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    .line 314
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_1

    .line 293
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x136 -> :sswitch_1
    .end sparse-switch
.end method

.method public getActionCode()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    return v0
.end method

.method public isSIMEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 361
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    .line 362
    .local v1, isSIMEnabled:Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 365
    .local v0, isAirplaneMode:Z
    :goto_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    .end local v0           #isAirplaneMode:Z
    :cond_0
    move v0, v3

    .line 362
    goto :goto_0

    .restart local v0       #isAirplaneMode:Z
    :cond_1
    move v2, v3

    .line 365
    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 480
    if-ne p2, v3, :cond_0

    .line 481
    const-string v2, "namecard_string"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, rtData:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 483
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "namecard_result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 484
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 486
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #rtData:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 110
    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    .line 111
    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setupActionListener()V

    .line 114
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 243
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    if-eqz v0, :cond_0

    .line 245
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 246
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    if-eqz v0, :cond_1

    .line 249
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 250
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 255
    :cond_2
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 471
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;

    move-result-object v0

    .line 472
    .local v0, menuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;
    if-eqz v0, :cond_0

    .line 473
    invoke-interface {v0, p1}, Lcom/android/contacts/widget/ContextMenuAdapter;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 475
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedState"

    .prologue
    const/16 v13, 0x1e

    const/4 v12, 0x0

    const/4 v11, -0x2

    .line 118
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    if-eqz p1, :cond_0

    .line 121
    const-string v8, "actionCode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    .line 122
    const-string v8, "mode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    .line 126
    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 127
    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v8

    if-nez v8, :cond_1

    .line 128
    invoke-virtual {p0, v12}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setResult(I)V

    .line 129
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 204
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v8, "DTM"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "MAX"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "TMZ"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "COS"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "CRO"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "CP_Start"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCP_Start:I

    .line 139
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v5

    .line 140
    .local v5, redirect:Landroid/content/Intent;
    if-eqz v5, :cond_4

    .line 142
    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    goto :goto_0

    .line 147
    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactsRequest;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, accountName:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v8}, Lcom/android/contacts/list/ContactsRequest;->getAccountType()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 151
    new-instance v8, Landroid/accounts/Account;

    invoke-direct {v8, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;

    .line 154
    :cond_5
    const v8, 0x7f0400bf

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setContentView(I)V

    .line 156
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->configureListFragment()V

    .line 160
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 161
    .local v2, actionBar:Landroid/app/ActionBar;
    if-eqz v2, :cond_6

    .line 162
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 164
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f040018

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 165
    .local v3, customActionBarView:Landroid/view/View;
    const v8, 0x7f0d009e

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 166
    .local v7, saveMenuItem:Landroid/view/View;
    new-instance v8, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v8, 0x7f0d009f

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 175
    .local v6, revertMenuItem:Landroid/view/View;
    new-instance v8, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$2;

    invoke-direct {v8, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {v2, v13, v13}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 189
    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v11, v11, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 193
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->configureActivityTitle(Landroid/app/ActionBar;)V

    .line 196
    .end local v3           #customActionBarView:Landroid/view/View;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #revertMenuItem:Landroid/view/View;
    .end local v7           #saveMenuItem:Landroid/view/View;
    :cond_6
    const v8, 0x7f0d00ea

    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SearchView;

    iput-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    .line 197
    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 198
    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 199
    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->clearFocus()V

    .line 200
    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const v9, 0x7f0a01ac

    invoke-virtual {p0, v9}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 203
    invoke-direct {p0, v12}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setButtonClickable(Z)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 259
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    if-eqz v1, :cond_0

    .line 261
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 262
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    if-eqz v1, :cond_1

    .line 265
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 266
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    .line 269
    :cond_1
    const-string v1, "DTM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MAX"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "TMZ"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "COS"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CRO"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x136

    if-ne v1, v2, :cond_3

    .line 273
    sget v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCP_Start:I

    if-ne v1, v3, :cond_3

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "SIM_IMPORT_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 279
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 282
    :cond_4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 854
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 861
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 856
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 857
    const/4 v0, 0x1

    goto :goto_0

    .line 854
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 215
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    if-eqz v0, :cond_0

    .line 217
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 218
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    if-eqz v0, :cond_1

    .line 221
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 222
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    .line 224
    :cond_1
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .parameter "newText"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSearchMode(Z)V

    .line 352
    return v2

    :cond_0
    move v1, v2

    .line 351
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    const-string v0, "mode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    return-void
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setOnSIMContactPickerActionListener(Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;)V

    .line 346
    return-void

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
