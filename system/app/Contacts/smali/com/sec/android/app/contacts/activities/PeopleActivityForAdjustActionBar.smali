.class public Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;
.super Lcom/android/contacts/ContactsActivity;
.source "PeopleActivityForAdjustActionBar.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$ReplaceContactListListener;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionCode:I

.field private mCustomDeleteView:Landroid/view/View;

.field private mCustomSearchView:Landroid/view/View;

.field private mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

.field private mDeleteContactsDialog:Landroid/app/AlertDialog;

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

.field private mSearchViewLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mActionCode:I

    .line 72
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->showDeleteContactsDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->setButtonClickable(Z)V

    return-void
.end method

.method private setButtonClickable(Z)V
    .locals 3
    .parameter "clickable"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d009e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, buttonView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 175
    .end local v0           #buttonView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setUpActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 195
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040047

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mCustomSearchView:Landroid/view/View;

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 198
    .local v2, searchViewWidth:I
    if-nez v2, :cond_0

    .line 199
    const/4 v2, -0x1

    .line 201
    :cond_0
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

    .line 205
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040018

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mCustomDeleteView:Landroid/view/View;

    .line 207
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f0d009e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 208
    .local v1, saveMenuItem:Landroid/view/View;
    new-instance v3, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$2;-><init>(Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mCustomDeleteView:Landroid/view/View;

    const v4, 0x7f0d009f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, revertMenuItem:Landroid/view/View;
    new-instance v3, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$3;-><init>(Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    return-void
.end method

.method private showDeleteContactsDialog()V
    .locals 4

    .prologue
    .line 179
    const v1, 0x7f0a0215

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0038

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$1;-><init>(Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mDeleteContactsDialog:Landroid/app/AlertDialog;

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mDeleteContactsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 192
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 228
    iget v1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mActionCode:I

    sparse-switch v1, :sswitch_data_0

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    .line 262
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d00e6

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 263
    return-void

    .line 230
    :sswitch_0
    new-instance v0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;-><init>()V

    .line 231
    .local v0, fragment:Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 232
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 233
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setSelectionVisible(Z)V

    .line 234
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 235
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    invoke-direct {v1, v4}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 236
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setDirectorySearchMode(I)V

    .line 237
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setMultiSelectEnabled(Z)V

    goto :goto_0

    .line 242
    .end local v0           #fragment:Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;
    :sswitch_1
    new-instance v0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;-><init>()V

    .line 243
    .restart local v0       #fragment:Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 244
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 245
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setSelectionVisible(Z)V

    .line 246
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 247
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    invoke-direct {v1, v4}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 248
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setDirectorySearchMode(I)V

    .line 249
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 250
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setMultiSelectEnabled(Z)V

    goto/16 :goto_0

    .line 228
    nop

    :sswitch_data_0
    .sparse-switch
        0x14a -> :sswitch_0
        0x154 -> :sswitch_1
    .end sparse-switch
.end method

.method public getActionCode()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mActionCode:I

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 77
    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    .line 78
    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->setupActionListener()V

    .line 81
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0a01ac

    const/16 v2, 0x1e

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    if-eqz p1, :cond_0

    .line 89
    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mActionCode:I

    .line 90
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mMode:I

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mActionCode:I

    .line 96
    const v0, 0x7f0400ae

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->configureListFragment()V

    .line 100
    const v0, 0x7f0d00e8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mSearchViewLayout:Landroid/view/View;

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->setUpActionBar()V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 110
    iget v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mActionCode:I

    const/16 v1, 0x14a

    if-ne v0, v1, :cond_2

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mCustomSearchView:Landroid/view/View;

    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mSearchView:Landroid/widget/SearchView;

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v6}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v4}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mCustomSearchView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 151
    :cond_1
    :goto_0
    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->setButtonClickable(Z)V

    .line 152
    return-void

    .line 131
    :cond_2
    iget v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mActionCode:I

    const/16 v1, 0x154

    if-ne v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mCustomDeleteView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v5, v5, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mSearchViewLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 140
    const v0, 0x7f0d00ea

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mSearchView:Landroid/widget/SearchView;

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v6}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 275
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 276
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 159
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->finish()V

    .line 160
    const/4 v0, 0x1

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .parameter "newText"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setSearchMode(Z)V

    .line 286
    return v2

    :cond_0
    move v1, v2

    .line 285
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 268
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 270
    return-void
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$ReplaceContactListListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$ReplaceContactListListener;-><init>(Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar;Lcom/sec/android/app/contacts/activities/PeopleActivityForAdjustActionBar$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->setOnReplaceContactActionListener(Lcom/android/contacts/list/OnReplaceContactActionListener;)V

    .line 298
    :cond_0
    return-void
.end method
