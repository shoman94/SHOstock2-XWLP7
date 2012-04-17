.class public Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
.super Landroid/app/Activity;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ItemView;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


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

.field private deleteItem:Landroid/view/View;

.field private deletedData:Z

.field private delprogressdlg:Landroid/app/ProgressDialog;

.field details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field mBundle:Landroid/os/Bundle;

.field private mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field private mDefaultCountryIso:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field private mHeaderAllCheckBox:Landroid/widget/CheckBox;

.field private mHeaderSelectAll:Landroid/view/View;

.field mInflater:Landroid/view/LayoutInflater;

.field private volatile mIsListDone:Z

.field private mListView:Landroid/widget/ListView;

.field mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private final mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

.field mResources:Landroid/content/res/Resources;

.field private mVoiceMailNumber:Ljava/lang/String;

.field private uris:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    .line 204
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "duration"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cnap_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cdnip_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "service_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 228
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 134
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mName:Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->deletedData:Z

    .line 148
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 367
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 369
    const-string v0, "view_by"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->VIEW_BY:Ljava/lang/String;

    .line 371
    const-string v0, "item_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    .line 373
    const-string v0, "item_array"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    .line 444
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$5;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHandler:Landroid/os/Handler;

    .line 459
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$6;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 588
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mIsListDone:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mIsListDone:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateAllCheckState()V

    return-void
.end method

