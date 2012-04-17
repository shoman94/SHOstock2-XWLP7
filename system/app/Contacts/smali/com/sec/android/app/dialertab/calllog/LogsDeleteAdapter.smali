.class public Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "LogsDeleteAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;
.implements Ljava/lang/Runnable;


# instance fields
.field private final NOR_INT:I

.field private final SEP_INT:I

.field private final mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

.field private final mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

.field private mCallerIdThread:Ljava/lang/Thread;

.field private mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/util/ExpirableCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/dialertab/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;

.field private volatile mDone:Z

.field private mFirst:Z

.field private mHandler:Landroid/os/Handler;

.field private final mIsMulti:Z

.field private mLoading:Z

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/dialertab/calllog/ContactInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private seperatorIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private strSeparatorArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "context"
    .parameter "currentCountryIso"
    .parameter "voicemailNumber"
    .parameter "isMulti"

    .prologue
    const/4 v4, 0x0

    .line 154
    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    .line 74
    const/16 v3, 0xa

    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->NOR_INT:I

    .line 75
    const/16 v3, 0x37

    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->SEP_INT:I

    .line 104
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mLoading:Z

    .line 123
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequestProcessingDisabled:Z

    .line 125
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->seperatorIDList:Ljava/util/ArrayList;

    .line 126
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->strSeparatorArray:[Ljava/lang/String;

    .line 138
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$1;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mHandler:Landroid/os/Handler;

    .line 156
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 159
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/android/contacts/util/ExpirableCache;->create(I)Lcom/android/contacts/util/ExpirableCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    .line 160
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    .line 161
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 163
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 164
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    .line 166
    .local v0, callTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 167
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v3, v2, p3}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 168
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v1, v2, v0, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    .line 170
    .local v1, phoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v3, v1, v4, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;-><init>(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    .line 173
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    .line 175
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getSeperatorIDList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->seperatorIDList:Ljava/util/ArrayList;

    .line 176
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getStrSeparatorArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->strSeparatorArray:[Ljava/lang/String;

    .line 178
    iput-boolean p4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mIsMulti:Z

    .line 179
    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 53
    .parameter "view"
    .parameter "c"
    .parameter "count"

    .prologue
    .line 583
    const-string v18, "LogsDeleteAdapter"

    const-string v19, "========= bindView =========  "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    .line 585
    .local v52, views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 588
    .local v42, dbID:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v41

    .line 589
    .local v41, currentPos:I
    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 590
    move/from16 v0, p3

    new-array v0, v0, [I

    move-object/from16 v37, v0

    .line 591
    .local v37, IDs:[I
    const/16 v44, 0x0

    .local v44, i:I
    :goto_0
    move/from16 v0, v44

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    .line 593
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    aput v18, v37, v44

    .line 594
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 591
    add-int/lit8 v44, v44, 0x1

    goto :goto_0

    .line 596
    :cond_0
    sget-object v18, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    new-instance v19, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    move-object/from16 v0, v19

    move/from16 v1, v42

    move-object/from16 v2, v37

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/GroupCount;-><init>(I[II)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 601
    .end local v37           #IDs:[I
    .end local v44           #i:I
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->seperatorIDList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x37

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 603
    const/16 v49, 0x0

    .line 604
    .local v49, mDateText:Ljava/lang/String;
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->strSeparatorArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    aget-object v49, v18, v19

    .line 606
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .end local v49           #mDateText:Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 614
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 616
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mIsMulti:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 617
    const v18, 0x7f0d004b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 619
    :cond_3
    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 620
    .local v5, number:Ljava/lang/String;
    const/16 v18, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 621
    .local v10, date:J
    const/16 v18, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 622
    .local v12, duration:J
    const/16 v18, 0xf

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 624
    .local v40, callType:I
    const/16 v18, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 625
    .local v7, countryIso:Ljava/lang/String;
    const/16 v18, 0xf

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 629
    .local v14, logType:I
    const-string v18, "cdnip_number"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v45

    .line 630
    .local v45, idxCDNIPNumber:I
    const-string v18, "service_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v47

    .line 631
    .local v47, idxServiceType:I
    const-string v18, "cnap_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    .line 633
    .local v46, idxCNAPName:I
    move-object/from16 v0, p2

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 634
    .local v15, serviceType:I
    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 635
    .local v16, cnapName:Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 638
    .local v17, cdnipNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v38

    .line 641
    .local v38, cachedContactInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/contacts/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/contacts/util/ExpirableCache$CachedValue;

    move-result-object v39

    .line 643
    .local v39, cachedInfo:Lcom/android/contacts/util/ExpirableCache$CachedValue;,"Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    if-nez v39, :cond_6

    const/16 v48, 0x0

    .line 644
    .local v48, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 648
    :cond_4
    sget-object v48, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .line 649
    const/4 v6, 0x0

    .line 689
    .local v6, formattedNumber:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v32, v0

    .line 690
    .local v32, lookupUri:Landroid/net/Uri;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 691
    .local v29, name:Ljava/lang/String;
    move-object/from16 v0, v48

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    move/from16 v30, v0

    .line 692
    .local v30, ntype:I
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 693
    .local v31, label:Ljava/lang/String;
    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    move-wide/from16 v50, v0

    .line 694
    .local v50, photoId:J
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v9

    .line 695
    .local v9, callTypes:[I
    const/16 v18, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 697
    .local v8, geocode:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 698
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    invoke-direct/range {v4 .. v17}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIILjava/lang/String;Ljava/lang/String;)V

    .line 706
    .local v4, details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    move-object/from16 v20, v52

    move-object/from16 v21, v4

    move/from16 v23, p3

    invoke-virtual/range {v18 .. v23}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZI)V

    .line 707
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move-object/from16 v18, p0

    move-object/from16 v19, v52

    move-wide/from16 v20, v50

    move-object/from16 v22, v32

    invoke-direct/range {v18 .. v24}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setPhoto(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;JLandroid/net/Uri;J)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    .line 711
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mFirst:Z

    .line 712
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 713
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 715
    :cond_5
    return-void

    .line 608
    .end local v4           #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #formattedNumber:Ljava/lang/String;
    .end local v7           #countryIso:Ljava/lang/String;
    .end local v8           #geocode:Ljava/lang/String;
    .end local v9           #callTypes:[I
    .end local v10           #date:J
    .end local v12           #duration:J
    .end local v14           #logType:I
    .end local v15           #serviceType:I
    .end local v16           #cnapName:Ljava/lang/String;
    .end local v17           #cdnipNumber:Ljava/lang/String;
    .end local v29           #name:Ljava/lang/String;
    .end local v30           #ntype:I
    .end local v31           #label:Ljava/lang/String;
    .end local v32           #lookupUri:Landroid/net/Uri;
    .end local v38           #cachedContactInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v39           #cachedInfo:Lcom/android/contacts/util/ExpirableCache$CachedValue;,"Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    .end local v40           #callType:I
    .end local v45           #idxCDNIPNumber:I
    .end local v46           #idxCNAPName:I
    .end local v47           #idxServiceType:I
    .end local v48           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v50           #photoId:J
    :catch_0
    move-exception v43

    .line 609
    .local v43, e:Ljava/lang/Exception;
    const-string v18, "LogsDeleteAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception in bindView Logdelete "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 643
    .end local v43           #e:Ljava/lang/Exception;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v7       #countryIso:Ljava/lang/String;
    .restart local v10       #date:J
    .restart local v12       #duration:J
    .restart local v14       #logType:I
    .restart local v15       #serviceType:I
    .restart local v16       #cnapName:Ljava/lang/String;
    .restart local v17       #cdnipNumber:Ljava/lang/String;
    .restart local v38       #cachedContactInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .restart local v39       #cachedInfo:Lcom/android/contacts/util/ExpirableCache$CachedValue;,"Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    .restart local v40       #callType:I
    .restart local v45       #idxCDNIPNumber:I
    .restart local v46       #idxCNAPName:I
    .restart local v47       #idxServiceType:I
    :cond_6
    invoke-interface/range {v39 .. v39}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v48, v18

    goto/16 :goto_2

    .line 650
    .restart local v48       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_7
    if-nez v39, :cond_8

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    move-object/from16 v18, v0

    sget-object v19, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 653
    move-object/from16 v48, v38

    .line 656
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v18

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->enqueueRequest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    .line 658
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v7}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 659
    .restart local v6       #formattedNumber:Ljava/lang/String;
    move-object/from16 v0, v48

    iput-object v6, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    goto/16 :goto_3

    .line 661
    .end local v6           #formattedNumber:Ljava/lang/String;
    :cond_8
    invoke-interface/range {v39 .. v39}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 664
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v18

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->enqueueRequest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    .line 673
    :cond_9
    :goto_5
    sget-object v18, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v0, v48

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_c

    .line 675
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_a

    .line 676
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v7}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 679
    :cond_a
    move-object/from16 v0, v48

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .restart local v6       #formattedNumber:Ljava/lang/String;
    goto/16 :goto_3

    .line 665
    .end local v6           #formattedNumber:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->callLogInfoMatches(Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 670
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v18

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->enqueueRequest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    goto :goto_5

    .line 682
    :cond_c
    move-object/from16 v48, v38

    .line 684
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v7}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 685
    .restart local v6       #formattedNumber:Ljava/lang/String;
    move-object/from16 v0, v48

    iput-object v6, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    goto/16 :goto_3

    .line 702
    .restart local v8       #geocode:Ljava/lang/String;
    .restart local v9       #callTypes:[I
    .restart local v29       #name:Ljava/lang/String;
    .restart local v30       #ntype:I
    .restart local v31       #label:Ljava/lang/String;
    .restart local v32       #lookupUri:Landroid/net/Uri;
    .restart local v50       #photoId:J
    :cond_d
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v33, 0x0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide/from16 v24, v10

    move-wide/from16 v26, v12

    move/from16 v28, v14

    move/from16 v34, v15

    move-object/from16 v35, v16

    move-object/from16 v36, v17

    invoke-direct/range {v18 .. v36}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V

    .restart local v4       #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_4
.end method

.method private callLogInfoMatches(Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .locals 2
    .parameter "callLogInfo"
    .parameter "info"

    .prologue
    .line 721
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    iget v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findAndCacheViews(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 569
    const-string v1, "LogsDeleteAdapter"

    const-string v2, "========= findAndCacheViews ========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-static {p1}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    move-result-object v0

    .line 572
    .local v0, views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 573
    return-void
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"
    .parameter "normalizedNumber"
    .parameter "countryIso"

    .prologue
    .line 858
    const-string v2, "persist.sys.country"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, language:Ljava/lang/String;
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 861
    .local v1, salesCode:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 862
    const-string p1, ""

    .line 876
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 865
    .restart local p1
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 868
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 869
    iget-object p3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 871
    :cond_2
    const-string v2, "TNZ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VNZ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VNX"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NZC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ATO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "INU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "INS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SLK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NPL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TML"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ETR "

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 876
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .locals 4
    .parameter "cursor"
    .parameter "count"

    .prologue
    .line 810
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 811
    .local v2, position:I
    new-array v0, p2, [I

    .line 812
    .local v0, callTypes:[I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 813
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    .line 814
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 812
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 816
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 817
    return-object v0
.end method

.method private getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 4
    .parameter "c"

    .prologue
    .line 789
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 790
    .local v0, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 791
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 792
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 793
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 794
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 795
    .local v1, matchedNumber:Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #matchedNumber:Ljava/lang/String;
    :cond_0
    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 796
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 797
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 798
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 799
    return-object v0
.end method

.method private queryContactInfo(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .locals 6
    .parameter "number"
    .parameter "callLogInfo"

    .prologue
    const/4 v3, 0x0

    .line 429
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 431
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v2

    .line 432
    .local v2, sipInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    if-eqz v2, :cond_0

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-ne v2, v5, :cond_1

    .line 434
    :cond_0
    const/16 v5, 0x40

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, username:Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 436
    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v2

    .line 439
    .end local v4           #username:Ljava/lang/String;
    :cond_1
    move-object v1, v2

    .line 444
    .end local v2           #sipInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .local v1, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :goto_0
    if-nez v1, :cond_3

    .line 464
    :goto_1
    return v3

    .line 441
    .end local v1           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v1

    .restart local v1       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_0

    .line 451
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v5, p1}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .line 452
    .local v0, existingInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v3, 0x1

    .line 453
    .local v3, updated:Z
    :cond_4
    if-eqz v3, :cond_5

    .line 456
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 460
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v5, p1, v1}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 463
    invoke-direct {p0, p1, v1, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->updateCallLogContactInfoCache(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V

    goto :goto_1
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 11
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 350
    const/4 v10, 0x0

    .line 384
    .local v10, phonesCursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 391
    if-eqz v10, :cond_1

    .line 392
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    new-instance v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v8}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 394
    .local v8, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 395
    .local v6, contactId:J
    const/4 v0, 0x7

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 396
    .local v9, lookupKey:Ljava/lang/String;
    invoke-static {v6, v7, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 397
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 398
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 399
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 400
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 401
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 402
    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 406
    .end local v6           #contactId:J
    .end local v9           #lookupKey:Ljava/lang/String;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 411
    :goto_1
    return-object v8

    .line 404
    .end local v8           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_0
    sget-object v8, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .restart local v8       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_0

    .line 409
    .end local v8           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_1
    const/4 v8, 0x0

    .restart local v8       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_1
.end method

.method private queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 13
    .parameter "sipAddress"

    .prologue
    const/4 v2, 0x0

    .line 272
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 283
    .local v1, contactRef:Landroid/net/Uri;
    const-string v3, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 286
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 288
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 296
    .local v8, dataTableCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 297
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    new-instance v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v9}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 308
    .local v9, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const-string v0, "contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 310
    .local v6, contactId:J
    const-string v0, "lookup"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 312
    .local v10, lookupKey:Ljava/lang/String;
    invoke-static {v6, v7, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 313
    const-string v0, "display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 316
    const/4 v0, 0x3

    iput v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 317
    iput-object v2, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 321
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 322
    iput-object v2, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 323
    const-string v0, "photo_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 328
    .end local v6           #contactId:J
    .end local v10           #lookupKey:Ljava/lang/String;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 333
    :goto_1
    return-object v9

    .line 326
    .end local v9           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_0
    sget-object v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .restart local v9       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_0

    .line 331
    .end local v9           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_1
    const/4 v9, 0x0

    .restart local v9       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_1
.end method

.method private setPhoto(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;JLandroid/net/Uri;J)V
    .locals 8
    .parameter "views"
    .parameter "photoId"
    .parameter "contactUri"
    .parameter "randomSeed"

    .prologue
    .line 822
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide v2, p2

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZJ)V

    .line 823
    return-void
.end method

.method private updateCallLogContactInfoCache(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V
    .locals 8
    .parameter "number"
    .parameter "updatedInfo"
    .parameter "callLogInfo"

    .prologue
    .line 729
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 730
    .local v1, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 732
    .local v0, needsUpdate:Z
    if-eqz p3, :cond_7

    .line 733
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 734
    const-string v3, "name"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const/4 v0, 0x1

    .line 738
    :cond_0
    iget v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    if-eq v3, v4, :cond_1

    .line 739
    const-string v3, "numbertype"

    iget v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    const/4 v0, 0x1

    .line 743
    :cond_1
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 744
    const-string v3, "numberlabel"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const/4 v0, 0x1

    .line 747
    :cond_2
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 748
    const-string v3, "lookup_uri"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const/4 v0, 0x1

    .line 751
    :cond_3
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 752
    const-string v3, "normalized_number"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const/4 v0, 0x1

    .line 755
    :cond_4
    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 756
    const-string v3, "matched_number"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const/4 v0, 0x1

    .line 759
    :cond_5
    iget-wide v3, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    iget-wide v5, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    .line 760
    const-string v3, "photo_id"

    iget-wide v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 761
    const/4 v0, 0x1

    .line 775
    :cond_6
    :goto_0
    if-nez v0, :cond_8

    .line 785
    :goto_1
    return-void

    .line 765
    :cond_7
    const-string v3, "name"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v3, "numbertype"

    iget v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 767
    const-string v3, "numberlabel"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v3, "lookup_uri"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v3, "matched_number"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v3, "normalized_number"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v3, "photo_id"

    iget-wide v4, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 772
    const/4 v0, 0x1

    goto :goto_0

    .line 779
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .local v2, where:Ljava/lang/StringBuilder;
    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addGroup(IIZ)V
    .locals 2
    .parameter "cursorPosition"
    .parameter "size"
    .parameter "expanded"

    .prologue
    .line 841
    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= addGroup ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    .line 843
    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 503
    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= addGroups ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    .line 505
    return-void
.end method

.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 543
    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= bindChildView ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 545
    return-void
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "groupSize"
    .parameter "expanded"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 564
    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= bindGroupView ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 566
    return-void
.end method

.method public bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 523
    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= bindStandAloneView ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 525
    return-void
.end method

.method public disableRequestProcessingForTest()V
    .locals 1

    .prologue
    .line 832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequestProcessingDisabled:Z

    .line 833
    return-void
.end method

.method enqueueRequest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V
    .locals 3
    .parameter "number"
    .parameter "callLogInfo"
    .parameter "immediate"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 241
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .local v0, request:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 247
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mFirst:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->startRequestProcessing()V

    .line 250
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mFirst:Z

    .line 252
    :cond_1
    return-void

    .line 247
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public injectContactInfoForTest(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V
    .locals 1
    .parameter "number"
    .parameter "contactInfo"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 837
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/common/widget/GroupingListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "parent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 530
    const-string v2, "LogsDeleteAdapter"

    const-string v3, "========= newChildView ========="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 534
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040098

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 536
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 537
    return-object v1
.end method

.method public newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "parent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 550
    const-string v2, "LogsDeleteAdapter"

    const-string v3, "========= newGroupView ========="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 554
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040098

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 556
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 557
    return-object v1
.end method

.method public newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "parent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 510
    const-string v2, "LogsDeleteAdapter"

    const-string v3, "========= newStandAloneView ========="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 514
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040098

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 516
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 517
    return-object v1
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mFirst:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mFirst:Z

    .line 135
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 473
    const/4 v3, 0x0

    .line 474
    .local v3, needNotify:Z
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mDone:Z

    if-nez v6, :cond_3

    .line 475
    const/4 v4, 0x0

    .line 476
    .local v4, number:Ljava/lang/String;
    const/4 v1, 0x0

    .line 477
    .local v1, callLogInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v7

    .line 478
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 479
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 480
    .local v5, request:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 481
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object v1, v0

    .line 494
    .end local v5           #request:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mDone:Z

    if-nez v6, :cond_0

    if-eqz v4, :cond_0

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfo(Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 496
    const/4 v3, 0x1

    goto :goto_0

    .line 483
    :cond_1
    if-eqz v3, :cond_2

    .line 484
    const/4 v3, 0x0

    .line 485
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 489
    :catch_0
    move-exception v2

    .line 491
    .local v2, ie:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 494
    .end local v2           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 499
    .end local v1           #callLogInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v4           #number:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mLoading:Z

    .line 183
    return-void
.end method

.method public startRequestProcessing()V
    .locals 2

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequestProcessingDisabled:Z

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mDone:Z

    .line 205
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "CallLogContactLookup"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Ljava/lang/Thread;

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
