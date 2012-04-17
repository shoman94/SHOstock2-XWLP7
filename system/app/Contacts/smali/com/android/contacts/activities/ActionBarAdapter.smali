.class public Lcom/android/contacts/activities/ActionBarAdapter;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;,
        Lcom/android/contacts/activities/ActionBarAdapter$TabState;,
        Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAB:Lcom/android/contacts/activities/ActionBarAdapter$TabState;


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private mAllCustomTabView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

.field private mCustomDeleteView:Landroid/view/View;

.field private mCustomSearchView:Landroid/view/View;

.field private mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

.field private mDeleteMode:Z

.field private mFavoCustomTabView:Landroid/view/View;

.field private mGroupCustomTabView:Landroid/view/View;

.field private mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mQueryString:Ljava/lang/String;

.field private mRestoreFromDeleteMode:Z

.field private mSearchMode:Z

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowHomeIcon:Z

.field private final mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    sput-object v0, Lcom/android/contacts/activities/ActionBarAdapter;->DEFAULT_TAB:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;)V
    .locals 9
    .parameter "context"
    .parameter "listener"
    .parameter "actionBar"

    .prologue
    const v4, 0x7f040002

    const/4 v3, 0x0

    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    invoke-direct {v0, p0, v3}, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    .line 120
    sget-object v0, Lcom/android/contacts/activities/ActionBarAdapter;->DEFAULT_TAB:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    .line 126
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 128
    iput-object p3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 129
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    .line 131
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeIcon:Z

    .line 134
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040047

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchView:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 138
    .local v8, searchViewWidth:I
    if-nez v8, :cond_0

    .line 139
    const/4 v8, -0x1

    .line 141
    :cond_0
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v8, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

    .line 142
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchView:Landroid/view/View;

    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    .line 148
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 153
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 156
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040018

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v1, 0x7f0d009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 159
    .local v7, saveMenuItem:Landroid/view/View;
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ActionBarAdapter$1;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    const v1, 0x7f0d009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 166
    .local v6, revertMenuItem:Landroid/view/View;
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ActionBarAdapter$2;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGroupCustomTabView:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mAllCustomTabView:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFavoCustomTabView:Landroid/view/View;

    .line 177
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mGroupCustomTabView:Landroid/view/View;

    sget-object v2, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    const v3, 0x7f0201c6

    const v4, 0x7f0a010b

    const v5, 0x7f0a0068

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/activities/ActionBarAdapter;->addTabKorea(Landroid/view/View;Lcom/android/contacts/activities/ActionBarAdapter$TabState;III)V

    .line 178
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mAllCustomTabView:Landroid/view/View;

    sget-object v2, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ALL:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    const v3, 0x7f0201c3

    const v4, 0x7f0a0200

    const v5, 0x7f0a0201

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/activities/ActionBarAdapter;->addTabKorea(Landroid/view/View;Lcom/android/contacts/activities/ActionBarAdapter$TabState;III)V

    .line 179
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mFavoCustomTabView:Landroid/view/View;

    sget-object v2, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    const v3, 0x7f0201c9

    const v4, 0x7f0a028d

    const v5, 0x7f0a0069

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/activities/ActionBarAdapter;->addTabKorea(Landroid/view/View;Lcom/android/contacts/activities/ActionBarAdapter$TabState;III)V

    .line 187
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ActionBarAdapter;)Lcom/android/contacts/activities/ActionBarAdapter$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private addTabKorea(Landroid/view/View;Lcom/android/contacts/activities/ActionBarAdapter$TabState;III)V
    .locals 2
    .parameter "customTab"
    .parameter "tabState"
    .parameter "icon"
    .parameter "text"
    .parameter "contentDescription"

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 224
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 225
    invoke-virtual {v0, p5}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 226
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 227
    const v1, 0x7f0d001b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    const v1, 0x7f0d001c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(I)V

    .line 229
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 231
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 232
    return-void
.end method

.method private loadLastTabPreference()Lcom/android/contacts/activities/ActionBarAdapter$TabState;
    .locals 4

    .prologue
    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "actionBarAdapter.lastTab"

    sget-object v3, Lcom/android/contacts/activities/ActionBarAdapter;->DEFAULT_TAB:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->fromInt(I)Lcom/android/contacts/activities/ActionBarAdapter$TabState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 499
    :goto_0
    return-object v1

    .line 497
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter;->DEFAULT_TAB:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    goto :goto_0
.end method

