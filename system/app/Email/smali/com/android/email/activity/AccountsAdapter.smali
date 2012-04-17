.class public Lcom/android/email/activity/AccountsAdapter;
.super Landroid/widget/CursorAdapter;
.source "AccountsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AccountsAdapter$Callback;
    }
.end annotation


# static fields
.field public static final MAILBOX_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/android/email/activity/AccountsAdapter$Callback;

.field private final mDefaultAccountId:J

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mMailboxesCount:I

.field private final mOnDeletingAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeparatorPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flagVisible"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/AccountsAdapter;->MAILBOX_PROJECTION:[Ljava/lang/String;

    .line 72
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "unreadCount"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/AccountsAdapter;->MAILBOX_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;Landroid/content/Context;IJLcom/android/email/activity/AccountsAdapter$Callback;)V
    .locals 1
    .parameter "c"
    .parameter "context"
    .parameter "mailboxesCount"
    .parameter "defaultAccountId"
    .parameter "callback"

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/AccountsAdapter;->mOnDeletingAccounts:Ljava/util/ArrayList;

    .line 117
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 118
    iput p3, p0, Lcom/android/email/activity/AccountsAdapter;->mMailboxesCount:I

    .line 119
    iput p3, p0, Lcom/android/email/activity/AccountsAdapter;->mSeparatorPosition:I

    .line 120
    iput-wide p4, p0, Lcom/android/email/activity/AccountsAdapter;->mDefaultAccountId:J

    .line 121
    iput-object p6, p0, Lcom/android/email/activity/AccountsAdapter;->mCallback:Lcom/android/email/activity/AccountsAdapter$Callback;

    .line 122
    return-void
.end method

.method private bindAccountItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 243
    move-object/from16 v13, p1

    check-cast v13, Lcom/android/email/activity/AccountFolderListItem;

    .line 244
    .local v13, itemView:Lcom/android/email/activity/AccountFolderListItem;
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v1}, Lcom/android/email/activity/AccountFolderListItem;->bindViewInit(Lcom/android/email/activity/AccountsAdapter;Z)V

    .line 245
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v13, Lcom/android/email/activity/AccountFolderListItem;->mAccountId:J

    .line 247
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 250
    .local v7, accountId:J
    const v1, 0x7f100006

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 253
    .local v14, text:Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 254
    const v1, 0x7f100009

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 255
    .local v11, descriptionView:Landroid/widget/TextView;
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .end local v11           #descriptionView:Landroid/widget/TextView;
    :cond_0
    const/4 v1, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 259
    if-eqz v14, :cond_1

    .line 260
    const v1, 0x7f10000a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 261
    .local v12, emailView:Landroid/widget/TextView;
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    .end local v12           #emailView:Landroid/widget/TextView;
    :cond_1
    const/16 v16, 0x0

    .line 267
    .local v16, unreadMessageCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/activity/AccountsAdapter;->MAILBOX_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v4, "accountKey =? AND type = 0"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 273
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 275
    .local v10, count:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 276
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    .line 280
    .end local v10           #count:Ljava/lang/String;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 283
    const v1, 0x7f10000c

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    const v1, 0x7f10000b

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 285
    .local v15, unreadCountView:Landroid/widget/TextView;
    if-lez v16, :cond_3

    .line 286
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :goto_0
    const v1, 0x7f100007

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    const v1, 0x7f10000f

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    const v1, 0x7f10000e

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/email/activity/AccountsAdapter;->mDefaultAccountId:J

    cmp-long v1, v7, v1

    if-nez v1, :cond_4

    .line 296
    const v1, 0x7f10000d

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 300
    :goto_1
    return-void

    .line 280
    .end local v15           #unreadCountView:Landroid/widget/TextView;
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 289
    .restart local v15       #unreadCountView:Landroid/widget/TextView;
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 298
    :cond_4
    const v1, 0x7f10000d

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private bindMailboxItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    .line 186
    move-object v3, p1

    check-cast v3, Lcom/android/email/activity/AccountFolderListItem;

    .line 187
    .local v3, itemView:Lcom/android/email/activity/AccountFolderListItem;
    const/4 v8, 0x0

    invoke-virtual {v3, p0, v8}, Lcom/android/email/activity/AccountFolderListItem;->bindViewInit(Lcom/android/email/activity/AccountsAdapter;Z)V

    .line 190
    const v8, 0x7f100006

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 192
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, text:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 194
    const v8, 0x7f100009

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 195
    .local v4, nameView:Landroid/widget/TextView;
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .end local v4           #nameView:Landroid/widget/TextView;
    :cond_0
    const/4 v6, 0x0

    .line 200
    const v8, 0x7f10000a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 201
    .local v5, statusView:Landroid/widget/TextView;
    if-eqz v6, :cond_3

    .line 202
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    :goto_0
    const/4 v1, -0x1

    .line 209
    .local v1, count:I
    const/4 v8, 0x4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 210
    if-eqz v6, :cond_1

    .line 211
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 213
    :cond_1
    const v8, 0x7f10000b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 214
    .local v7, unreadCountView:Landroid/widget/TextView;
    const v8, 0x7f10000c

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    .local v0, allCountView:Landroid/widget/TextView;
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 217
    .local v2, id:I
    if-lez v1, :cond_5

    .line 218
    int-to-long v8, v2

    const-wide/16 v10, -0x4

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    int-to-long v8, v2

    const-wide/16 v10, -0x5

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    int-to-long v8, v2

    const-wide/16 v10, -0x6

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 220
    :cond_2
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :goto_1
    const v8, 0x7f10000f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 234
    const v8, 0x7f10000e

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 235
    const v8, 0x7f10000d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 236
    const v8, 0x7f100007

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 237
    const v8, 0x7f100007

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v9

    int-to-long v10, v2

    invoke-virtual {v9, v10, v11}, Lcom/android/email/FolderProperties;->getSummaryMailboxIconIds(J)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    return-void

    .line 205
    .end local v0           #allCountView:Landroid/widget/TextView;
    .end local v1           #count:I
    .end local v2           #id:I
    .end local v7           #unreadCountView:Landroid/widget/TextView;
    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 224
    .restart local v0       #allCountView:Landroid/widget/TextView;
    .restart local v1       #count:I
    .restart local v2       #id:I
    .restart local v7       #unreadCountView:Landroid/widget/TextView;
    :cond_4
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 229
    :cond_5
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static getInstance(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/content/Context;JLcom/android/email/activity/AccountsAdapter$Callback;)Lcom/android/email/activity/AccountsAdapter;
    .locals 8
    .parameter "mailboxesCursor"
    .parameter "accountsCursor"
    .parameter "context"
    .parameter "defaultAccountId"
    .parameter "callback"

    .prologue
    .line 106
    const/4 v0, 0x2

    new-array v7, v0, [Landroid/database/Cursor;

    const/4 v0, 0x0

    aput-object p0, v7, v0

    const/4 v0, 0x1

    aput-object p1, v7, v0

    .line 109
    .local v7, cursors:[Landroid/database/Cursor;
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v7}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 110
    .local v1, mc:Landroid/database/Cursor;
    new-instance v0, Lcom/android/email/activity/AccountsAdapter;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object v2, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/AccountsAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;IJLcom/android/email/activity/AccountsAdapter$Callback;)V

    return-object v0