.method static synthetic access$702(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->deletedData:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Landroid/net/Uri;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method private getCallLogEntryUris()[Landroid/net/Uri;
    .locals 7

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 677
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 679
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 689
    :goto_0
    return-object v3

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 683
    .local v0, ids:[J
    const-string v3, "CallDetailDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ids : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ids.length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    array-length v3, v0

    new-array v3, v3, [Landroid/net/Uri;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->uris:[Landroid/net/Uri;

    .line 686
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 687
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->uris:[Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    aget-wide v5, v0, v1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v1

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 689
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->uris:[Landroid/net/Uri;

    goto :goto_0
.end method

.method private getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 38
    .parameter "callUri"

    .prologue
    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 841
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 843
    .local v24, callCursor:Landroid/database/Cursor;
    if-eqz v24, :cond_0

    :try_start_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    .line 844
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    :catchall_0
    move-exception v4

    if-eqz v24, :cond_1

    .line 967
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v4

    .line 848
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 849
    .local v27, id:I
    const/4 v4, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 850
    .local v32, number:Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 851
    .local v11, date:J
    const/4 v4, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 852
    .local v13, duration:J
    const/4 v4, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 853
    .local v25, callType:I
    const/4 v4, 0x5

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 854
    .local v8, countryIso:Ljava/lang/String;
    const/4 v4, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 855
    .local v9, geocode:Ljava/lang/String;
    const/4 v4, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 858
    .local v15, logType:I
    const-string v4, "cdnip_number"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 859
    .local v28, idxCDNIPNumber:I
    const-string v4, "service_type"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 860
    .local v30, idxServiceType:I
    const-string v4, "cnap_name"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 862
    .local v29, idxCNAPName:I
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 863
    .local v21, serviceType:I
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 864
    .local v22, cnapName:Ljava/lang/String;
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 867
    .local v23, cdnipNumber:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 868
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 874
    :cond_3
    const-string v16, ""

    .line 875
    .local v16, nameText:Ljava/lang/CharSequence;
    const/16 v17, 0x0

    .line 876
    .local v17, numberType:I
    const-string v18, ""

    .line 877
    .local v18, numberLabel:Ljava/lang/CharSequence;
    const/16 v20, 0x0

    .line 878
    .local v20, photoUri:Landroid/net/Uri;
    const/16 v19, 0x0

    .line 880
    .local v19, contactUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 881
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 962
    .local v7, numberText:Ljava/lang/CharSequence;
    :goto_0
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v5, 0x1

    new-array v10, v5, [I

    const/4 v5, 0x0

    aput v25, v10, v5

    move/from16 v5, v27

    move-object/from16 v6, v32

    invoke-direct/range {v4 .. v23}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 966
    if-eqz v24, :cond_4

    .line 967
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v4

    .line 885
    .end local v7           #numberText:Ljava/lang/CharSequence;
    :cond_5
    const/4 v3, 0x0

    .line 913
    .local v3, phoneUri:Landroid/net/Uri;
    :try_start_2
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v32 .. v32}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 917
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 918
    .local v35, phonesCursor:Landroid/database/Cursor;
    move-object/from16 v26, v32

    .line 919
    .local v26, candidateNumberText:Ljava/lang/String;
    const-string v4, "persist.sys.country"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 920
    .local v31, language:Ljava/lang/String;
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v37

    .line 923
    .local v37, salesCode:Ljava/lang/String;
    if-eqz v35, :cond_b

    :try_start_3
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 924
    const/4 v4, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 925
    const/4 v4, 0x6

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 926
    .local v36, photoUriString:Ljava/lang/String;
    if-nez v36, :cond_9

    const/16 v20, 0x0

    .line 927
    :goto_1
    const-string v4, "TNZ"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "VNZ"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "VNX"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "NZC"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "ATO"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "INU"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "INS"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "SLK"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "NPL"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "TML"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "ETR "

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "PH"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "NO"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "SE"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 930
    :cond_6
    const/4 v4, 0x4

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 937
    :goto_2
    const/4 v4, 0x2

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 938
    const/4 v4, 0x3

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 939
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 940
    .local v33, personId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v33, v4

    if-lez v4, :cond_7

    .line 941
    const/4 v4, 0x7

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v33

    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v19

    .line 958
    .end local v33           #personId:J
    .end local v36           #photoUriString:Ljava/lang/String;
    :cond_7
    :goto_3
    if-eqz v35, :cond_8

    :try_start_4
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 959
    :cond_8
    move-object/from16 v7, v26

    .line 960
    .restart local v7       #numberText:Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 926
    .end local v7           #numberText:Ljava/lang/CharSequence;
    .restart local v36       #photoUriString:Ljava/lang/String;
    :cond_9
    :try_start_5
    invoke-static/range {v36 .. v36}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    goto/16 :goto_1

    .line 932
    :cond_a
    const/4 v4, 0x4

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    move-object/from16 v0, v35

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto :goto_2

    .line 948
    .end local v36           #photoUriString:Ljava/lang/String;
    :cond_b
    const-string v4, "TNZ"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "VNZ"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "VNX"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "NZC"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "ATO"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "INU"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "INS"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "SLK"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "NPL"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "TML"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "ETR "

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "PH"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "NO"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "SE"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 951
    :cond_c
    move-object/from16 v26, v32

    goto/16 :goto_3

    .line 953
    :cond_d
    move-object/from16 v0, v32

    invoke-static {v0, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v26

    goto/16 :goto_3

    .line 958
    :catchall_1
    move-exception v4

    if-eqz v35, :cond_e

    :try_start_6
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    .line 959
    :cond_e
    move-object/from16 v7, v26

    .restart local v7       #numberText:Ljava/lang/CharSequence;
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private updateAllCheckState()V
    .locals 7

    .prologue
    .line 630
    const/4 v3, 0x1

    .line 631
    .local v3, everyBodyIsOn:Z
    const/4 v2, 0x1

    .line 632
    .local v2, everyBodyIsOff:Z
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 634
    .local v1, dataCount:I
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 635
    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_1

    or-int v5, v3, v2

    if-eqz v5, :cond_1

    .line 636
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 637
    .local v0, checked:Z
    if-nez v0, :cond_0

    .line 638
    const/4 v3, 0x0

    .line 635
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 640
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 643
    .end local v0           #checked:Z
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 647
    if-eqz v2, :cond_2

    .line 648
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->deleteItem:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 652
    :goto_2
    return-void

    .line 650
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->deleteItem:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2
.end method

.method private varargs updateData([Landroid/net/Uri;)V
    .locals 4
    .parameter "callUris"

    .prologue
    .line 835
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;[Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 836
    return-void
.end method


# virtual methods
.method public clickHandler(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 712
    const-string v3, "CallDetailDeleteActivity"

    const-string v4, "clickhandler"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 726
    :goto_0
    return-void

    .line 715
    :pswitch_0
    const-string v4, "CallDetailDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clickhandler"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

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

    .line 716
    check-cast v0, Landroid/widget/CheckBox;

    .line 717
    .local v0, checkBox:Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 718
    .local v1, position:I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 719
    .local v2, sba:Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 720
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    .line 721
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateAllCheckState()V

    goto :goto_0

    .line 713
    :pswitch_data_0
    .packed-switch 0x7f0d004b
        :pswitch_0
    .end packed-switch
.end method

.method public disableProximitySensor(Z)V
    .locals 1
    .parameter "waitForFarState"

    .prologue
    .line 998
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ProximitySensorManager;->disable(Z)V

    .line 999
    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager;->enable()V

    .line 994
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 364
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0d0045

    const/16 v8, 0x1e

    const/4 v7, -0x2

    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    const v5, 0x7f040007

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->setContentView(I)V

    .line 254
    const v5, 0x7f0a028e

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->setTitle(I)V

    .line 256
    const v5, 0x7f0d0023

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    .line 259
    const v5, 0x7f040097

    invoke-static {p0, v5, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    .line 260
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    .line 262
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 265
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 266
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 268
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040018

    invoke-virtual {v3, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 269
    .local v2, customActionBarView:Landroid/view/View;
    const v5, 0x7f0d009e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->deleteItem:Landroid/view/View;

    .line 270
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->deleteItem:Landroid/view/View;

    new-instance v6, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    const v5, 0x7f0d009f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 295
    .local v4, revertMenuItem:Landroid/view/View;
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    invoke-virtual {v0, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 308
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 313
    .end local v2           #customActionBarView:Landroid/view/View;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #revertMenuItem:Landroid/view/View;
    :cond_0
    sput-object p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    .line 314
    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mVoiceMailNumber:Ljava/lang/String;

    .line 317
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 318
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 319
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mResources:Landroid/content/res/Resources;

    .line 321
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    .line 322
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mResources:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 323
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mResources:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v5, v6, v7, v8}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    .line 325
    new-instance v5, Lcom/android/contacts/ProximitySensorManager;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;

    invoke-direct {v5, p0, v6}, Lcom/android/contacts/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/contacts/ProximitySensorManager$Listener;)V

    iput-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    .line 327
    invoke-virtual {p0, v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 329
    .local v1, allChBox:Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->deleteItem:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 331
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 333
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    new-instance v6, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 694
    packed-switch p1, :pswitch_data_0

    .line 708
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 697
    :pswitch_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 699
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    .line 700
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 702
    .local v0, callIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->startActivity(Landroid/content/Intent;)V

    .line 703
    const/4 v2, 0x1

    goto :goto_0

    .line 694
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 986
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->disableProximitySensor(Z)V

    .line 987
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 988
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 989
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    .line 394
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 396
    const-string v3, "CallDetailDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRestoreInstanceState, bundle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    if-nez p1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mIsListDone:Z

    if-eqz v3, :cond_0

    .line 406
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 407
    .local v2, itemCnt:I
    if-lez v2, :cond_2

    .line 408
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 409
    .local v0, checkedarray:[Z
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 410
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    aget-boolean v4, v0, v1

    invoke-virtual {v3, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 414
    .end local v0           #checkedarray:[Z
    .end local v1           #i:I
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 359
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateData([Landroid/net/Uri;)V

    .line 360
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 379
    const-string v3, "CallDetailDeleteActivity"

    const-string v4, "onSaveInstanceState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 383
    .local v2, itemCnt:I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 384
    new-array v0, v2, [Z

    .line 385
    .local v0, checkedArray:[Z
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 386
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 389
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 390
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 5
    .parameter "bCheckStatus"

    .prologue
    .line 655
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 656
    .local v0, dataCount:I
    const-string v2, "CallDetailDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mListView.getCount() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 658
    const-string v2, "CallDetailDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setItemChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 657
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 663
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->deleteItem:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 664
    return-void
.end method

.method public showDeleteConfirmDlg(Ljava/lang/String;I)V
    .locals 3
    .parameter "msg"
    .parameter "iOpIndex"

    .prologue
    .line 467
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a028e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a02b8

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$8;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$8;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0286

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$7;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 497
    return-void
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const v1, 0x7f0a02c0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$9;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 519
    return-void
.end method

.method public startCheckProcessing()V
    .locals 2

    .prologue
    .line 421
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mIsListDone:Z

    .line 422
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 438
    .local v0, thread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 439
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 440
    return-void
.end method