.method private saveLastTabPreference(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "actionBarAdapter.lastTab"

    invoke-virtual {p1}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 492
    return-void
.end method

.method private setFocusOnSearchView()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 487
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 488
    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 382
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_3

    .line 383
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 384
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    .line 387
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 388
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->START_SEARCH_MODE:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    invoke-interface {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;)V

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/android/contacts/activities/ActionBarAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/ActionBarAdapter$3;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 433
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->updateDisplayOptions()V

    .line 434
    return-void

    .line 401
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eqz v0, :cond_4

    .line 402
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto :goto_0

    .line 407
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 416
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 417
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 418
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 419
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mTabListener:Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;

    iput-boolean v2, v0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 421
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 426
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mRestoreFromDeleteMode:Z

    if-eqz v0, :cond_6

    .line 427
    iput-boolean v2, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mRestoreFromDeleteMode:Z

    goto :goto_0

    .line 428
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    sget-object v1, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->STOP_SEARCH_MODE:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    invoke-interface {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;)V

    .line 430
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v0}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    goto :goto_0
.end method

.method private updateDisplayOptions()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 338
    const/16 v0, 0x1e

    .line 342
    .local v0, MASK:I
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v3

    and-int/lit8 v1, v3, 0x1e

    .line 345
    .local v1, current:I
    const/4 v2, 0x0

    .line 346
    .local v2, newFlags:I
    or-int/lit8 v2, v2, 0x8

    .line 347
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mShowHomeIcon:Z

    if-eqz v3, :cond_0

    .line 348
    or-int/lit8 v2, v2, 0x2

    .line 350
    :cond_0
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eqz v3, :cond_2

    .line 351
    :cond_1
    or-int/lit8 v2, v2, 0x2

    .line 352
    or-int/lit8 v2, v2, 0x4

    .line 353
    or-int/lit8 v2, v2, 0x10

    .line 355
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eqz v3, :cond_5

    :cond_3
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 357
    if-eq v1, v2, :cond_4

    .line 362
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 365
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x1e

    invoke-virtual {v3, v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 367
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v3, :cond_6

    .line 368
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomSearchViewlayoutParams:Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 379
    :cond_4
    :goto_1
    return-void

    .line 355
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 370
    :cond_6
    iget-boolean v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eqz v3, :cond_4

    .line 372
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    const v4, 0x7f0a0024

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 374
    iget-object v3, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCustomDeleteView:Landroid/view/View;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_1
.end method


# virtual methods
.method public getCurrentTab()Lcom/android/contacts/activities/ActionBarAdapter$TabState;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V
    .locals 1
    .parameter "savedState"
    .parameter "request"

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 192
    invoke-virtual {p2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 193
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->loadLastTabPreference()Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    .line 203
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 204
    return-void

    .line 195
    :cond_0
    const-string v0, "navBar.searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 196
    const-string v0, "navBar.query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 198
    const-string v0, "navBar.deleteMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    .line 201
    const-string v0, "navBar.selectedTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->fromInt(I)Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    goto :goto_0
.end method

.method public isDeleteMode()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    return v0
.end method

.method public isUpShowing()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 474
    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .parameter "queryString"

    .prologue
    const/4 v0, 0x1

    .line 441
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    const/4 v0, 0x0

    .line 453
    :cond_0
    :goto_0
    return v0

    .line 444
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 445
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-nez v1, :cond_2

    .line 446
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    goto :goto_0

    .line 449
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    sget-object v2, Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;->CHANGE_SEARCH_QUERY:Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;

    invoke-interface {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onAction(Lcom/android/contacts/activities/ActionBarAdapter$Listener$Action;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .parameter "query"

    .prologue
    .line 460
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 463
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 468
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 478
    const-string v0, "navBar.searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 479
    const-string v0, "navBar.query"

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v0, "navBar.selectedTab"

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    const-string v0, "navBar.deleteMode"

    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 483
    return-void
.end method

.method public setCurrentTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 256
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;Z)V

    .line 257
    return-void
.end method

.method public setCurrentTab(Lcom/android/contacts/activities/ActionBarAdapter$TabState;Z)V
    .locals 3
    .parameter "tab"
    .parameter "notifyListener"

    .prologue
    .line 263
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    if-ne p1, v1, :cond_1

    .line 277
    :goto_0
    return-void

    .line 267
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    .line 269
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter$TabState;->ordinal()I

    move-result v0

    .line 270
    .local v0, index:I
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 275
    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    invoke-interface {v1}, Lcom/android/contacts/activities/ActionBarAdapter$Listener;->onSelectedTabChanged()V

    .line 276
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mCurrentTab:Lcom/android/contacts/activities/ActionBarAdapter$TabState;

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->saveLastTabPreference(Lcom/android/contacts/activities/ActionBarAdapter$TabState;)V

    goto :goto_0
.end method

.method public setDeleteMode(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-eq v0, p1, :cond_1

    .line 312
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    .line 313
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mDeleteMode:Z

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mRestoreFromDeleteMode:Z

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 318
    :cond_1
    return-void
.end method

.method public setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mListener:Lcom/android/contacts/activities/ActionBarAdapter$Listener;

    .line 208
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 329
    :cond_0
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eq v0, p1, :cond_0

    .line 297
    iput-boolean p1, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    .line 298
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->update()V

    .line 299
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_2

    .line 303
    invoke-direct {p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public shouldShowSearchResult()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
