.class public Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "FavoriteInterfaceActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionCode:I

.field private mCustomActionView:Landroid/view/View;

.field private mCustomSearchView:Landroid/view/View;

.field private mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

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
    .line 30
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setButtonClickable(Z)V

    return-void
.end method

.method private setButtonClickable(Z)V
    .locals 3
    .parameter "clickable"

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d009e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 220
    .local v0, buttonView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 224
    .end local v0           #buttonView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setUpActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 159
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040047

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mCustomSearchView:Landroid/view/View;

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 162
    .local v2, searchViewWidth:I
    if-nez v2, :cond_0

    .line 163
    const/4 v2, -0x1

    .line 165
    :cond_0
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

    .line 167
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040018

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mCustomActionView:Landroid/view/View;

    .line 169
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mCustomActionView:Landroid/view/View;

    const v4, 0x7f0d009e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 170
    .local v1, saveMenuItem:Landroid/view/View;
    new-instance v3, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mCustomActionView:Landroid/view/View;

    const v4, 0x7f0d009f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, revertMenuItem:Landroid/view/View;
    new-instance v3, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 114
    iget v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    packed-switch v3, :pswitch_data_0

    .line 149
    :goto_0
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;-><init>()V

    .line 150
    .local v0, fragment:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0d00e6

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 151
    return-void

    .line 116
    .end local v0           #fragment:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 117
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "has_phone_number"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 118
    .local v2, withNumber:Z
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;-><init>()V

    .line 119
    .restart local v0       #fragment:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 120
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 121
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSelectionVisible(Z)V

    .line 122
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 123
    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDirectorySearchMode(I)V

    .line 124
    if-eqz v2, :cond_0

    .line 125
    new-instance v3, Lcom/android/contacts/list/ContactListFilter;

    const/16 v4, -0xf

    invoke-direct {v3, v4}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 132
    :goto_1
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 133
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v3, v5}, Lcom/android/contacts/list/ContactEntryListFragment;->setMultiSelectEnabled(Z)V

    goto :goto_0

    .line 127
    :cond_0
    new-instance v3, Lcom/android/contacts/list/ContactListFilter;

    const/16 v4, -0xd

    invoke-direct {v3, v4}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_1

    .line 137
    .end local v0           #fragment:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #withNumber:Z
    :pswitch_1
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;-><init>()V

    .line 138
    .restart local v0       #fragment:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 139
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 140
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSelectionVisible(Z)V

    .line 141
    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 142
    new-instance v3, Lcom/android/contacts/list/ContactListFilter;

    const/16 v4, -0xe

    invoke-direct {v3, v4}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 143
    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDirectorySearchMode(I)V

    .line 144
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 145
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v3, v5}, Lcom/android/contacts/list/ContactEntryListFragment;->setMultiSelectEnabled(Z)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x15e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getActionCode()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 49
    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 51
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setupActionListener()V

    .line 53
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x1e

    const/16 v5, 0x15

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 58
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    if-eqz p1, :cond_0

    .line 61
    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    .line 62
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMode:I

    .line 65
    :cond_0
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    .line 71
    const v0, 0x7f04006d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setContentView(I)V

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->configureListFragment()V

    .line 75
    const v0, 0x7f0d00e8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchViewLayout:Landroid/view/View;

    .line 77
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setUpActionBar()V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 82
    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    const/16 v1, 0x15e

    if-ne v0, v1, :cond_2

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mCustomActionView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v3, v3, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchViewLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    const v0, 0x7f0d00ea

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0a01ac

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 110
    :cond_1
    :goto_0
    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setButtonClickable(Z)V

    .line 111
    return-void

    .line 97
    :cond_2
    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    const/16 v1, 0x15f

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mCustomActionView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v3, v3, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchViewLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 194
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 196
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->finish()V

    .line 197
    const/4 v0, 0x1

    goto :goto_0

    .line 194
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

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSearchMode(Z)V

    .line 208
    return v2

    :cond_0
    move v1, v2

    .line 207
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setOnActionBarButtonUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;)V

    .line 230
    :cond_0
    return-void
.end method