.end method

.method private getRealPosition(I)I
    .locals 2
    .parameter "pos"

    .prologue
    .line 384
    iget v0, p0, Lcom/android/email/activity/AccountsAdapter;->mSeparatorPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 393
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 387
    .restart local p1
    :cond_1
    iget v0, p0, Lcom/android/email/activity/AccountsAdapter;->mSeparatorPosition:I

    if-le p1, v0, :cond_0

    .line 393
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addOnDeletingAccount(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/email/activity/AccountsAdapter;->mOnDeletingAccounts:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/android/email/activity/AccountsAdapter;->mMailboxesCount:I

    if-ge v0, v1, :cond_0

    .line 178
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/email/activity/AccountsAdapter;->bindMailboxItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/email/activity/AccountsAdapter;->bindAccountItem(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 131
    if-nez p1, :cond_0

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/AccountsAdapter;->mCallback:Lcom/android/email/activity/AccountsAdapter$Callback;

    .line 134
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 372
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 373
    .local v0, count:I
    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/email/activity/AccountsAdapter;->mSeparatorPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 375
    add-int/lit8 v0, v0, 0x1

    .line 377
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountsAdapter;->getRealPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountsAdapter;->getRealPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 316
    iget v0, p0, Lcom/android/email/activity/AccountsAdapter;->mSeparatorPosition:I

    if-ne p1, v0, :cond_0

    .line 317
    const/4 v0, -0x1

    .line 319
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 335
    iget v1, p0, Lcom/android/email/activity/AccountsAdapter;->mSeparatorPosition:I

    if-ne p1, v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/email/activity/AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040061

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 338
    .local v0, view:Landroid/widget/TextView;
    const v1, 0x7f080094

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 341
    .end local v0           #view:Landroid/widget/TextView;
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountsAdapter;->getRealPosition(I)I

    move-result v1

    invoke-super {p0, v1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isAccount(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 152
    iget v0, p0, Lcom/android/email/activity/AccountsAdapter;->mMailboxesCount:I

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 6
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 357
    iget v1, p0, Lcom/android/email/activity/AccountsAdapter;->mSeparatorPosition:I

    if-ne p1, v1, :cond_0

    .line 363
    :goto_0
    return v3

    .line 359
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountsAdapter;->isAccount(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/MergeCursor;

    invoke-virtual {v1, v3}, Landroid/database/MergeCursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 361
    .local v0, id:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/email/activity/AccountsAdapter;->isOnDeletingAccountView(J)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    .end local v0           #id:Ljava/lang/Long;
    :cond_2
    move v3, v2

    .line 363
    goto :goto_0
.end method

.method public isMailbox(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 148
    iget v0, p0, Lcom/android/email/activity/AccountsAdapter;->mMailboxesCount:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnDeletingAccountView(J)Z
    .locals 2
    .parameter "accountId"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/email/activity/AccountsAdapter;->mOnDeletingAccounts:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/email/activity/AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClickFolder(Lcom/android/email/activity/AccountFolderListItem;)V
    .locals 3
    .parameter "itemView"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/AccountsAdapter;->mCallback:Lcom/android/email/activity/AccountsAdapter$Callback;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/email/activity/AccountsAdapter;->mCallback:Lcom/android/email/activity/AccountsAdapter$Callback;

    iget-wide v1, p1, Lcom/android/email/activity/AccountFolderListItem;->mAccountId:J

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/AccountsAdapter$Callback;->onClickAccountFolders(J)V

    .line 173
    :cond_0
    return-void
.end method
