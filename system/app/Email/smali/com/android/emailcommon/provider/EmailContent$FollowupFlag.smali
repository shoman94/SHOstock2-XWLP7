.class public final Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/emailcommon/provider/EmailContent$FollowupFlagColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FollowupFlag"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;,
        Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;
    }
.end annotation


# static fields
.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri;

.field public static final MESSAGE_CONTENT_URI:Landroid/net/Uri;

.field public static final SYNCED_CONTENT_URI:Landroid/net/Uri;

.field public static final UPDATED_CONTENT_URI:Landroid/net/Uri;

.field private static defaultFollowup:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;


# instance fields
.field public CompleteTime:J

.field public DateCompleted:J

.field public DueDate:J

.field public FlagType:Ljava/lang/String;

.field public MsgId:J

.field public MsgSyncServerId:Ljava/lang/String;

.field public OrdinalDate:J

.field public ReminderSet:Ljava/lang/Boolean;

.field public ReminderTime:J

.field public RingtoneUri:Landroid/net/Uri;

.field public StartDate:J

.field public Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

.field public SubOrdinalDate:Ljava/lang/String;

.field public TaskId:J

.field public TaskSyncServerId:Ljava/lang/String;

.field public UTCDueDate:J

.field public UTCStartDate:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/followupFlag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    .line 2883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->MESSAGE_CONTENT_URI:Landroid/net/Uri;

    .line 2888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/syncedFollowupFlag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    .line 2891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/updatedFollowupFlag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    .line 2894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/deletedFollowupFlag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DELETED_CONTENT_URI:Landroid/net/Uri;

    .line 2933
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "messageKey"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "messageSyncServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "taskKey"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "taskSyncServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ringtoneUri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagType"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "completeTime"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dateCompleted"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "startDate"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dueDate"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "UTCStartDate"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "UTCDueDate"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "reminderSet"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "reminderTime"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ordinalDate"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sub_ordinaldate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 2990
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->THIS_WEEK:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->defaultFollowup:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 2992
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 2954
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 2956
    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    .line 2958
    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DateCompleted:J

    .line 2960
    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CompleteTime:J

    .line 2962
    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 2964
    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 2966
    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    .line 2968
    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    .line 2970
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 2972
    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderTime:J

    .line 2974
    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    .line 2976
    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->SubOrdinalDate:Ljava/lang/String;

    .line 2979
    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->MsgId:J

    .line 2981
    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    .line 2983
    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->TaskId:J

    .line 2985
    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->TaskSyncServerId:Ljava/lang/String;

    .line 2987
    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->RingtoneUri:Landroid/net/Uri;

    .line 2993
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 2994
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 2995
    return-void
.end method

