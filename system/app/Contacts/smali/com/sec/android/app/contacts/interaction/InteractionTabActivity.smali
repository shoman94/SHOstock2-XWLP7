.class public Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "InteractionTabActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
.implements Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;,
        Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;
    }
.end annotation


# static fields
.field private static SEND_ALL_NAMECARDS:I

.field private static SEND_INDIVIDUAL_NAMECARDS:I

.field private static mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

.field private static sendType:I


# instance fields
.field private final CONTACTS_TAG:Ljava/lang/String;

.field private final FAVORITES_TAG:Ljava/lang/String;

.field private final GROUPS_TAG:Ljava/lang/String;

.field private final LOGS_TAG:Ljava/lang/String;

.field count:I

.field private mActionBar:Landroid/app/ActionBar;

.field protected mActionCode:I

.field private mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

.field private mContactsMode:Z

.field private mCurrentCount:I

.field private mDisplayTab:Z

.field protected mExtraValue:I

.field private mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

.field private mFavoritesMode:Z

.field private mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

.field protected mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsRecreatedInstance:Z

.field private mLimitedCount:I

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

.field protected mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSpeedDial:Z

.field public mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

.field protected saveMenuItem:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_ALL_NAMECARDS:I

    .line 135
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_INDIVIDUAL_NAMECARDS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->count:I

    .line 142
    const-string v0, "tab-contacts"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->CONTACTS_TAG:Ljava/lang/String;

    .line 143
    const-string v0, "tab-groups"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->GROUPS_TAG:Ljava/lang/String;

    .line 144
    const-string v0, "tab-logs"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->LOGS_TAG:Ljava/lang/String;

    .line 145
    const-string v0, "tab-favorites"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->FAVORITES_TAG:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_INDIVIDUAL_NAMECARDS:I

    return v0
.end method

.method private actionbarTitle()Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f0a0010

    .line 431
    const/4 v1, 0x0

    .line 433
    .local v1, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 434
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #title:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #title:Ljava/lang/String;
    move-object v2, v1

    .line 450
    .end local v1           #title:Ljava/lang/String;
    .local v2, title:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 438
    .end local v2           #title:Ljava/lang/String;
    .restart local v1       #title:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 439
    .local v0, actionCode:I
    sparse-switch v0, :sswitch_data_0

    .line 448
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 450
    .end local v1           #title:Ljava/lang/String;
    .restart local v2       #title:Ljava/lang/String;
    goto :goto_0

    .line 444
    .end local v2           #title:Ljava/lang/String;
    .restart local v1       #title:Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 445
    goto :goto_1

    .line 439
    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
    .end sparse-switch
.end method

.method private configureContactsFragments()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setMultiSelectEnabled(Z)V

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSearchMode(Z)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setLegacyCompatibilityMode(Z)V

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setMMSinformation(III)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSpeedDial(Z)V

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setDirectorySearchMode(I)V

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setDirectoryResultLimit(I)V

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setDirectorySearchMode(I)V

    goto :goto_0
.end method

.method private configureFavoritesFragments()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setMultiSelectEnabled(Z)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/4 v2, -0x4

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSearchMode(Z)V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setLegacyCompatibilityMode(Z)V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setMMSinformation(III)V

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setDirectorySearchMode(I)V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setDirectoryResultLimit(I)V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setDirectorySearchMode(I)V

    goto :goto_0
.end method

