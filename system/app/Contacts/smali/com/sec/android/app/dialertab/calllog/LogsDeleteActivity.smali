.class public Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
.super Landroid/app/Activity;
.source "LogsDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;,
        Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$ItemView;,
        Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;
    }
.end annotation


# static fields
.field private static bDBChanged:Z

.field public static groupCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/GroupCount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ITEM_ARRAY:Ljava/lang/String;

.field ITEM_COUNT:Ljava/lang/String;

.field VIEW_BY:Ljava/lang/String;

.field private checkedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

.field private deleteBtn:Landroid/view/View;

.field private delprogressdlg:Landroid/app/ProgressDialog;

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field mBundle:Landroid/os/Bundle;

.field mCallHandler:Landroid/os/Handler;

.field private mCursor:Landroid/database/Cursor;

.field private mDeleteConfirmDlg:Landroid/app/AlertDialog;

.field public mHandler:Landroid/os/Handler;

.field private mHeaderAllCheckBox:Landroid/widget/CheckBox;

.field private mHeaderSelectAll:Landroid/view/View;

.field private volatile mIsListDone:Z

.field private mListView:Landroid/widget/ListView;

.field mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mViewBy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bDBChanged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    .line 97
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 279
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 281
    const-string v0, "view_by"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->VIEW_BY:Ljava/lang/String;

    .line 283
    const-string v0, "item_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    .line 285
    const-string v0, "item_array"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    .line 358
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$6;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHandler:Landroid/os/Handler;

    .line 621
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$10;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 720
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCallHandler:Landroid/os/Handler;

    .line 730
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mIsListDone:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mIsListDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bDBChanged:Z

    return p0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->updateAllCheckState()V

    return-void
.end method

.method private configureActionBar()V
    .locals 8

    .prologue
    const/16 v7, 0x1e

    const/4 v6, -0x2

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 223
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 224
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 226
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040018

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, customActionBarView:Landroid/view/View;
    const v4, 0x7f0d009e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->deleteBtn:Landroid/view/View;

    .line 228
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->deleteBtn:Landroid/view/View;

    new-instance v5, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v4, 0x7f0d009f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 237
    .local v3, revertMenuItem:Landroid/view/View;
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$4;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 248
    const v4, 0x7f030004

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setIcon(I)V

    .line 250
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 254
    .end local v1           #customActionBarView:Landroid/view/View;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #revertMenuItem:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private onHomeSelected()V
    .locals 3

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 274
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->startActivity(Landroid/content/Intent;)V

    .line 276
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->finish()V

    .line 277
    return-void
.end method

.method private updateAllCheckState()V
    .locals 10

    .prologue
    .line 656
    const/4 v3, 0x1

    .line 657
    .local v3, everyBodyIsOn:Z
    const/4 v2, 0x1

    .line 658
    .local v2, everyBodyIsOff:Z
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 660
    .local v1, dataCount:I
    const-string v7, "LogsDeleteActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "headerviewsconut : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dataCount : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 663
    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_2

    or-int v7, v3, v2

    if-eqz v7, :cond_2

    .line 664
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 665
    .local v5, id:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    .line 666
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 667
    .local v0, checked:Z
    if-nez v0, :cond_1

    .line 668
    const/4 v3, 0x0

    .line 663
    .end local v0           #checked:Z
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 670
    .restart local v0       #checked:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 673
    .end local v0           #checked:Z
    .end local v5           #id:J
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 674
    if-eqz v2, :cond_3

    .line 675
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->deleteBtn:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 678
    :goto_2
    return-void

    .line 677
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->deleteBtn:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public CancelIsClicked(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->finish()V

    .line 542
    return-void
.end method

.method public DeleteIsClicked(Landroid/view/View;)V
    .locals 8
    .parameter "target"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 510
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    if-eqz v3, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 512
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    .line 514
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bDBChanged:Z

    if-nez v3, :cond_1

    .line 515
    const v3, 0x7f0a02bc

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    .line 533
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 518
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 520
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 521
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 522
    .local v1, viewid:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    .line 523
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    .end local v1           #viewid:J
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 527
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 528
    const v3, 0x7f0a02be

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    goto :goto_0

    .line 530
    :cond_4
    const v3, 0x7f0a02bd

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public clickHandler(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 578
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 594
    :goto_0
    return-void

    .line 580
    :pswitch_0
    const-string v4, "LogsDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clickhandler"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 582
    check-cast v0, Landroid/widget/CheckBox;

    .line 583
    .local v0, checkBox:Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 584
    .local v1, position:I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 586
    .local v2, sba:Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 587
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    .line 588
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->updateAllCheckState()V

    goto :goto_0

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d004b
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 331
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f0d0045

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v0, 0x7f040099

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setContentView(I)V

    .line 119
    const v0, 0x7f0a028e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setTitle(I)V

    .line 121
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->configureActionBar()V

    .line 122
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "LogsDeleteActivity"

    const-string v1, "mDeleteConfirmDlg cancel() at onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 127
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    .line 130
    :cond_0
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 131
    .local v8, view:Landroid/view/View;
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 135
    const v0, 0x7f040097

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$1;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$2;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 168
    .local v7, i:Landroid/content/Intent;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->VIEW_BY:Ljava/lang/String;

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    .line 170
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    .line 173
    invoke-virtual {p0, v10}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 175
    .local v6, allChBox:Landroid/widget/CheckBox;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->deleteBtn:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 177
    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 179
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 208
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 213
    const-string v0, "LogsDeleteActivity"

    const-string v1, "mDeleteConfirmDlg cancel() at onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 215
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    .line 217
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bDBChanged:Z

    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 219
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 258
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 267
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 260
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->onHomeSelected()V

    .line 261
    const/4 v0, 0x1

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    .line 109
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 110
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 306
    if-nez p1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mIsListDone:Z

    if-eqz v3, :cond_0

    .line 313
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 314
    .local v2, itemCnt:I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->VIEW_BY:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    .line 315
    if-lez v2, :cond_2

    .line 316
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 317
    .local v0, checkedarray:[Z
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 318
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    aget-boolean v4, v0, v1

    invoke-virtual {v3, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 322
    .end local v0           #checkedarray:[Z
    .end local v1           #i:I
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 184
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, currentCountryIso:Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, voiceMailNumber:Ljava/lang/String;
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-direct {v2, p0, v0, v1, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .line 188
    const-string v2, "LogsDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Boram on resume() checking allItemChecked....."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setLoading(Z)V

    .line 192
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 194
    const-string v2, "LogsDeleteActivity"

    const-string v3, "on resume() checking allItemChecked....."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setAllItemChecked(Z)V

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->startCheckProcessing()V

    .line 200
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 201
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 291
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 293
    .local v2, itemCnt:I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->VIEW_BY:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    new-array v0, v2, [Z

    .line 296
    .local v0, checkedArray:[Z
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 297
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 300
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 301
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 3
    .parameter "bCheckStatus"

    .prologue
    .line 647
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 649
    .local v0, dataCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 650
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->deleteBtn:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 653
    return-void
.end method

.method public showDeleteConfirmDlg(Ljava/lang/String;I)V
    .locals 3
    .parameter "msg"
    .parameter "iOpIndex"

    .prologue
    .line 546
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a028e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a02b8

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0286

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 575
    return-void
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const v1, 0x7f0a02c0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$9;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 619
    return-void
.end method

.method public startCheckProcessing()V
    .locals 2

    .prologue
    .line 334
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mIsListDone:Z

    .line 335
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$5;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 350
    .local v0, thread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 351
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 352
    return-void
.end method
