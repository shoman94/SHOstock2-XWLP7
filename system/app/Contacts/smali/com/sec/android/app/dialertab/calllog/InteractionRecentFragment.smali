.class public Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;
.super Landroid/app/ListFragment;
.source "InteractionRecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;,
        Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$ItemView;
    }
.end annotation


# static fields
.field public static SELECT_MAX_COUNT:I

.field private static bDBChanged:Z


# instance fields
.field ITEM_ARRAY:Ljava/lang/String;

.field ITEM_COUNT:Ljava/lang/String;

.field VIEW_BY:Ljava/lang/String;

.field private checkedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field mBundle:Landroid/os/Bundle;

.field mCallHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field private mEmailCursor:Landroid/database/Cursor;

.field private mFromEmail:Z

.field private mIntent:Landroid/content/Intent;

.field private mItemCursor:Landroid/database/Cursor;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

.field private mViewBy:I

.field statecheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->bDBChanged:Z

    .line 107
    const/16 v0, 0xa

    sput v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 75
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    .line 246
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    .line 248
    const-string v0, "view_by"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->VIEW_BY:Ljava/lang/String;

    .line 250
    const-string v0, "item_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_COUNT:Ljava/lang/String;

    .line 252
    const-string v0, "item_array"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_ARRAY:Ljava/lang/String;

    .line 253
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    .line 477
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCallHandler:Landroid/os/Handler;

    .line 487
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->bDBChanged:Z

    return p0
.end method

.method private setObserver()V
    .locals 4

    .prologue
    .line 482
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 483
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCallHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    .line 484
    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 485
    return-void
.end method

.method private updateAllCheckState()V
    .locals 9

    .prologue
    .line 335
    const/4 v3, 0x1

    .line 336
    .local v3, everyBodyIsOn:Z
    const/4 v2, 0x1

    .line 337
    .local v2, everyBodyIsOff:Z
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 339
    .local v1, dataCount:I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 340
    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_2

    or-int v7, v3, v2

    if-eqz v7, :cond_2

    .line 341
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 342
    .local v5, id:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    .line 343
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 344
    .local v0, checked:Z
    if-nez v0, :cond_1

    .line 345
    const/4 v3, 0x0

    .line 340
    .end local v0           #checked:Z
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 347
    .restart local v0       #checked:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 350
    .end local v0           #checked:Z
    .end local v5           #id:J
    :cond_2
    if-eqz v2, :cond_3

    .line 351
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v7}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataDeleted()V

    .line 354
    :goto_2
    return-void

    .line 353
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v7}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onOneDataInputed()V

    goto :goto_2
.end method


# virtual methods
.method public clearSelectedArray()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setAllItemChecked(Z)V

    .line 302
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 130
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    .line 133
    iput-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    .line 134
    const-string v0, "InteractionRecentFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate>>>>>>>>>>> mIntent == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "additional"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "email-multi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/email"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    .line 170
    :goto_0
    return-void

    .line 141
    :cond_0
    iput-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 174
    const-string v1, "InteractionRecentFragment"

    const-string v2, "========= onCreateView ========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const v1, 0x7f040099

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 176
    .local v0, view:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 179
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 180
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 227
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 233
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 239
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    .line 242
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->bDBChanged:Z

    .line 243
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 244
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->updateAllCheckState()V

    .line 332
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    .line 123
    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 124
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    const/4 v6, 0x1

    .line 272
    if-nez p1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 279
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 281
    .local v2, isChecked:Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 282
    .local v3, itemCnt:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->VIEW_BY:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mViewBy:I

    .line 283
    if-lez v3, :cond_2

    .line 284
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 285
    .local v0, checkedarray:[Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 286
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    aget-boolean v5, v0, v1

    invoke-virtual {v4, v1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 287
    aget-boolean v4, v0, v1

    if-ne v4, v6, :cond_1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 285
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 291
    .end local v0           #checkedarray:[Z
    .end local v1           #i:I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 292
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v4}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onOneDataInputed()V

    .line 296
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0

    .line 294
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v4}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataDeleted()V

    goto :goto_2
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 185
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setObserver()V

    .line 186
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, currentCountryIso:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, voiceMailNumber:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    if-ne v2, v5, :cond_2

    .line 191
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 194
    :cond_0
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .line 195
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setLoading(Z)V

    .line 197
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 199
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 201
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    .line 219
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 220
    return-void

    .line 205
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v2, :cond_3

    .line 206
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 207
    :cond_3
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .line 208
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setLoading(Z)V

    .line 210
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 212
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    if-eqz v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 214
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 258
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 260
    .local v2, itemCnt:I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->VIEW_BY:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mViewBy:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    new-array v0, v2, [Z

    .line 263
    .local v0, checkedArray:[Z
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 264
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 267
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    .line 268
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    .line 269
    return-void
.end method

.method public sendNum()V
    .locals 9

    .prologue
    .line 394
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 395
    const/4 v3, 0x0

    .line 396
    .local v3, selectedItemCount:I
    const-string v6, "InteractionRecentFragment"

    const-string v7, "sendNum"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 398
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 399
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 400
    .local v4, viewid:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 401
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 402
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    .line 408
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    const-string v8, "number"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, number:Ljava/lang/String;
    const-string v6, "-1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "-2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "-3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "-4"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 414
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "5583;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    add-int/lit8 v3, v3, 0x1

    .line 397
    .end local v1           #number:Ljava/lang/String;
    .end local v4           #viewid:J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    .restart local v4       #viewid:J
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    goto :goto_1

    .line 421
    .end local v4           #viewid:J
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 422
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 423
    .local v2, resultIntent:Landroid/content/Intent;
    const-string v6, "result"

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 424
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v6, v2}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onRecentListAction(Landroid/content/Intent;)V

    .line 426
    .end local v2           #resultIntent:Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 3
    .parameter "bCheckStatus"

    .prologue
    .line 429
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 431
    .local v0, dataCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 432
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v2}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataDeleted()V

    .line 435
    return-void
.end method

.method public setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 115
    return-void
.end method