.method private configureFragments(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 312
    const-string v1, "InteractionTabActivity"

    const-string v2, "configureFragments"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureContactsFragments()V

    .line 315
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v1, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureFavoritesFragments()V

    .line 319
    :cond_0
    const/4 v0, 0x0

    .line 321
    .local v0, tabToOpen:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v1, :cond_1

    .line 322
    move-object v0, p1

    .line 325
    :cond_1
    if-eqz v0, :cond_2

    .line 326
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setCurrentTab(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V

    .line 327
    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    .line 329
    :cond_2
    return-void
.end method

.method private createViewsAndFragments(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f0d00e6

    .line 247
    const-string v2, "InteractionTabActivity"

    const-string v3, "createViewsAndFragments"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarsetup()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    .line 250
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_0

    .line 251
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    sput-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    .line 252
    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    .line 253
    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setContactListFilterController(Lcom/android/contacts/list/ContactListFilterController;)V

    .line 255
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_1

    .line 256
    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getCurrentTab()Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 260
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 263
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const-string v2, "tab-contacts"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    .line 266
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_2

    .line 267
    const-string v2, "tab-groups"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .line 268
    const-string v2, "tab-logs"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 269
    const-string v2, "tab-favorites"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    .line 275
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-nez v2, :cond_4

    .line 276
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    .line 277
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_3

    .line 278
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .line 279
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-direct {v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 280
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    .line 282
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_4

    .line 283
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v2, v3, :cond_5

    .line 284
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    const-string v3, "tab-contacts"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 285
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    const-string v3, "tab-favorites"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 290
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    const-string v3, "tab-groups"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    const-string v3, "tab-logs"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 295
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 296
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 297
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 298
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 300
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_6

    .line 301
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 302
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 308
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureFragments(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V

    .line 309
    return-void

    .line 287
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    const-string v3, "tab-favorites"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 288
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    const-string v3, "tab-contacts"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 304
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2, v4, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 1015
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1016
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1017
    return-void
.end method

.method private makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, data:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 874
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 875
    .local v1, keyStrings:[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, dataStrings:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 879
    .local v2, resultString:Ljava/lang/StringBuilder;
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 880
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 890
    :cond_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private updateFragmentVisibility()V
    .locals 6

    .prologue
    .line 557
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 560
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 561
    .local v1, ft:Landroid/app/FragmentTransaction;
    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->$SwitchMap$com$sec$android$app$contacts$interaction$InteractionActionBarAdapter$TabState:[I

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 635
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 636
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 637
    :goto_1
    return-void

    .line 563
    :pswitch_0
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility->GROUPS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    iget v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->setMMSinformation(III)V

    .line 567
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->clearSelectedArray()V

    .line 568
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->reloadData()V

    .line 569
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->clearSelectedArray()V

    .line 570
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->reloadData()V

    .line 573
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 574
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 575
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 576
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto :goto_0

    .line 579
    :pswitch_1
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility->CONTACTS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 582
    :cond_0
    const-string v2, "InteractionTabActivity"

    const-string v3, "mContactsFragment null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 585
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureContactsFragments()V

    .line 586
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSearchQuery()V

    .line 589
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->clearSelectedArray()V

    .line 590
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->reloadData()V

    .line 593
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 594
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 595
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 596
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 599
    :pswitch_2
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility->FAVORITES"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 602
    :cond_2
    const-string v2, "InteractionTabActivity"

    const-string v3, "mFavoritesFragment null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 605
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureFavoritesFragments()V

    .line 606
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSearchQuery()V

    .line 609
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->clearSelectedArray()V

    .line 610
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->reloadData()V

    .line 613
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 614
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 615
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 616
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 619
    :pswitch_3
    const-string v2, "InteractionTabActivity"

    const-string v3, "updateFragmentVisibility->LOGS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->clearSelectedArray()V

    .line 623
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->reloadData()V

    .line 624
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->clearSelectedArray()V

    .line 625
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->reloadData()V

    .line 626
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->clearSelectedArray()V

    .line 629
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 630
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 631
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 632
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public actionbarsetup()Landroid/app/ActionBar;
    .locals 10

    .prologue
    const/16 v9, 0x1e

    const/4 v8, -0x2

    .line 365
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 366
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 367
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 370
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040018

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 373
    .local v3, customActionBarView:Landroid/view/View;
    const v6, 0x7f0d009e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->saveMenuItem:Landroid/view/View;

    .line 375
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactsRequest;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 376
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->saveMenuItem:Landroid/view/View;

    new-instance v7, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    :goto_0
    const v6, 0x7f0d009f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 397
    .local v5, revertMenuItem:Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setDoneButtonClickable(Z)V

    .line 405
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarTitle()Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, actionbartitle:Ljava/lang/String;
    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 410
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 413
    const-string v2, ""

    .line 414
    .local v2, currentLang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 415
    const-string v6, "he"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "iw"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 417
    :cond_0
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x13

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 426
    .end local v1           #actionbartitle:Ljava/lang/String;
    .end local v2           #currentLang:Ljava/lang/String;
    .end local v3           #customActionBarView:Landroid/view/View;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #revertMenuItem:Landroid/view/View;
    :cond_1
    :goto_1
    return-object v0

    .line 394
    .restart local v3       #customActionBarView:Landroid/view/View;
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->saveMenuItem:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 421
    .restart local v1       #actionbartitle:Ljava/lang/String;
    .restart local v2       #currentLang:Ljava/lang/String;
    .restart local v5       #revertMenuItem:Landroid/view/View;
    :cond_3
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 988
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 990
    packed-switch p1, :pswitch_data_0

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 992
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 993
    if-eqz p3, :cond_1

    .line 994
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 996
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_0

    .line 1002
    :pswitch_1
    if-ne p2, v3, :cond_0

    .line 1003
    const-string v0, "namecard_string"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1005
    const-string v2, "namecard_result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 1006
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_0

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    const/4 v2, 0x1

    .line 476
    const-string v0, "InteractionTabActivity"

    const-string v1, "onAttachFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_a

    .line 478
    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-eqz v0, :cond_8

    .line 479
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_7

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsMode:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesMode:Z

    if-eqz v0, :cond_4

    .line 481
    :cond_1
    const-string v0, "InteractionTabActivity"

    const-string v1, "mContactsFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    .line 483
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsMode:Z

    .line 493
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setupActionListener()V

    .line 508
    :cond_3
    :goto_1
    return-void

    .line 484
    .restart local p1
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->FAVORITES:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesMode:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsMode:Z

    if-eqz v0, :cond_2

    .line 485
    :cond_6
    const-string v0, "InteractionTabActivity"

    const-string v1, "mFavoritesFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    .line 487
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesMode:Z

    goto :goto_0

    .line 490
    .restart local p1
    :cond_7
    const-string v0, "InteractionTabActivity"

    const-string v1, "mContactsFragment-single"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    goto :goto_0

    .line 495
    .restart local p1
    :cond_8
    instance-of v0, p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    if-eqz v0, :cond_9

    .line 496
    const-string v0, "InteractionTabActivity"

    const-string v1, "mGroupsFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    check-cast p1, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    goto :goto_1

    .line 499
    .restart local p1
    :cond_9
    instance-of v0, p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    if-eqz v0, :cond_3

    .line 500
    const-string v0, "InteractionTabActivity"

    const-string v1, "mCallLogFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    check-cast p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    goto :goto_1

    .line 506
    .restart local p1
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setupActionListener()V

    goto :goto_1
.end method

.method public onContactListFilterChanged()V
    .locals 2

    .prologue
    .line 654
    const-string v0, "InteractionTabActivity"

    const-string v1, "notifyContactListFilterChanged -> onContactListFilterChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mGroupsFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0xfa

    const/4 v2, 0x0

    .line 157
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const-string v1, "InteractionTabActivity"

    const-string v3, "onCreate"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v1, Lcom/android/contacts/list/ContactListFilterController;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactListFilterController;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 162
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1, p0}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 167
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    .line 168
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z

    if-eqz v1, :cond_1

    .line 169
    const-string v1, "InteractionTabActivity"

    const-string v2, "mIsRecreatedInstance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v1, "actionCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    .line 171
    const-string v1, "extraValue"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    .line 172
    const-string v1, "maxRecipientCount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    .line 173
    const-string v1, "existingRecipientCount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    .line 174
    const-string v1, "from_speed_dial"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    .line 175
    const-string v1, "displayTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    .line 226
    :goto_1
    const-string v1, "InteractionTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActionCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v1, "InteractionTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLimitedCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v1, "InteractionTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v0

    .line 231
    .local v0, redirect:Landroid/content/Intent;
    if-eqz v0, :cond_6

    .line 233
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 244
    .end local v0           #redirect:Landroid/content/Intent;
    :goto_2
    return-void

    :cond_0
    move v1, v2

    .line 167
    goto/16 :goto_0

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    .line 183
    const-string v1, "InteractionTabActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mExtraValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(I)V

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_2

    .line 194
    :cond_2
    new-instance v1, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    .line 197
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v3, 0x96

    if-ne v1, v3, :cond_3

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "maxRecipientCount"

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    .line 217
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "existingRecipientCount"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "from_speed_dial"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getTabMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    goto/16 :goto_1

    .line 209
    :cond_3
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v3, 0xa0

    if-ne v1, v3, :cond_4

    .line 210
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "maxRecipientCount"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto :goto_3

    .line 211
    :cond_4
    sget v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I

    sget v3, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_ALL_NAMECARDS:I

    if-ne v1, v3, :cond_5

    .line 212
    const v1, 0xffff

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto :goto_3

    .line 214
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "maxRecipientCount"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    goto :goto_3

    .line 238
    .restart local v0       #redirect:Landroid/content/Intent;
    :cond_6
    const v1, 0x7f04003b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setContentView(I)V

    .line 242
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->createViewsAndFragments(Landroid/os/Bundle;)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 471
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 472
    const-string v0, "InteractionTabActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 457
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 465
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 459
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 460
    const/4 v0, 0x1

    goto :goto_0

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 544
    const-string v0, "InteractionTabActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 546
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .parameter "newText"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 671
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-nez v2, :cond_1

    .line 687
    :cond_0
    :goto_0
    return v1

    .line 674
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v2, :cond_5

    .line 675
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v2, v3, :cond_3

    .line 676
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 677
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSearchMode(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 679
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->FAVORITES:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v2, v3, :cond_0

    .line 680
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 681
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSearchMode(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 684
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 685
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    :goto_3
    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setSearchMode(Z)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 692
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 529
    const-string v0, "InteractionTabActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 535
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_0

    .line 536
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBarAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setListener(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;)V

    .line 537
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateFragmentVisibility()V

    .line 540
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 641
    const-string v0, "InteractionTabActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 643
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 644
    const-string v0, "extraValue"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 645
    const-string v0, "maxRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mLimitedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 646
    const-string v0, "existingRecipientCount"

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCurrentCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 647
    const-string v0, "from_speed_dial"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSpeedDial:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 648
    const-string v0, "displayTab"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 649
    const-string v0, "currentTab"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 650
    return-void
.end method

.method public onSelectedTabChanged(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V
    .locals 2
    .parameter "Tab"

    .prologue
    .line 550
    const-string v0, "InteractionTabActivity"

    const-string v1, "onSelectedTabChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    .line 552
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->updateFragmentVisibility()V

    .line 553
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setDoneButtonClickable(Z)V

    .line 554
    return-void
.end method

.method public returnPickPhoneResult(Landroid/net/Uri;)V
    .locals 16
    .parameter "data"

    .prologue
    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 794
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 796
    .local v7, cursor:Landroid/database/Cursor;
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 797
    .local v9, ididx:I
    const-string v2, "display_name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 799
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v15, rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 801
    .local v14, result:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 803
    .local v8, id:Ljava/lang/String;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 804
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 805
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    const/16 v2, 0x3b

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 808
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "contact_id =?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 810
    .local v13, phonecursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 811
    const-string v2, "data1"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 812
    .local v12, numidx:I
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 813
    .local v11, num:Ljava/lang/String;
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    if-eqz v11, :cond_0

    .line 817
    .end local v11           #num:Ljava/lang/String;
    .end local v12           #numidx:I
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 820
    .end local v13           #phonecursor:Landroid/database/Cursor;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 822
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 824
    .local v10, intent:Landroid/content/Intent;
    const-string v2, "result"

    invoke-virtual {v10, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 825
    const-string v2, "datatype"

    const-string v3, "contact"

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_result"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 829
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 830
    const-string v2, "index"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "index"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 831
    const-string v2, "phone_data_id"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v10, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 833
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 834
    return-void
.end method

.method public returnPickPhoneResult(Landroid/net/Uri;J)V
    .locals 7
    .parameter "data"
    .parameter "dataid"

    .prologue
    .line 839
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v2, rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    .local v1, result:Ljava/lang/StringBuilder;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 846
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "result"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 847
    const-string v3, "datatype"

    const-string v4, "contact"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "has_result"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 850
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 851
    const-string v3, "index"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "index"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 852
    const-string v3, "phone_data_id"

    invoke-virtual {v0, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 854
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 855
    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 917
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 918
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 921
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 923
    return-void
.end method

.method public returnPickerResult(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 900
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 902
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 903
    const-string v1, "CONTACT_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 904
    const-string v1, "mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 905
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :goto_0
    return-void

    .line 911
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 912
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 913
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 906
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public returnPickerResult(Ljava/util/HashMap;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 860
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v4, resultData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 864
    .local v2, line:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, ";"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 865
    .local v3, result:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 868
    .end local v2           #line:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #result:Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 869
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "result"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 870
    const-string v5, "datatype"

    const-string v6, "contact"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 872
    return-void
.end method

.method public sendVcardByMultiUriIntent(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 960
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 962
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 963
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 964
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 967
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xfa

    if-ne v0, v2, :cond_1

    .line 968
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 969
    const-string v2, "text/x-vcard"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 972
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 973
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 984
    :goto_1
    return-void

    .line 974
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_2

    .line 975
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 976
    const-string v2, "text/x-vcard"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 977
    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 979
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 980
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_1

    .line 982
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled action code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendVcardIntent(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 932
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 936
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 939
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xfa

    if-ne v1, v2, :cond_1

    .line 940
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 941
    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 942
    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 944
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setResult(ILandroid/content/Intent;)V

    .line 945
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 956
    :goto_1
    return-void

    .line 946
    :cond_1
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_2

    .line 947
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 948
    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 949
    const-string v2, "vcard"

    const-string v3, "vcard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 950
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 951
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 952
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_1

    .line 954
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled action code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setDoneButtonClickable(Z)V
    .locals 2
    .parameter "clickable"

    .prologue
    .line 666
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->saveMenuItem:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 667
    return-void

    .line 666
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 517
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 525
    :cond_0
    return-void

    .line 515
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
