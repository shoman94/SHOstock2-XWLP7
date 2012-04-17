.class public Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;
.super Landroid/app/ListActivity;
.source "LogsSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;
    }
.end annotation


# static fields
.field private static bDBChanged:Z

.field private static mLogCnt:I


# instance fields
.field co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field mCallHandler:Landroid/os/Handler;

.field private mCursor:Landroid/database/Cursor;

.field private mItemCursor:Landroid/database/Cursor;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->bDBChanged:Z

    .line 85
    sput v0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mLogCnt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCallHandler:Landroid/os/Handler;

    .line 218
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->bDBChanged:Z

    return p0
.end method

.method private configureActionBar()V
    .locals 6

    .prologue
    const/16 v5, 0x1e

    .line 154
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 155
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 156
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 158
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040018

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 160
    .local v1, customActionBarView:Landroid/view/View;
    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 164
    const v3, 0x7f030004

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setIcon(I)V

    .line 166
    .end local v1           #customActionBarView:Landroid/view/View;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method private onHomeSelected()V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->finish()V

    .line 191
    return-void
.end method

.method private setObserver()V
    .locals 4

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 214
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCallHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    .line 215
    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 216
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const v0, 0x7f040099

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->setContentView(I)V

    .line 102
    const v0, 0x7f0a028c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->setTitle(I)V

    .line 104
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->configureActionBar()V

    .line 106
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mListView:Landroid/widget/ListView;

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 111
    .local v6, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    .line 113
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 140
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 147
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    .line 150
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->bDBChanged:Z

    .line 151
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 195
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 196
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, p3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    .line 199
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    const-string v4, "number"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, strNumber:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 202
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "NUMBER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->finish()V

    .line 207
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 172
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->onHomeSelected()V

    .line 173
    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    .line 94
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->setObserver()V

    .line 118
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, currentCountryIso:Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, voiceMailNumber:Ljava/lang/String;
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-direct {v2, p0, v0, v1, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .line 123
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setLoading(Z)V

    .line 127
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 130
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 131
    return-void
.end method