.method public static restoreFollowupFlagWithEmailId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 3095
    .line 3097
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "messageKey=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3101
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3102
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3109
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3110
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 3109
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3110
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    goto :goto_0

    .line 3106
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 3109
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3110
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    .line 3109
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 3109
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    .line 3106
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public restore(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3146
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 3147
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 3150
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3153
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 3162
    :goto_0
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    .line 3163
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DateCompleted:J

    .line 3164
    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CompleteTime:J

    .line 3165
    const/16 v3, 0xa

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 3166
    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 3167
    const/16 v3, 0xc

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    .line 3168
    const/16 v3, 0xd

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    .line 3169
    const/16 v3, 0xe

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 3170
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderTime:J

    .line 3171
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    .line 3172
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->SubOrdinalDate:Ljava/lang/String;

    .line 3175
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->MsgId:J

    .line 3176
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    .line 3177
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->TaskId:J

    .line 3178
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->TaskSyncServerId:Ljava/lang/String;

    .line 3179
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3180
    .local v0, ringtone:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3181
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->RingtoneUri:Landroid/net/Uri;

    .line 3183
    :cond_1
    return-void

    .line 3156
    .end local v0           #ringtone:Ljava/lang/String;
    :pswitch_0
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto/16 :goto_0

    .line 3159
    :pswitch_1
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto/16 :goto_0

    .line 3150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDefaults(Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 11
    .parameter "FollowupStatus"
    .parameter "context"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 3221
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 3224
    .local v1, now:Ljava/util/Calendar;
    new-instance v3, Ljava/lang/String;

    const-string v4, "Follow Up"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    .line 3226
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$1;->$SwitchMap$com$android$emailcommon$provider$EmailContent$FollowupFlag$FollowupFlagDefaultState:[I

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3230
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 3231
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 3232
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 3233
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 3234
    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderTime:J

    .line 3287
    :goto_0
    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3288
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 3289
    .local v2, rem:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3291
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xe

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 3292
    const/16 v3, 0xd

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 3293
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 3298
    const/16 v3, 0xb

    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    div-int/lit16 v4, v4, 0xe10

    rsub-int/lit8 v4, v4, 0x11

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    div-int/lit16 v5, v5, 0xe10

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 3301
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderTime:J

    .line 3305
    .end local v0           #c:Ljava/util/Calendar;
    .end local v2           #rem:Ljava/util/Calendar;
    :cond_0
    iget-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    cmp-long v3, v6, v3

    if-nez v3, :cond_1

    .line 3306
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    .line 3308
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->storeFollowupFlag(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 3237
    :pswitch_0
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 3238
    invoke-virtual {v1, v9, v8}, Ljava/util/Calendar;->add(II)V

    .line 3239
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 3240
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 3241
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 3242
    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto :goto_0

    .line 3245
    :pswitch_1
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 3246
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 3247
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 3248
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 3249
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 3250
    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 3253
    :pswitch_2
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 3254
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v8}, Ljava/util/Calendar;->add(II)V

    .line 3255
    const/4 v3, 0x2

    invoke-virtual {v1, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 3256
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 3257
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 3258
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 3259
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 3260
    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 3263
    :pswitch_3
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 3264
    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DueDate:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 3265
    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    .line 3266
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 3267
    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 3270
    :pswitch_4
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 3271
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 3272
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 3273
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 3274
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CompleteTime:J

    .line 3275
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DateCompleted:J

    .line 3276
    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 3279
    :pswitch_5
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 3280
    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DueDate:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 3281
    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    .line 3282
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 3283
    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v6, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 3226
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public storeFollowupFlag(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    .line 3186
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3188
    .local v0, retval:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3189
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-static {p1, v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    move-result v1

    .line 3190
    .local v1, tmp:I
    if-eqz v1, :cond_0

    .line 3191
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3198
    .end local v1           #tmp:I
    :cond_0
    :goto_0
    return-object v0

    .line 3193
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 3194
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 3195
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    .line 2999
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3002
    .local v0, values:Landroid/content/ContentValues;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$1;->$SwitchMap$com$android$emailcommon$provider$EmailContent$FollowupFlag$FollowupFlagStatus:[I

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->Status:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3020
    const-string v3, "status"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3021
    iput-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    .line 3022
    iput-wide v5, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v5, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 3023
    iput-wide v5, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v5, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 3024
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 3025
    iput-wide v5, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v5, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v5, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderTime:J

    .line 3028
    :goto_0
    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 3029
    const-string v3, "flagType"

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    :goto_1
    const-string v3, "dateCompleted"

    iget-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DateCompleted:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3033
    const-string v3, "completeTime"

    iget-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CompleteTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3034
    const-string v3, "startDate"

    iget-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->StartDate:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3035
    const-string v3, "dueDate"

    iget-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DueDate:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3036
    const-string v3, "UTCStartDate"

    iget-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3037
    const-string v3, "UTCDueDate"

    iget-wide v4, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3038
    const-string v3, "reminderSet"

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3039
    const-string v1, "reminderTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3040
    const-string v1, "ordinalDate"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3041
    const-string v1, "sub_ordinaldate"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->SubOrdinalDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    const-string v1, "messageKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->MsgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3045
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3046
    const-string v1, "messageSyncServerId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    :cond_0
    const-string v1, "taskKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->TaskId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3048
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->TaskSyncServerId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3049
    const-string v1, "taskSyncServerId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->TaskSyncServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    :cond_1
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->RingtoneUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 3051
    const-string v1, "ringtoneUri"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->RingtoneUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3055
    :goto_3
    return-object v0

    .line 3005
    :pswitch_0
    const-string v3, "status"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3006
    iput-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    .line 3007
    iput-wide v5, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    iput-wide v5, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->StartDate:J

    .line 3008
    iput-wide v5, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    iput-wide v5, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DueDate:J

    .line 3009
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    .line 3010
    iput-wide v5, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DateCompleted:J

    iput-wide v5, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CompleteTime:J

    iput-wide v5, p0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 3013
    :pswitch_1
    const-string v3, "status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 3016
    :pswitch_2
    const-string v3, "status"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 3031
    :cond_2
    const-string v3, "flagType"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    move v1, v2

    .line 3038
    goto/16 :goto_2

    .line 3053
    :cond_4
    const-string v1, "ringtoneUri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_3

    .line 3002
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
