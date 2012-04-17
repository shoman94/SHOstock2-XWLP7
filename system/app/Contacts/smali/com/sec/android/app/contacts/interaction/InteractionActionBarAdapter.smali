.class public Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;
.super Ljava/lang/Object;
.source "InteractionActionBarAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$1;,
        Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;,
        Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;,
        Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAB:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mActionBar:Landroid/app/ActionBar;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTab:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

.field private mFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->DEFAULT_TAB:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ActionBar;)V
    .locals 3
    .parameter "context"
    .parameter "actionBar"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    .line 85
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->DEFAULT_TAB:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    .line 86
    const-string v0, "InteractionActionBarAdapter"

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    const-string v1, "InteractionActionBarAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 103
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    const v1, 0x7f0201c3

    const v2, 0x7f0a0201

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;II)V

    .line 104
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->LOGS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    const v1, 0x7f0201c7

    const v2, 0x7f0a028c

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;II)V

    .line 105
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->GROUPS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    const v1, 0x7f0201c6

    const v2, 0x7f0a0068

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;II)V

    .line 106
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->FAVORITES:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    const v1, 0x7f0201c9

    const v2, 0x7f0a0069

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;II)V

    .line 107
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method private addTab(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;II)V
    .locals 3
    .parameter "tabState"
    .parameter "icon"
    .parameter "contentDescription"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    const-string v2, "addTab"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 116
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 119
    invoke-virtual {v0, p3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 120
    invoke-virtual {v0, p3}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 123
    return-void
.end method

.method private loadLastTabPreference()Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;
    .locals 4

    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "interactionActionBarAdapter.lastTab"

    sget-object v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->DEFAULT_TAB:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->fromInt(I)Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 259
    :goto_0
    return-object v1

    .line 257
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->DEFAULT_TAB:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    goto :goto_0
.end method

.method private saveLastTabPreference(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "interactionActionBarAdapter.lastTab"

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 252
    return-void
.end method

.method private update()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentTab()Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    return-object v0
.end method

.method public initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V
    .locals 2
    .parameter "savedState"
    .parameter "request"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    const-string v1, "InteractionActionBarAdapter.initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-nez p1, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->loadLastTabPreference()Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    .line 133
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->update()V

    .line 134
    return-void

    .line 131
    :cond_0
    const-string v0, "navBar.selectedTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->fromInt(I)Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    goto :goto_0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public setContactListFilterController(Lcom/android/contacts/list/ContactListFilterController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 167
    return-void
.end method

.method public setCurrentTab(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentTab and tab id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setCurrentTab(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;Z)V

    .line 175
    return-void
.end method

.method public setCurrentTab(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;Z)V
    .locals 3
    .parameter "tab"
    .parameter "notifyListener"

    .prologue
    .line 181
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne p1, v1, :cond_1

    .line 195
    :goto_0
    return-void

    .line 185
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    const-string v2, "setCurrentTab(TabState tab, boolean notifyListener)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->ordinal()I

    move-result v0

    .line 188
    .local v0, index:I
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 192
    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;

    if-eqz v1, :cond_3

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-interface {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;->onSelectedTabChanged(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V

    .line 194
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->saveLastTabPreference(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V

    goto :goto_0
.end method

.method public setListener(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;

    .line 111
    return-void
.end method
