.class public Lcom/android/email/provider/EmailProvider;
.super Landroid/content/ContentProvider;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/EmailProvider$DatabaseHelper;,
        Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
    }
.end annotation


# static fields
.field private static final CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

.field private static final CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

.field private static final GB_FLAGS_UPGRADE_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final ORPHANS_PROJECTION:[Ljava/lang/String;

.field private static final RESETSECURITYSYNCKEY_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final TABLE_NAMES:[Ljava/lang/String;

.field private static final V21_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final V21_HOSTAUTH_PROJECTION:[Ljava/lang/String;

.field private static sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

.field private static final sCacheAccount:Lcom/android/email/provider/ContentCache;

.field private static final sCacheHostAuth:Lcom/android/email/provider/ContentCache;

.field static final sCacheMailbox:Lcom/android/email/provider/ContentCache;

.field private static final sCacheMessage:Lcom/android/email/provider/ContentCache;

.field private static sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 105
    sput-object v4, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    .line 106
    sput-object v4, Lcom/android/email/provider/EmailProvider;->sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    .line 116
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "mailboxKey"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/email/provider/EmailProvider;->ORPHANS_PROJECTION:[Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Account"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sCacheAccount:Lcom/android/email/provider/ContentCache;

    .line 131
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "HostAuth"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sCacheHostAuth:Lcom/android/email/provider/ContentCache;

    .line 134
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Mailbox"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sCacheMailbox:Lcom/android/email/provider/ContentCache;

    .line 137
    new-instance v0, Lcom/android/email/provider/ContentCache;

    const-string v1, "Message"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v8}, Lcom/android/email/provider/ContentCache;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sCacheMessage:Lcom/android/email/provider/ContentCache;

    .line 267
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Account"

    aput-object v1, v0, v5

    const-string v1, "Mailbox"

    aput-object v1, v0, v6

    const-string v1, "Message"

    aput-object v1, v0, v7

    const-string v1, "Attachment"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "HostAuth"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Message_Updates"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Message_Deletes"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FollowupFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "FollowupFlag_Updates"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FollowupFlag_Deletes"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Policies"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Mailbox_CB"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Message_CB"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Account_CB"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CertificateCache"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "RecipientInformation"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "historyAccount"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "EmailAddressCache"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "QuickResponse"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Document"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Body"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "IRMTemplate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    .line 304
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/android/email/provider/ContentCache;

    sget-object v1, Lcom/android/email/provider/EmailProvider;->sCacheAccount:Lcom/android/email/provider/ContentCache;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/email/provider/EmailProvider;->sCacheMailbox:Lcom/android/email/provider/ContentCache;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/email/provider/EmailProvider;->sCacheMessage:Lcom/android/email/provider/ContentCache;

    aput-object v1, v0, v7

    aput-object v4, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/android/email/provider/EmailProvider;->sCacheHostAuth:Lcom/android/email/provider/ContentCache;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v4, v0, v1

    const/4 v1, 0x6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    aput-object v4, v0, v1

    const/16 v1, 0x8

    aput-object v4, v0, v1

    const/16 v1, 0x9

    aput-object v4, v0, v1

    const/16 v1, 0xa

    aput-object v4, v0, v1

    const/16 v1, 0xb

    aput-object v4, v0, v1

    const/16 v1, 0xc

    aput-object v4, v0, v1

    const/16 v1, 0xd

    aput-object v4, v0, v1

    const/16 v1, 0xe

    aput-object v4, v0, v1

    const/16 v1, 0xf

    aput-object v4, v0, v1

    const/16 v1, 0x10

    aput-object v4, v0, v1

    const/16 v1, 0x11

    aput-object v4, v0, v1

    const/16 v1, 0x12

    aput-object v4, v0, v1

    const/16 v1, 0x13

    aput-object v4, v0, v1

    const/16 v1, 0x14

    aput-object v4, v0, v1

    const/16 v1, 0x15

    aput-object v4, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailProvider;->CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

    .line 311
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 430
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 433
    const-string v1, "com.android.email.provider"

    const-string v2, "account"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 436
    const-string v1, "com.android.email.provider"

    const-string v2, "account/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 440
    const-string v1, "com.android.email.provider"

    const-string v2, "resetNewMessageCount"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 442
    const-string v1, "com.android.email.provider"

    const-string v2, "resetNewMessageCount/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 445
    const-string v1, "com.android.email.provider"

    const-string v2, "account/#/mailbox"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 448
    const-string v1, "com.android.email.provider"

    const-string v2, "mailbox"

    const/16 v3, 0x1000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 452
    const-string v1, "com.android.email.provider"

    const-string v2, "mailbox/#"

    const/16 v3, 0x1001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 454
    const-string v1, "com.android.email.provider"

    const-string v2, "mailbox/#/message"

    const/16 v3, 0x1003

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 457
    const-string v1, "com.android.email.provider"

    const-string v2, "message"

    const/16 v3, 0x2000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 460
    const-string v1, "com.android.email.provider"

    const-string v2, "message/#"

    const/16 v3, 0x2001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 463
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment"

    const/16 v3, 0x3000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 465
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment/#"

    const/16 v3, 0x3001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 468
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment/message/#"

    const/16 v3, 0x3002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 472
    const-string v1, "com.android.email.provider"

    const-string v2, "attachment/content/*"

    const/16 v3, 0x3003

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 476
    const-string v1, "com.android.email.provider"

    const-string v2, "body"

    const v3, 0x14000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 478
    const-string v1, "com.android.email.provider"

    const-string v2, "body/#"

    const v3, 0x14001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 480
    const-string v1, "com.android.email.provider"

    const-string v2, "body/message/#"

    const v3, 0x14002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 482
    const-string v1, "com.android.email.provider"

    const-string v2, "body/#/html"

    const v3, 0x14003

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 484
    const-string v1, "com.android.email.provider"

    const-string v2, "body/#/text"

    const v3, 0x14004

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 487
    const-string v1, "com.android.email.provider"

    const-string v2, "hostauth"

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 489
    const-string v1, "com.android.email.provider"

    const-string v2, "hostauth/#"

    const/16 v3, 0x4001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 493
    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxIdAddToField/#"

    const/16 v3, 0x1002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 495
    const-string v1, "com.android.email.provider"

    const-string v2, "accountIdAddToField/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 503
    const-string v1, "com.android.email.provider"

    const-string v2, "syncedMessage/#"

    const/16 v3, 0x2002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 511
    const-string v1, "com.android.email.provider"

    const-string v2, "deletedMessage"

    const/16 v3, 0x6000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 513
    const-string v1, "com.android.email.provider"

    const-string v2, "deletedMessage/#"

    const/16 v3, 0x6001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 516
    const-string v1, "com.android.email.provider"

    const-string v2, "deletedMessage/mailbox/#"

    const/16 v3, 0x6002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 520
    const-string v1, "com.android.email.provider"

    const-string v2, "updatedMessage"

    const/16 v3, 0x5000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 522
    const-string v1, "com.android.email.provider"

    const-string v2, "updatedMessage/#"

    const/16 v3, 0x5001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 526
    const-string v1, "com.android.email.provider"

    const-string v2, "followupFlag"

    const/16 v3, 0x7000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 527
    const-string v1, "com.android.email.provider"

    const-string v2, "updatedFollowupFlag"

    const v3, 0x8000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 529
    const-string v1, "com.android.email.provider"

    const-string v2, "deletedFollowupFlag"

    const v3, 0x9000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 532
    const-string v1, "com.android.email.provider"

    const-string v2, "followupFlag/#"

    const/16 v3, 0x7001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 533
    const-string v1, "com.android.email.provider"

    const-string v2, "updatedFollowupFlag/#"

    const v3, 0x8001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 535
    const-string v1, "com.android.email.provider"

    const-string v2, "deletedFollowupFlag/#"

    const v3, 0x9001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 542
    const-string v1, "com.android.email.provider"

    const-string v2, "syncedFollowupFlag/#"

    const/16 v3, 0x7002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 547
    const-string v1, "com.android.email.provider"

    const-string v2, "policies"

    const v3, 0xa000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 548
    const-string v1, "com.android.email.provider"

    const-string v2, "policies/#"

    const v3, 0xa001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 552
    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxcb"

    const v3, 0xb000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 553
    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxcb/#"

    const v3, 0xb001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 554
    const-string v1, "com.android.email.provider"

    const-string v2, "mailboxcb/#/mailbox"

    const v3, 0xb002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 556
    const-string v1, "com.android.email.provider"

    const-string v2, "messagecb"

    const v3, 0xc000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 557
    const-string v1, "com.android.email.provider"

    const-string v2, "messagecb/#"

    const v3, 0xc001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 558
    const-string v1, "com.android.email.provider"

    const-string v2, "accountcb"

    const v3, 0xd000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 559
    const-string v1, "com.android.email.provider"

    const-string v2, "accountcb/#"

    const v3, 0xd001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 560
    const-string v1, "com.android.email.provider"

    const-string v2, "accountcb/protocol"

    const v3, 0xd002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 563
    const-string v1, "com.android.email.provider"

    const-string v2, "certificateCache"

    const v3, 0xe000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 566
    const-string v1, "com.android.email.provider"

    const-string v2, "syncedMessage"

    const/16 v3, 0x2003

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 569
    const-string v1, "com.android.email.provider"

    const-string v2, "recipientInformation"

    const v3, 0xf000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 571
    const-string v1, "com.android.email.provider"

    const-string v2, "recipientInformation/#"

    const v3, 0xf001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 573
    const-string v1, "com.android.email.provider"

    const-string v2, "recipientInformation/filter/*"

    const v3, 0xf002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 578
    const-string v1, "com.android.email.provider"

    const-string v2, "document"

    const v3, 0x13000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 579
    const-string v1, "com.android.email.provider"

    const-string v2, "document/#"

    const v3, 0x13001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 582
    const-string v1, "com.android.email.provider"

    const-string v2, "historyAccount"

    const/high16 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 584
    const-string v1, "com.android.email.provider"

    const-string v2, "IRMTemplate"

    const v3, 0x15000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 585
    const-string v1, "com.android.email.provider"

    const-string v2, "IRMTemplate/#"

    const v3, 0x15001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 589
    const-string v1, "com.android.email.provider"

    const-string v2, "emailaddresscache"

    const v3, 0x11000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 590
    const-string v1, "com.android.email.provider"

    const-string v2, "emailaddresscache/filter"

    const v3, 0x11001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 591
    const-string v1, "com.android.email.provider"

    const-string v2, "emailaddresscache/filter/*"

    const v3, 0x11001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 592
    const-string v1, "com.android.email.provider"

    const-string v2, "emailaddresscache/#"

    const v3, 0x11002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 597
    const-string v1, "com.android.email.provider"

    const-string v2, "quickresponse"

    const v3, 0x12000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 599
    const-string v1, "com.android.email.provider"

    const-string v2, "quickresponse/#"

    const v3, 0x12001

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 601
    const-string v1, "com.android.email.provider"

    const-string v2, "quickresponse/account/#"

    const v3, 0x12002

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 604
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    .line 605
    sget-object v0, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    const-string v1, "newMessageCount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3178
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/provider/EmailProvider;->RESETSECURITYSYNCKEY_ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 4529
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "hostAuthKeyRecv"

    aput-object v1, v0, v5

    const-string v1, "emailAddress"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/email/provider/EmailProvider;->V21_ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 4535
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "protocol"

    aput-object v1, v0, v5

    const-string v1, "password"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/email/provider/EmailProvider;->V21_HOSTAUTH_PROJECTION:[Ljava/lang/String;

    .line 4587
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "flags"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/email/provider/EmailProvider;->GB_FLAGS_UPGRADE_ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 1699
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider;->populateFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static convertAccountFlagsFromGB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 4597
    .line 4599
    :try_start_0
    const-string v1, "Account"

    sget-object v2, Lcom/android/email/provider/EmailProvider;->GB_FLAGS_UPGRADE_ACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id>0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 4605
    if-eqz v1, :cond_4

    .line 4606
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4607
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 4608
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 4610
    and-int/lit16 v4, v3, -0xf81

    .line 4612
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    :goto_1
    or-int/2addr v4, v0

    .line 4613
    and-int/lit16 v0, v3, 0x100

    if-eqz v0, :cond_1

    const/16 v0, 0x400

    :goto_2
    or-int/2addr v4, v0

    .line 4614
    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_2

    const/16 v0, 0x800

    :goto_3
    or-int/2addr v4, v0

    .line 4615
    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_3

    const/16 v0, 0x2000

    :goto_4
    or-int/2addr v0, v4

    .line 4616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update Account set flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " where "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4622
    :catch_0
    move-exception v0

    .line 4623
    :goto_5
    :try_start_2
    const-string v2, "EmailProvider"

    const-string v3, "Exception during converting account flags from GB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4624
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4626
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4628
    :goto_6
    return-void

    :cond_0
    move v0, v9

    .line 4612
    goto :goto_1

    :cond_1
    move v0, v9

    .line 4613
    goto :goto_2

    :cond_2
    move v0, v9

    .line 4614
    goto :goto_3

    :cond_3
    move v0, v9

    .line 4615
    goto :goto_4

    .line 4620
    :cond_4
    :try_start_3
    const-string v0, "EmailProvider"

    const-string v2, "convertAccountFlagsFromGB(): null account cursor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4626
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    .line 4622
    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_5
.end method

.method static createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 1430
    const-string v0, " (_id integer primary key autoincrement, accountKey integer, sevenAccountKey integer, typeMsg integer, timeLimit integer default 7, sizeLimit integer default 50, peakTime integer default 0, offPeakTime integer default 1, days text default \'0111110\', peakStartTime text default \'09:00\', peakEndTime text default \'18:00\', whileRoaming integer default 1, attachmentEnabled integer default 5000 );"

    .line 1454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS  Account_CB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1455
    const-string v0, "Account_CB"

    const-string v1, "accountKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1456
    const-string v0, "Account_CB"

    const-string v1, "sevenAccountKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1457
    const-string v0, "Account_CB"

    const-string v1, "typeMsg"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1458
    return-void
.end method

.method static createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 884
    const-string v0, " (_id integer primary key autoincrement, displayName text, emailAddress text, syncKey text, syncLookback integer, syncInterval text, hostAuthKeyRecv integer, hostAuthKeySend integer, flags integer, isDefault integer, compatibilityUuid text, senderName text, ringtoneUri text, protocolVersion text, newMessageCount integer, securityFlags integer, securitySyncKey text, signature text, emailsize integer default 3, policyKey text, peakDays integer, peakStartMinute integer, peakEndMinute integer, peakSchedule integer, offPeakSchedule integer, roamingSchedule integer, calendarSyncLookback integer default 0, conflict integer default 0, smimeOwnCertificateAlias text, smimeOptionsFlags integer default 0, smimeSignAlgorithm integer default 0, smimeEncryptionAlgorithm integer default 0, conversationMode integer default 0, textPreview integer  default 0,deviceInfoSent integer default 0, deviceBlockedType integer default 0,IRMTemplateTimeStamp text, cbaCertificateAlias text, messageFormat integer default 0, accountType integer default -1, easLocalChange integer default 0, forwardWithFiles integer default 1, autoDownload integer default 0, recentMessages integer default 0, showImage integer default 1, autoRetryTimes integer default 3);"

    .line 1009
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Account"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1011
    const-string v1, "create trigger account_delete before delete on Account begin delete from Mailbox where accountKey=old._id; delete from HostAuth where _id=old.hostAuthKeyRecv; delete from HostAuth where _id=old.hostAuthKeySend; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1021
    const-string v1, "create trigger account_delete_policy before delete on Account begin delete from Policies where account_id=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1027
    const-string v1, "create trigger account_insert after insert on Account begin  update HostAuth set accountKey = new._id where accountKey = 0; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1032
    const-string v1, "create trigger account_delete_recipientinformation before delete on Account begin delete from RecipientInformation where accountkey=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1037
    const-string v1, "create trigger account_delete_irm before delete on Account begin delete from IRMTemplate where AccountKey=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1041
    return-void
.end method

.method static createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 1139
    const-string v0, " (_id integer primary key autoincrement, fileName text, mimeType text, size integer, contentId text, contentUri text, messageKey integer, location text, encoding text, content text, flags integer, content_bytes blob, vmAttOrder integer default 0,vmAttDuration integer default 0,accountKey integer,isInline integer);"

    .line 1156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Attachment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1157
    const-string v0, "Attachment"

    const-string v1, "messageKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1158
    return-void
.end method

.method static createBodyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 1177
    const-string v0, " (_id integer primary key autoincrement, messageKey integer, htmlContent text, textContent text, htmlReply text, textReply text, sourceMessageKey text, introText text);"

    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1183
    const-string v0, "Body"

    const-string v1, "messageKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1184
    return-void
.end method

.method static createCertificateCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1290
    const-string v0, " (_id integer primary key autoincrement, email text UNIQUE, certificate text );"

    .line 1294
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table CertificateCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1295
    return-void
.end method

.method static createDocumentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1317
    const-string v1, "linkId text UNIQUE, displayName text, isFolder integer, creationDate integer, lastModifiedDate integer, ishidden integer, contentLength integer, contentType text, mailboxKey integer, accountKey integer,parentFolderLinkId integer);"

    .line 1329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (_id integer primary key autoincrement, syncServerId text, syncServerTimeStamp integer, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table Document"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1351
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "creationDate"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "isFolder"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ishidden"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "mailboxKey"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "syncServerId"

    aput-object v3, v1, v2

    .line 1356
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1357
    const-string v4, "Document"

    invoke-static {v4, v3}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1371
    :cond_0
    return-void
.end method

.method static createEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1477
    const-string v0, " (_id integer primary key autoincrement, accountAddress text constraint email unique not null, accountName text, accountSource text, accountPrefix text, timeStamp integer, usageCount integer, operationType  integer, accountRank integer );"

    .line 1486
    .local v0, combinedSearchColumns:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table EmailAddressCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1487
    const-string v1, "CREATE TRIGGER email_cache_delete BEFORE INSERT ON EmailAddressCache WHEN ((SELECT COUNT(*) FROM EmailAddressCache)  >= 50 )  begin delete from EmailAddressCache  where timeStamp= (SELECT min(timeStamp) from EmailAddressCache ) AND usageCount= (SELECT min(usageCount) from EmailAddressCache );end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1488
    const-string v1, "CREATE TRIGGER email_cache_update AFTER UPDATE ON EmailAddressCache begin update EmailAddressCache set usageCount = NEW.usageCount + OLD.usageCount where _id=NEW._id;end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1489
    return-void
.end method

.method static createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1240
    const-string v0, " (_id integer primary key autoincrement, messageKey integer, messageSyncServerId text, taskKey integer, taskSyncServerId text, ringtoneUri text, status integer, flagType text, completeTime text, dateCompleted text, startDate text, dueDate text, UTCStartDate text, UTCDueDate text, reminderSet integer, reminderTime text, ordinalDate text, sub_ordinaldate text );"

    .line 1254
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table FollowupFlag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table FollowupFlag_Updates"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table FollowupFlag_Deletes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1259
    const-string v1, "create trigger message_delete_followup before delete on Message begin delete from FollowupFlag where messageKey=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1262
    return-void
.end method

.method static createHistoryAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 4523
    const-string v0, " (_id integer primary key autoincrement, EmailAddress text UNIQUE, TimeDate text );"

    .line 4526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table historyAccount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4527
    return-void
.end method

.method static createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1073
    const-string v0, " (_id integer primary key autoincrement, protocol text, address text, port integer, flags integer, login text, password text, domain text, accountKey integer);"

    .line 1079
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table HostAuth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method static createIRMTemplateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1053
    const-string v0, " (_id integer primary key autoincrement, AccountKey integer, IRMTemplateDescription text, IRMTemplateId text, IRMTemplateName text);"

    .line 1059
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table IRMTemplate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1060
    return-void
.end method

.method static createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tableName"
    .parameter "columnName"

    .prologue
    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 1389
    const-string v0, " (_id integer primary key autoincrement, mailboxKey integer, typeMsg integer, sevenMailboxKey integer, syncFlag integer);"

    .line 1394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS  Mailbox_CB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1395
    const-string v0, "Mailbox_CB"

    const-string v1, "mailboxKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1396
    const-string v0, "Mailbox_CB"

    const-string v1, "typeMsg"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1397
    return-void
.end method

.method static createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1091
    const-string v0, " (_id integer primary key autoincrement, displayName text, serverId text, parentServerId text, parentKey integer, accountKey integer, type integer, delimiter integer, syncKey text, syncLookback integer, syncInterval integer, syncTime integer, unreadCount integer, flagVisible integer, flags integer, visibleLimit integer, syncStatus text, messageCount integer not null default 0,flagChanged integer, dstMailboxId text, newDisplayName text, flagNoSelect integer default 0, lastTouchedTime integer default 0 ,offpeakSyncSchedule integer ,peakSyncSchedule integer ,SyncIntervalReference integer default -1 );"

    .line 1121
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Mailbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1122
    const-string v1, "create index mailbox_serverId on Mailbox (serverId)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1124
    const-string v1, "create index mailbox_accountKey on Mailbox (accountKey)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1127
    const-string v1, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method static createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 1408
    const-string v0, " (_id integer primary key autoincrement, messageKey integer, typeMsg integer,sevenMessageKey integer, missingBody integer, missingHtmlBody integer, unkEncoding integer, sevenAccountKey integer );"

    .line 1416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS  Message_CB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1417
    const-string v0, "Message_CB"

    const-string v1, "messageKey"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1418
    const-string v0, "Message_CB"

    const-string v1, "typeMsg"

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1419
    return-void
.end method

.method static createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 639
    const-string v1, "displayName text, timeStamp integer, subject text, flagRead integer, flagLoaded integer, flagFavorite integer, flagAttachment integer, flagReply integer, originalId integer, flags integer, clientId integer, messageId text, mailboxKey integer, accountKey integer, fromList text, toList text, ccList text, bccList text, replyToList text, meetingInfo text, threadId integer, threadName text, importance integer default 1, istruncated integer default 0, flagMoved integer default 0, dstMailboxKey integer default -1,flagStatus integer default 0, isMimeLoaded integer default 0, smimeFlags integer default 0, encryptionAlgorithm integer default 0, conversationId text, conversationIndex blob, followupflag integer default 0, umCallerId text, umUserNotes text,lastVerb integer default 0, lastVerbTime integer default 0,messageType integer default 0, messageDirty integer default 0, accountSchema text, mailboxType integer default -1, IRMTemplateId text, IRMContentExpiryDate text, IRMContentOwner text, IRMLicenseFlag integer default -1, IRMOwner integer, IRMRemovalFlag integer default 0, IRMTemplateName text, IRMTemplateDescription text, EasLocalDeleteFlag integer default 0, EasLocalReadFlag integer default 0, snippet text, retrySendTimes integer default 0);"

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (_id integer primary key autoincrement, syncServerId text, syncServerTimeStamp integer, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (_id integer unique, syncServerId text, syncServerTimeStamp integer, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create table Message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table Message_Updates"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table Message_Deletes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 784
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "timeStamp"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "flagRead"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "flagLoaded"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "mailboxKey"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "syncServerId"

    aput-object v3, v1, v2

    .line 789
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 790
    const-string v4, "Message"

    invoke-static {v4, v3}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_0
    const-string v0, "create trigger message_delete before delete on Message begin delete from Attachment  where messageKey=old._id; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 810
    const-string v0, "create trigger unread_message_insert before insert on Message when NEW.flagRead=0 begin update Mailbox set unreadCount=unreadCount+1  where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 818
    const-string v0, "create trigger unread_message_delete before delete on Message when OLD.flagRead=0 begin update Mailbox set unreadCount=unreadCount-1  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 825
    const-string v0, "create trigger unread_message_move before update of mailboxKey on Message when OLD.flagRead=0 begin update Mailbox set unreadCount=unreadCount-1  where _id=OLD.mailboxKey; update Mailbox set unreadCount=unreadCount+1 where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 835
    const-string v0, "create trigger unread_message_read before update of flagRead on Message when OLD.flagRead!=NEW.flagRead begin update Mailbox set unreadCount=unreadCount+ case OLD.flagRead when 0 then -1 else 1 end  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 846
    const-string v0, "create trigger message_count_message_insert after insert on Message begin update Mailbox set messageCount=messageCount+1  where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 854
    const-string v0, "create trigger message_count_message_delete after delete on Message begin update Mailbox set messageCount=messageCount-1  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 861
    const-string v0, "create trigger message_count_message_move after update of mailboxKey on Message begin update Mailbox set messageCount=messageCount-1  where _id=OLD.mailboxKey; update Mailbox set messageCount=messageCount+1 where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 869
    return-void
.end method

.method static createPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1208
    const-string v0, " (_id integer primary key autoincrement, name text, type text, value text, account_id integer , CONSTRAINT policyconstraint UNIQUE(account_id,name));"

    .line 1216
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Policies"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1218
    return-void
.end method

.method static createQuickResponseTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1170
    const-string v0, " (_id integer primary key autoincrement, quickResponse text, accountKey integer);"

    .line 1173
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table QuickResponse"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1174
    return-void
.end method

.method static createRecipientInformationTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1266
    const-string v0, " (_id integer primary key autoincrement, server_id text, accountkey integer, email_address text, fileas text, alias text, weightedrank integer );"

    .line 1273
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table RecipientInformation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1275
    return-void
.end method

.method static deleteOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 20
    .parameter "database"
    .parameter "tableName"

    .prologue
    .line 1623
    if-eqz p0, :cond_0

    .line 1626
    sget-object v4, Lcom/android/email/provider/EmailProvider;->ORPHANS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1630
    .local v11, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1673
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1676
    .end local v11           #c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 1632
    .restart local v11       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1633
    .local v13, foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1634
    .local v19, notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1635
    .local v12, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 1636
    .local v6, bindArray:[Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1640
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1643
    .local v15, mailboxId:J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1644
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1673
    .end local v6           #bindArray:[Ljava/lang/String;
    .end local v12           #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v13           #foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v15           #mailboxId:J
    .end local v19           #notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1647
    .restart local v6       #bindArray:[Ljava/lang/String;
    .restart local v12       #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v13       #foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v15       #mailboxId:J
    .restart local v19       #notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    :try_start_2
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1648
    const/4 v2, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1649
    const-string v3, "Mailbox"

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 1654
    .local v10, boxCursor:Landroid/database/Cursor;
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1655
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1663
    :goto_2
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1659
    :cond_4
    :try_start_5
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1660
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 1663
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1668
    .end local v10           #boxCursor:Landroid/database/Cursor;
    .end local v15           #mailboxId:J
    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 1669
    .local v17, messageId:J
    const/4 v2, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1670
    const-string v2, "_id=?"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 1673
    .end local v17           #messageId:J
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method static dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .parameter "db"
    .parameter "triggerName"

    .prologue
    .line 1470
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drop trigger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    :goto_0
    return-void

    .line 1471
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static enableEmailSyncFromGB(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 4543
    :try_start_0
    const-string v1, "Account"

    sget-object v2, Lcom/android/email/provider/EmailProvider;->V21_ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 4546
    const/4 v0, 0x1

    :try_start_1
    new-array v4, v0, [Ljava/lang/String;

    .line 4547
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4548
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 4550
    const-string v1, "HostAuth"

    sget-object v2, Lcom/android/email/provider/EmailProvider;->V21_HOSTAUTH_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 4554
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4555
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4556
    const-string v2, "eas"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4557
    new-instance v0, Landroid/accounts/Account;

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.exchange"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4561
    const-string v2, "com.android.email.provider"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 4562
    const-string v2, "com.android.email.provider"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4567
    :cond_0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4571
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 4573
    :catch_0
    move-exception v0

    .line 4575
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception enabling Sync Email option from GB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4577
    :goto_1
    return-void

    .line 4567
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4571
    :cond_1
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method

.method private static findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "methodName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 618
    sget-object v1, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 619
    .local v0, match:I
    if-gez v0, :cond_0

    .line 620
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 624
    :cond_0
    return v0
.end method

.method public static getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 4510
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 4511
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 4512
    if-eqz v1, :cond_0

    const/4 v2, 0x5

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(J)I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 4515
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const-string v0, "Trash"

    .line 4518
    :cond_0
    :goto_0
    return-object v0

    .line 4515
    :cond_1
    const-string v0, "UnifiedInbox"

    goto :goto_0
.end method

.method private populateFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1311
    return-void
.end method

.method static recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 4498
    const-string v0, "update Mailbox set messageCount= (select count(*) from Message where mailboxKey = Mailbox._id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4501
    return-void
.end method

.method static resetAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1462
    :try_start_0
    const-string v0, "drop table Account_CB"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1465
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1466
    return-void

    .line 1463
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetAccountTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1045
    :try_start_0
    const-string v0, "drop table Account"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1049
    return-void

    .line 1046
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1162
    :try_start_0
    const-string v0, "drop table Attachment"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1166
    return-void

    .line 1163
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resetEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1493
    :try_start_0
    const-string v0, "drop table EmailAddressCache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    :goto_0
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1498
    return-void

    .line 1494
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1084
    :try_start_0
    const-string v0, "drop table HostAuth"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1088
    return-void

    .line 1085
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetMailboxTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1132
    :try_start_0
    const-string v0, "drop table Mailbox"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1136
    return-void

    .line 1133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetMessageTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 873
    :try_start_0
    const-string v0, "drop table Message"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 874
    const-string v0, "drop table Message_Updates"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 875
    const-string v0, "drop table Message_Deletes"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 877
    const-string v0, "drop table Message_CB"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 881
    return-void

    .line 878
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static updatePasswordModeFromGB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1229
    const-string v0, "update Policies set value=\'32\' where name = \'PasswordMode\' AND (value = \'2\' OR value = \'1\');"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1233
    const-string v0, "update Policies set value=\'64\' where name = \'PasswordMode\' AND value = \'4\';"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1236
    return-void
.end method

.method static upgradeBodyTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v1, 0x5

    .line 1187
    if-ge p1, v1, :cond_1

    .line 1189
    :try_start_0
    const-string v1, "drop table Body"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1190
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createBodyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1193
    :cond_1
    if-ne p1, v1, :cond_0

    .line 1195
    :try_start_1
    const-string v1, "alter table Body add introText text"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1202
    :goto_1
    const/4 p1, 0x6

    goto :goto_0

    .line 1197
    :catch_0
    move-exception v0

    .line 1200
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProviderBody.db from v5 to v6"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1191
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4184
    if-nez p2, :cond_0

    .line 4192
    :goto_0
    return-object p1

    .line 4187
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4188
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4189
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4190
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4163
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4164
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4165
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4166
    if-eqz p2, :cond_0

    .line 4167
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4168
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4169
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4171
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x0

    .line 4471
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4472
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4473
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4475
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    .line 4476
    .local v3, results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 4486
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4489
    .end local v3           #results:[Landroid/content/ContentProviderResult;
    :goto_0
    return-object v3

    .line 4487
    .restart local v3       #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v2

    .line 4488
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4478
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #results:[Landroid/content/ContentProviderResult;
    :catch_1
    move-exception v2

    .line 4479
    .local v2, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4486
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v2           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :goto_1
    move-object v3, v4

    .line 4489
    goto :goto_0

    .line 4487
    .restart local v2       #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_2
    move-exception v2

    .line 4488
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 4481
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 4482
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4486
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :goto_2
    move-object v3, v4

    .line 4489
    goto :goto_0

    .line 4487
    .restart local v2       #e:Landroid/database/sqlite/SQLiteException;
    :catch_4
    move-exception v2

    .line 4488
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 4485
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 4486
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 4489
    :goto_3
    throw v4

    .line 4487
    :catch_5
    move-exception v2

    .line 4488
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public checkDatabases()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3829
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 3830
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 3831
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3833
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 3834
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 3835
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 3839
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "EmailProvider.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3840
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "EmailProviderBody.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3843
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3844
    const-string v1, "EmailProvider"

    const-string v2, "Deleting orphaned EmailProvider database..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3850
    :cond_2
    :goto_0
    return-void

    .line 3846
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3847
    const-string v0, "EmailProvider"

    const-string v2, "Deleting orphaned EmailProviderBody database..."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3232
    const-string v0, " create trigger mailbox_delete_cb before delete on Mailbox begin delete from Mailbox_CB where mailboxKey = old._id; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3237
    const-string v0, " create trigger mailbox_insert_cb after insert on Mailbox begin insert into Mailbox_CB(mailboxKey  ,typeMsg) values (new._id  , (select typeMsg from Account_CB where accountKey = new.accountKey)); end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3244
    const-string v0, "create trigger message_delete_cb before delete on Message begin  delete from Message_CB  where messageKey=old._id; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3249
    const-string v0, "create trigger message_insert_cb after insert on Message begin  insert into Message_CB(messageKey,typeMsg)  values (new._id, 0); end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3255
    const-string v0, "create trigger account_delete_cb before delete on Account begin  delete from Account_CB where accountKey=old._id; delete from Mailbox_CB where mailboxKey    in ( select _id from Mailbox          where accountKey=old._id); end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3262
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3266
    const-string v0, "delete"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v4

    .line 3267
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3275
    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 3276
    shr-int/lit8 v6, v4, 0xc

    .line 3277
    const-string v3, "0"

    .line 3278
    const/4 v2, 0x0

    .line 3279
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 3284
    sget-object v0, Lcom/android/email/provider/EmailProvider;->CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

    aget-object v8, v0, v6

    .line 3285
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v9, v0, v6

    .line 3289
    sparse-switch v4, :sswitch_data_0

    .line 3317
    :goto_0
    sparse-switch v4, :sswitch_data_1

    .line 3503
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3523
    :catch_0
    move-exception v0

    move v1, v2

    .line 3524
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3525
    const/4 v0, -0x1

    .line 3532
    if-eqz v1, :cond_0

    .line 3534
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 3541
    :cond_0
    :goto_2
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3542
    return v0

    .line 3312
    :sswitch_0
    const/4 v1, 0x1

    .line 3313
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3314
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_6

    move v2, v1

    goto :goto_0

    .line 3329
    :sswitch_1
    :try_start_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3330
    const/16 v1, 0x2002

    if-ne v4, v1, :cond_1

    .line 3337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert or replace into Message_Deletes select * from Message where _id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from Message_Updates where _id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3340
    const-string v1, "delete"

    const-string v3, " message_delete_deletes start "

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    const-string v1, "delete from Message_Deletes where _id in (select messageKey from Message_CB where typeMsg = 1)"

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3345
    const-string v1, "delete"

    const-string v3, " message_delete_deletes end "

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    :cond_1
    if-eqz v8, :cond_2

    .line 3348
    invoke-virtual {v8, v0}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3351
    :cond_2
    :try_start_5
    invoke-direct {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v9, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    .line 3352
    if-eqz v8, :cond_3

    .line 3353
    sparse-switch v4, :sswitch_data_2

    .line 3375
    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    .line 3376
    :try_start_6
    invoke-virtual {v8, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;)V

    :cond_4
    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 3505
    :goto_4
    if-eqz v2, :cond_6

    .line 3507
    const/4 v3, 0x1

    if-ne v4, v3, :cond_5

    .line 3510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete from Document where accountKey="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3513
    :cond_5
    const/16 v3, 0x2001

    if-ne v4, v3, :cond_a

    .line 3516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from Body where messageKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3521
    :goto_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 3532
    :cond_6
    if-eqz v2, :cond_0

    .line 3534
    :try_start_7
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 3535
    :catch_1
    move-exception v1

    goto/16 :goto_2

    .line 3359
    :sswitch_2
    :try_start_8
    sget-object v3, Lcom/android/email/provider/EmailProvider;->sCacheMailbox:Lcom/android/email/provider/ContentCache;

    const-string v6, "Delete"

    invoke-virtual {v3, v6, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 3360
    sget-object v3, Lcom/android/email/provider/EmailProvider;->sCacheHostAuth:Lcom/android/email/provider/ContentCache;

    const-string v6, "Delete"

    invoke-virtual {v3, v6, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 3365
    :sswitch_3
    sget-object v3, Lcom/android/email/provider/EmailProvider;->sCacheMessage:Lcom/android/email/provider/ContentCache;

    const-string v6, "Delete"

    invoke-virtual {v3, v6, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 3370
    :sswitch_4
    const-string v3, "Delete"

    invoke-virtual {v8, v3, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 3375
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_7

    .line 3376
    :try_start_9
    invoke-virtual {v8, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;)V

    :cond_7
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_2

    .line 3526
    :catch_2
    move-exception v0

    .line 3527
    :goto_6
    :try_start_a
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 3529
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3530
    const/4 v0, -0x1

    .line 3532
    if-eqz v2, :cond_0

    .line 3534
    :try_start_b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_2

    .line 3535
    :catch_3
    move-exception v1

    goto/16 :goto_2

    .line 3384
    :sswitch_5
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert or replace into Message_Deletes select * from Message where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete from Message_Updates where "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3386
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3387
    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3388
    invoke-virtual {v5, v9, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3389
    goto/16 :goto_4

    .line 3396
    :sswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageKey="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v9, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 3399
    goto/16 :goto_4

    .line 3409
    :sswitch_7
    sparse-switch v4, :sswitch_data_3

    .line 3424
    :goto_7
    invoke-virtual {v5, v9, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3425
    goto/16 :goto_4

    .line 3412
    :sswitch_8
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sCacheMailbox:Lcom/android/email/provider/ContentCache;

    const-string v1, "Delete"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 3413
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sCacheHostAuth:Lcom/android/email/provider/ContentCache;

    const-string v1, "Delete"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 3416
    :sswitch_9
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sCacheMessage:Lcom/android/email/provider/ContentCache;

    const-string v1, "Delete"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 3420
    :sswitch_a
    const-string v0, "Delete"

    invoke-virtual {v8, v0, p1, p2}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_7

    .line 3532
    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v2, :cond_8

    .line 3534
    :try_start_d
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 3536
    :cond_8
    :goto_9
    throw v0

    .line 3429
    :sswitch_b
    :try_start_e
    const-string v0, "Policies"

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3430
    goto/16 :goto_4

    .line 3432
    :sswitch_c
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3433
    const-string v1, "Policies"

    invoke-direct {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 3435
    goto/16 :goto_4

    .line 3441
    :sswitch_d
    invoke-virtual {v5, v9, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3442
    goto/16 :goto_4

    .line 3448
    :sswitch_e
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3449
    const/16 v1, 0x7002

    if-ne v4, v1, :cond_9

    .line 3452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert or replace into FollowupFlag_Deletes select * from FollowupFlag where _id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from FollowupFlag_Updates where _id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3456
    :cond_9
    invoke-direct {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v9, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 3457
    goto/16 :goto_4

    .line 3462
    :sswitch_f
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3463
    goto/16 :goto_4

    .line 3465
    :sswitch_10
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3466
    sget-object v1, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-direct {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 3468
    goto/16 :goto_4

    .line 3471
    :sswitch_11
    invoke-virtual {v5, v9, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3472
    goto/16 :goto_4

    .line 3476
    :sswitch_12
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3477
    goto/16 :goto_4

    .line 3482
    :sswitch_13
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3483
    goto/16 :goto_4

    .line 3486
    :sswitch_14
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3487
    goto/16 :goto_4

    .line 3492
    :sswitch_15
    const-string v0, "EmailAddressCache"

    invoke-virtual {v5, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v1, v3

    .line 3493
    goto/16 :goto_4

    .line 3496
    :sswitch_16
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3497
    const-string v1, "EmailAddressCache"

    invoke-direct {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 3499
    goto/16 :goto_4

    .line 3519
    :cond_a
    const-string v1, "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_5

    .line 3535
    :catch_4
    move-exception v1

    goto/16 :goto_2

    :catch_5
    move-exception v1

    goto/16 :goto_9

    .line 3532
    :catchall_2
    move-exception v0

    move v2, v1

    goto/16 :goto_8

    .line 3526
    :catch_6
    move-exception v0

    move v2, v1

    goto/16 :goto_6

    .line 3523
    :catch_7
    move-exception v0

    goto/16 :goto_1

    .line 3289
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x1001 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x2001 -> :sswitch_0
        0x2002 -> :sswitch_0
        0x2003 -> :sswitch_0
    .end sparse-switch

    .line 3317
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_1
        0x1000 -> :sswitch_7
        0x1001 -> :sswitch_1
        0x2000 -> :sswitch_7
        0x2001 -> :sswitch_1
        0x2002 -> :sswitch_1
        0x2003 -> :sswitch_5
        0x3000 -> :sswitch_7
        0x3001 -> :sswitch_1
        0x3002 -> :sswitch_6
        0x4000 -> :sswitch_7
        0x4001 -> :sswitch_1
        0x5000 -> :sswitch_7
        0x5001 -> :sswitch_1
        0x6000 -> :sswitch_7
        0x6001 -> :sswitch_1
        0x7000 -> :sswitch_d
        0x7001 -> :sswitch_e
        0x7002 -> :sswitch_e
        0x8000 -> :sswitch_d
        0x8001 -> :sswitch_e
        0x9000 -> :sswitch_d
        0x9001 -> :sswitch_e
        0xa000 -> :sswitch_b
        0xa001 -> :sswitch_c
        0xe000 -> :sswitch_11
        0xf000 -> :sswitch_12
        0x10000 -> :sswitch_13
        0x11000 -> :sswitch_15
        0x11002 -> :sswitch_16
        0x12001 -> :sswitch_1
        0x13000 -> :sswitch_f
        0x13001 -> :sswitch_10
        0x14000 -> :sswitch_7
        0x14001 -> :sswitch_1
        0x15000 -> :sswitch_14
    .end sparse-switch

    .line 3353
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_2
        0x1001 -> :sswitch_3
        0x2001 -> :sswitch_4
        0x2002 -> :sswitch_4
        0x4001 -> :sswitch_4
    .end sparse-switch

    .line 3409
    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_8
        0x1000 -> :sswitch_9
        0x2000 -> :sswitch_a
        0x4000 -> :sswitch_a
    .end sparse-switch
.end method

.method public declared-synchronized getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1508
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1601
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1512
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    if-nez v2, :cond_1

    .line 1514
    :goto_1
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDB first open?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1516
    if-nez v0, :cond_2

    .line 1518
    :try_start_2
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1529
    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1530
    const-string v0, "EmailProvider"

    const-string v1, "get used db ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :goto_3
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1512
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1519
    :catch_0
    move-exception v0

    .line 1521
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->printStackTrace()V

    .line 1522
    const-string v0, "EmailProvider"

    const-string v1, "After 1 second, try again to get to database instance!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1524
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1525
    :catch_1
    move-exception v0

    .line 1526
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1534
    :cond_2
    :try_start_6
    const-string v0, "EmailProvider"

    const-string v2, "it is first db, go on normal process"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1541
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    if-nez v0, :cond_3

    .line 1542
    new-instance v0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    const-string v2, "EmailProvider.db"

    invoke-direct {v0, p0, p1, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;-><init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    .line 1543
    :cond_3
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    if-nez v0, :cond_4

    .line 1544
    new-instance v0, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    const-string v2, "EmailProviderBody.db"

    invoke-direct {v0, p0, p1, v2}, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;-><init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/email/provider/EmailProvider;->sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1546
    :cond_4
    :try_start_7
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1557
    :goto_4
    :try_start_8
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    .line 1558
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 1560
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sBodyDBHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1561
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    .line 1562
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 1563
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1564
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attach \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\" as BodyDatabase"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1569
    :cond_5
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Message_Updates"

    invoke-static {v0, v2}, Lcom/android/email/provider/EmailProvider;->deleteOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1570
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Message_Deletes"

    invoke-static {v0, v2}, Lcom/android/email/provider/EmailProvider;->deleteOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1572
    invoke-static {p1}, Lcom/digc/seven/SevenSyncProvider;->getAccountCount(Landroid/content/Context;)I

    move-result v0

    .line 1574
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "savenCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    if-nez v0, :cond_7

    .line 1577
    const-string v0, "EmailProvider"

    const-string v2, "saven Account Delete Start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1580
    :try_start_9
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    .line 1581
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT name FROM sqlite_master where type=\'table\' and name=\'Account_CB\'"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1585
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1586
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "delete from Account where _id in (select accountKey from Account_CB where typeMsg = 1)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1588
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1594
    :cond_6
    if-eqz v1, :cond_7

    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1595
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1599
    :cond_7
    :goto_5
    invoke-static {p1}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 1547
    :catch_2
    move-exception v0

    .line 1549
    :try_start_b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->printStackTrace()V

    .line 1550
    const-string v0, "EmailProvider"

    const-string v2, "After 1 second, try again to get to database instance!!!!!!!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1552
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sDBHelper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_4

    .line 1553
    :catch_3
    move-exception v0

    .line 1554
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_4

    .line 1591
    :catch_4
    move-exception v0

    .line 1592
    :try_start_d
    const-string v2, "EmailProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1594
    if-eqz v1, :cond_7

    :try_start_e
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1595
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 1594
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1595
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 3549
    const-string v0, "getType"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    .line 3550
    sparse-switch v0, :sswitch_data_0

    .line 3634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3552
    :sswitch_0
    const-string v0, "vnd.android.cursor.item/email-body"

    .line 3631
    :cond_0
    :goto_0
    return-object v0

    .line 3554
    :sswitch_1
    const-string v0, "vnd.android.cursor.dir/email-body"

    goto :goto_0

    .line 3566
    :sswitch_2
    const-string v0, "vnd.android.cursor.item/email-message"

    .line 3567
    const-string v1, "mailboxId"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3569
    if-eqz v1, :cond_0

    .line 3570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3576
    :sswitch_3
    const-string v0, "vnd.android.cursor.dir/email-message"

    goto :goto_0

    .line 3579
    :sswitch_4
    const-string v0, "vnd.android.cursor.dir/email-mailbox"

    goto :goto_0

    .line 3581
    :sswitch_5
    const-string v0, "vnd.android.cursor.item/email-mailbox"

    goto :goto_0

    .line 3583
    :sswitch_6
    const-string v0, "vnd.android.cursor.dir/email-account"

    goto :goto_0

    .line 3585
    :sswitch_7
    const-string v0, "vnd.android.cursor.item/email-account"

    goto :goto_0

    .line 3588
    :sswitch_8
    const-string v0, "vnd.android.cursor.dir/email-attachment"

    goto :goto_0

    .line 3590
    :sswitch_9
    const-string v0, "vnd.android.cursor.item/email-attachment"

    goto :goto_0

    .line 3592
    :sswitch_a
    const-string v0, "vnd.android.cursor.dir/email-hostauth"

    goto :goto_0

    .line 3594
    :sswitch_b
    const-string v0, "vnd.android.cursor.item/email-hostauth"

    goto :goto_0

    .line 3598
    :sswitch_c
    const-string v0, "vnd.android.cursor.dir/email-policies"

    goto :goto_0

    .line 3600
    :sswitch_d
    const-string v0, "vnd.android.cursor.item/email-policies"

    goto :goto_0

    .line 3606
    :sswitch_e
    const-string v0, "vnd.android.cursor.dir/email-followupflags"

    goto :goto_0

    .line 3609
    :sswitch_f
    const-string v0, "vnd.android.cursor.item/email-followupflags"

    goto :goto_0

    .line 3613
    :sswitch_10
    const-string v0, "vnd.android.cursor.dir/email-document"

    goto :goto_0

    .line 3615
    :sswitch_11
    const-string v0, "vnd.android.cursor.item/email-document"

    goto :goto_0

    .line 3619
    :sswitch_12
    const-string v0, "vnd.android.cursor.dir/email-recipientinformation"

    goto :goto_0

    .line 3621
    :sswitch_13
    const-string v0, "vnd.android.cursor.item/email-recipientinformation"

    goto :goto_0

    .line 3625
    :sswitch_14
    const-string v0, "vnd.android.cursor.item/email-IRMTemplate"

    goto :goto_0

    .line 3627
    :sswitch_15
    const-string v0, "vnd.android.cursor.dir/email-IRMTemplate"

    goto :goto_0

    .line 3631
    :sswitch_16
    const-string v0, "vnd.android.cursor.dir/email-emailaddresscache"

    goto :goto_0

    .line 3550
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_7
        0x5 -> :sswitch_4
        0x1000 -> :sswitch_4
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_3
        0x2000 -> :sswitch_3
        0x2001 -> :sswitch_2
        0x3000 -> :sswitch_8
        0x3001 -> :sswitch_9
        0x3002 -> :sswitch_8
        0x4000 -> :sswitch_a
        0x4001 -> :sswitch_b
        0x5000 -> :sswitch_3
        0x5001 -> :sswitch_2
        0x7000 -> :sswitch_e
        0x7001 -> :sswitch_f
        0x8000 -> :sswitch_e
        0x8001 -> :sswitch_f
        0xa000 -> :sswitch_c
        0xa001 -> :sswitch_d
        0xf000 -> :sswitch_12
        0xf001 -> :sswitch_13
        0x11000 -> :sswitch_16
        0x13000 -> :sswitch_10
        0x13001 -> :sswitch_11
        0x14000 -> :sswitch_1
        0x14001 -> :sswitch_0
        0x15000 -> :sswitch_15
        0x15001 -> :sswitch_14
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 3640
    const-string v0, "insert"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v2

    .line 3641
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3642
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3645
    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 3646
    shr-int/lit8 v5, v2, 0xc

    .line 3655
    const/16 v0, 0x1001

    if-eq v2, v0, :cond_0

    const/16 v0, 0x1000

    if-ne v2, v0, :cond_1

    .line 3656
    :cond_0
    const-string v0, "unreadCount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3657
    const-string v0, "messageCount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3661
    :cond_1
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    .line 3663
    sparse-switch v2, :sswitch_data_0

    .line 3800
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3802
    :catch_0
    move-exception v0

    .line 3803
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 3804
    throw v0

    .line 3665
    :sswitch_0
    :try_start_1
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3680
    :sswitch_1
    const-string v5, "foo"

    invoke-virtual {v4, v0, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3681
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3689
    const/16 v6, 0x5000

    if-eq v2, v6, :cond_2

    const/16 v6, 0x6000

    if-ne v2, v6, :cond_3

    .line 3690
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3692
    :cond_3
    const/16 v6, 0x3000

    if-ne v2, v6, :cond_5

    .line 3694
    const-string v2, "flags"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3695
    const-string v1, "flags"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3698
    :cond_4
    invoke-static {v4, v5, v1}, Lcom/android/email/service/AttachmentDownloadService;->attachmentChanged(JI)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3809
    :cond_5
    :goto_0
    invoke-virtual {v3, p1, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3810
    :goto_1
    return-object v0

    .line 3706
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3707
    const-string v2, "mailboxKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3708
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 3711
    :sswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3712
    const-string v2, "messageKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3713
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 3716
    :sswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3717
    const-string v2, "accountKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3718
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 3720
    :sswitch_5
    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3721
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 3726
    :sswitch_6
    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3727
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 3734
    :sswitch_7
    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3735
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 3738
    :sswitch_8
    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3739
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 3745
    :sswitch_9
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3746
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 3751
    :sswitch_a
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3752
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Document;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 3759
    :sswitch_b
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3760
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 3763
    :sswitch_c
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3764
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 3771
    :sswitch_d
    const-string v0, "accountAddress"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3774
    const-wide/16 v0, -0x1

    .line 3776
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select count(*) from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " where "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "accountAddress"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3780
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-nez v7, :cond_7

    .line 3781
    sget-object v0, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, "foo"

    invoke-virtual {v4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3792
    :cond_6
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3795
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$EmailAddressCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 3783
    :cond_7
    if-eqz v2, :cond_6

    .line 3784
    const-string v7, "accountAddress"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3786
    sget-object v7, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v5, v7, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "accountAddress is \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, p2, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 3663
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_4
        0x1000 -> :sswitch_1
        0x1001 -> :sswitch_2
        0x2000 -> :sswitch_0
        0x2001 -> :sswitch_3
        0x3000 -> :sswitch_1
        0x3002 -> :sswitch_5
        0x4000 -> :sswitch_1
        0x5000 -> :sswitch_1
        0x6000 -> :sswitch_1
        0x7000 -> :sswitch_7
        0x7001 -> :sswitch_8
        0xa000 -> :sswitch_6
        0xc000 -> :sswitch_1
        0xd000 -> :sswitch_1
        0xe000 -> :sswitch_1
        0xf000 -> :sswitch_9
        0x10000 -> :sswitch_1
        0x11000 -> :sswitch_d
        0x12000 -> :sswitch_1
        0x13000 -> :sswitch_a
        0x14000 -> :sswitch_1
        0x15000 -> :sswitch_b
        0x15001 -> :sswitch_c
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 3815
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 3816
    const/4 v0, 0x0

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3854
    new-instance v1, Ljava/io/File;

    const-string v0, "file:///data/data/com.android.email/files/keystore"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 3855
    const/4 v0, 0x0

    .line 3857
    const/high16 v2, 0x1000

    :try_start_0
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3863
    :goto_0
    return-object v0

    .line 3858
    :catch_0
    move-exception v1

    .line 3859
    const-string v2, "EmailProvider"

    const-string v3, "key store was not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3869
    const-wide/16 v3, 0x0

    .line 3870
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_f

    .line 3871
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    move-wide v13, v3

    .line 3873
    :goto_0
    const/4 v15, 0x0

    .line 3876
    :try_start_0
    const-string v3, "query"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 3899
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3901
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 3902
    shr-int/lit8 v12, v6, 0xc

    .line 3903
    const-string v4, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3908
    const/4 v5, 0x0

    .line 3909
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v12

    .line 3911
    if-nez p3, :cond_e

    .line 3912
    sget-object v5, Lcom/android/email/provider/EmailProvider;->CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

    aget-object v5, v5, v12

    move-object/from16 v17, v5

    .line 3914
    :goto_1
    if-nez v17, :cond_0

    .line 3915
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/email/provider/ContentCache;->notCacheable(Landroid/net/Uri;Ljava/lang/String;)V

    .line 3919
    :cond_0
    sparse-switch v6, :sswitch_data_0

    .line 4137
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 4139
    :catch_0
    move-exception v3

    move-object v4, v15

    .line 4140
    :goto_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 4141
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4151
    :catchall_0
    move-exception v3

    move-object v15, v4

    :goto_3
    if-eqz v17, :cond_1

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 4152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v4, v5}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    :cond_1
    throw v3

    .line 3877
    :catch_1
    move-exception v3

    .line 3878
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3882
    if-eqz v4, :cond_2

    const-string v5, "/-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3883
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3884
    const-string v5, "query"

    invoke-static {v4, v5}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v4

    .line 3885
    sparse-switch v4, :sswitch_data_1

    .line 3897
    :cond_2
    throw v3

    .line 3894
    :sswitch_0
    new-instance v3, Landroid/database/MatrixCursor;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 4159
    :cond_3
    :goto_4
    return-object v3

    .line 3946
    :sswitch_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    :try_start_3
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v15

    .line 4151
    :cond_4
    :goto_5
    if-eqz v17, :cond_8

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 4152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v3, v4}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    move-object v3, v15

    .line 4156
    :goto_6
    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->isTemporary()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4157
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v3, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_4

    .line 3951
    :sswitch_2
    :try_start_4
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/combined/common/QueryUtil;->getMessageQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3953
    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_5

    .line 3957
    :sswitch_3
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/combined/common/QueryUtil;->getAccountQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3958
    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_5

    .line 3962
    :sswitch_4
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/combined/common/QueryUtil;->getProtocolQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3964
    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_5

    .line 3967
    :sswitch_5
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/combined/common/QueryUtil;->getMailboxQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v4

    .line 3969
    :try_start_5
    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v15

    goto :goto_5

    .line 3970
    :catch_2
    move-exception v3

    .line 3971
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 4142
    :catch_3
    move-exception v3

    .line 4143
    :goto_7
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 4144
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4146
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 4147
    :catch_4
    move-exception v3

    .line 4148
    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4151
    if-eqz v17, :cond_8

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 4152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v3, v4}, Lcom/android/email/provider/ContentCache;->recordQueryTime(Landroid/database/Cursor;J)V

    move-object v3, v15

    goto :goto_6

    .line 3995
    :sswitch_6
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 3996
    if-eqz v17, :cond_5

    .line 3997
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1}, Lcom/android/email/provider/ContentCache;->getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-result-object v15

    .line 3999
    :cond_5
    if-nez v15, :cond_4

    .line 4000
    const/4 v5, 0x0

    .line 4001
    if-eqz v17, :cond_d

    .line 4002
    :try_start_b
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/email/provider/ContentCache;->getCacheToken(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    .line 4004
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move-result-object v3

    .line 4006
    if-eqz v17, :cond_6

    .line 4007
    :try_start_c
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v0, v3, v12, v1, v2}, Lcom/android/email/provider/ContentCache;->putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    move-result-object v3

    :cond_6
    move-object v15, v3

    .line 4009
    goto/16 :goto_5

    .line 4013
    :sswitch_7
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 4014
    const-string v4, "Attachment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "messageKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_5

    .line 4022
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 4023
    const-string v4, "QuickResponse"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accountKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_5

    .line 4031
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4033
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1}, Lcom/android/email/combined/common/QueryUtil;->getAccountQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4035
    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_5

    .line 4039
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4040
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1}, Lcom/android/email/combined/common/QueryUtil;->getMailboxQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4042
    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_5

    .line 4046
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4047
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1}, Lcom/android/email/combined/common/QueryUtil;->getMessageQueryString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4049
    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_5

    .line 4053
    :sswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 4054
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "email_address LIKE \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_5

    .line 4062
    :sswitch_d
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    move-result-object v15

    goto/16 :goto_5

    .line 4071
    :sswitch_e
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    :try_start_e
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    move-result-object v15

    goto/16 :goto_5

    .line 4073
    :catch_5
    move-exception v3

    .line 4074
    :try_start_f
    const-string v4, "Email"

    const-string v5, "========== IllegalStateException occur POLICIES ~ MEETING_INVITATION=========="

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 4076
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "========== IllegalStateException occur TABLE_NAMES[table] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v12

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 4079
    if-eqz v15, :cond_c

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_c

    .line 4080
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 4081
    const/4 v4, 0x0

    .line 4082
    :try_start_10
    const-string v5, "Email"

    const-string v6, "========== IllegalStateException occur cursor closed =========="

    invoke-static {v5, v6}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 4085
    :goto_9
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    move-object v15, v4

    .line 4087
    goto/16 :goto_5

    .line 4090
    :sswitch_f
    const/4 v4, 0x0

    .line 4092
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_b

    .line 4093
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 4094
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4095
    const/4 v4, 0x0

    move-object v5, v4

    .line 4098
    :goto_a
    if-nez v5, :cond_7

    .line 4100
    const-string v4, "accountAddress is null "
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    move-object v5, v4

    move-object/from16 v7, p4

    .line 4115
    :goto_b
    :try_start_12
    const-string v4, "EmailAddressCache"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    move-result-object v15

    goto/16 :goto_5

    .line 4107
    :cond_7
    :try_start_13
    const-string v4, "accountAddress LIKE  ?  OR accountName LIKE  ?"

    .line 4109
    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x25

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v6, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v8, 0x25

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v6

    move-object v5, v4

    goto :goto_b

    .line 4118
    :catch_6
    move-exception v3

    .line 4119
    const-string v4, "Email"

    const-string v5, "========== IllegalStateException occur EMAIL_ADDRESS_CACHE_FILTER=========="

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 4121
    const-string v4, "Email"

    const-string v5, "========== IllegalStateException occur EmailAddressCache = EmailAddressCache"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 4124
    if-eqz v15, :cond_9

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 4125
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 4126
    const/4 v4, 0x0

    .line 4127
    :try_start_14
    const-string v5, "Email"

    const-string v6, "========== IllegalStateException occur cursor closed =========="

    invoke-static {v5, v6}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 4130
    :goto_c
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    move-object v15, v4

    .line 4133
    goto/16 :goto_5

    .line 4151
    :catchall_1
    move-exception v3

    goto/16 :goto_3

    :catchall_2
    move-exception v4

    move-object v15, v3

    move-object v3, v4

    goto/16 :goto_3

    :catchall_3
    move-exception v3

    move-object v15, v4

    goto/16 :goto_3

    .line 4142
    :catch_7
    move-exception v4

    move-object v15, v3

    move-object v3, v4

    goto/16 :goto_7

    :catch_8
    move-exception v3

    move-object v15, v4

    goto/16 :goto_7

    .line 4139
    :catch_9
    move-exception v3

    move-object v4, v15

    goto/16 :goto_2

    :catch_a
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    goto/16 :goto_2

    :catch_b
    move-exception v3

    goto/16 :goto_2

    :cond_8
    move-object v3, v15

    goto/16 :goto_6

    :cond_9
    move-object v4, v15

    goto :goto_c

    :cond_a
    move-object v5, v4

    goto/16 :goto_a

    :cond_b
    move-object v5, v4

    goto/16 :goto_a

    :cond_c
    move-object v4, v15

    goto/16 :goto_9

    :cond_d
    move-object/from16 v16, v5

    goto/16 :goto_8

    :cond_e
    move-object/from16 v17, v5

    goto/16 :goto_1

    :cond_f
    move-wide v13, v3

    goto/16 :goto_0

    .line 3919
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_9
        0x1000 -> :sswitch_5
        0x1001 -> :sswitch_a
        0x2000 -> :sswitch_2
        0x2001 -> :sswitch_b
        0x3000 -> :sswitch_1
        0x3001 -> :sswitch_6
        0x3002 -> :sswitch_7
        0x4000 -> :sswitch_1
        0x4001 -> :sswitch_6
        0x5000 -> :sswitch_1
        0x5001 -> :sswitch_6
        0x6000 -> :sswitch_1
        0x6001 -> :sswitch_6
        0x7000 -> :sswitch_1
        0x7001 -> :sswitch_6
        0x8000 -> :sswitch_1
        0x8001 -> :sswitch_6
        0x9000 -> :sswitch_1
        0x9001 -> :sswitch_6
        0xa000 -> :sswitch_1
        0xa001 -> :sswitch_6
        0xb000 -> :sswitch_1
        0xc000 -> :sswitch_1
        0xd000 -> :sswitch_1
        0xd001 -> :sswitch_9
        0xd002 -> :sswitch_4
        0xe000 -> :sswitch_1
        0xf000 -> :sswitch_1
        0xf001 -> :sswitch_6
        0xf002 -> :sswitch_c
        0x10000 -> :sswitch_1
        0x11000 -> :sswitch_e
        0x11001 -> :sswitch_f
        0x12000 -> :sswitch_1
        0x12001 -> :sswitch_6
        0x12002 -> :sswitch_8
        0x13000 -> :sswitch_1
        0x13001 -> :sswitch_6
        0x14000 -> :sswitch_1
        0x14001 -> :sswitch_6
        0x15000 -> :sswitch_d
    .end sparse-switch

    .line 3885
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_0
        0x1001 -> :sswitch_0
        0x2001 -> :sswitch_0
        0x3001 -> :sswitch_0
        0x4001 -> :sswitch_0
        0x5001 -> :sswitch_0
        0x6001 -> :sswitch_0
        0x14001 -> :sswitch_0
    .end sparse-switch
.end method

.method public resetSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 3218
    const-string v0, "mailbox_delete_cb"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3219
    const-string v0, "mailbox_insert_cb"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3220
    const-string v0, "message_updates_delete"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3221
    const-string v0, "message_deletes_delete"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3222
    const-string v0, "message_delete_cb"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3223
    const-string v0, "message_insert_cb"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3224
    const-string v0, "account_delete_cb"

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3226
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3227
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1612
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1614
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 1617
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1618
    iput-object v1, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1620
    :cond_1
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4198
    sget-object v3, Lcom/android/emailcommon/EmailProviderRefs;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 4199
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 4200
    const/4 v3, 0x0

    .line 4460
    :goto_0
    return v3

    .line 4204
    :cond_0
    sget-object v12, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    .line 4208
    :try_start_0
    const-string v3, "update"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 4214
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4215
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 4217
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 4218
    shr-int/lit8 v5, v13, 0xc

    .line 4226
    const/16 v4, 0x1001

    if-eq v13, v4, :cond_1

    const/16 v4, 0x1000

    if-ne v13, v4, :cond_2

    .line 4227
    :cond_1
    const-string v4, "unreadCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4228
    const-string v4, "messageCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4232
    :cond_2
    sget-object v4, Lcom/android/emailcommon/EmailProviderRefs;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4237
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 4238
    const/4 v3, 0x0

    goto :goto_0

    .line 4209
    :catch_0
    move-exception v3

    .line 4210
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 4211
    const/4 v3, 0x0

    goto :goto_0

    .line 4241
    :cond_3
    sget-object v4, Lcom/android/email/provider/EmailProvider;->CONTENT_CACHES:[Lcom/android/email/provider/ContentCache;

    aget-object v15, v4, v5

    .line 4242
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v5

    .line 4246
    sparse-switch v13, :sswitch_data_0

    .line 4445
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4447
    :catch_1
    move-exception v3

    move-object v4, v3

    .line 4448
    const/4 v3, -0x1

    .line 4449
    const-string v5, "EmailContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQLiteDiskIOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    .line 4458
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v14, v12, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 4249
    :sswitch_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 4250
    const-string v5, "field"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4251
    const-string v5, "add"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    .line 4252
    if-eqz v16, :cond_4

    if-nez v17, :cond_5

    .line 4253
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No field/add specified "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4451
    :catch_2
    move-exception v3

    move-object v4, v3

    .line 4452
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 4453
    const/4 v3, -0x1

    .line 4454
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1

    .line 4255
    :cond_5
    :try_start_3
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 4256
    if-eqz v15, :cond_6

    .line 4257
    invoke-virtual {v15, v11}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 4260
    :cond_6
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4262
    const/4 v5, 0x2

    :try_start_5
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v16, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v11, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    .line 4266
    const/4 v5, 0x0

    .line 4267
    :try_start_6
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 4268
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    .line 4269
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4270
    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 4271
    const/4 v5, 0x1

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    add-long v9, v9, v19

    .line 4272
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4273
    const-string v5, "_id=?"

    invoke-virtual {v3, v4, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    .line 4275
    :cond_7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4277
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4280
    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 4283
    if-eqz v15, :cond_8

    .line 4284
    :try_start_9
    move-object/from16 v0, v18

    invoke-virtual {v15, v11, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_8
    move v3, v5

    move-object v4, v12

    :goto_3
    move-object v12, v4

    .line 4456
    goto/16 :goto_1

    .line 4277
    :catchall_0
    move-exception v4

    :try_start_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 4280
    :catchall_1
    move-exception v4

    :try_start_b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 4283
    :catchall_2
    move-exception v3

    if-eqz v15, :cond_9

    .line 4284
    :try_start_c
    move-object/from16 v0, v18

    invoke-virtual {v15, v11, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_9
    throw v3

    .line 4289
    :sswitch_1
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4306
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4307
    if-eqz v15, :cond_a

    .line 4308
    invoke-virtual {v15, v5}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_2

    .line 4311
    :cond_a
    const/16 v6, 0x2002

    if-ne v13, v6, :cond_d

    .line 4319
    :try_start_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert or ignore into Message_Updates select * from Message where _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4320
    const-string v6, "delete"

    const-string v7, " message_update_deletes start "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4322
    const-string v6, "delete from Message_Updates where _id in (select messageKey from Message_CB where typeMsg = 1)"

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4325
    const-string v6, "delete"

    const-string v7, " message_update_deletes end "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4329
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_3

    move-result v3

    .line 4338
    if-eqz v15, :cond_c

    .line 4339
    :try_start_e
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4342
    :cond_c
    :goto_5
    const/16 v4, 0x3001

    if-ne v13, v4, :cond_14

    .line 4343
    const-string v4, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 4344
    const-string v4, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4345
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6, v4}, Lcom/android/email/service/AttachmentDownloadService;->attachmentChanged(JI)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_2

    move-object v4, v12

    .line 4347
    goto/16 :goto_3

    .line 4326
    :cond_d
    const/16 v6, 0x2001

    if-ne v13, v6, :cond_b

    .line 4327
    :try_start_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete from Message_Updates where _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_3

    goto :goto_4

    .line 4331
    :catch_3
    move-exception v3

    .line 4333
    const/16 p2, 0x0

    .line 4334
    const/4 v4, -0x1

    .line 4335
    :try_start_10
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 4338
    if-eqz v15, :cond_15

    .line 4339
    :try_start_11
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    move v3, v4

    goto :goto_5

    .line 4338
    :catchall_3
    move-exception v3

    if-eqz v15, :cond_e

    .line 4339
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_e
    throw v3

    .line 4352
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4353
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mailboxKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move-object v4, v12

    .line 4355
    goto/16 :goto_3

    .line 4373
    :sswitch_4
    sparse-switch v13, :sswitch_data_1

    .line 4384
    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move-object v4, v12

    .line 4385
    goto/16 :goto_3

    .line 4381
    :sswitch_5
    const-string v5, "Update"

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v15, v5, v0, v1}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_6

    .line 4387
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4388
    if-eqz v15, :cond_f

    .line 4389
    invoke-virtual {v15, v5}, Lcom/android/email/provider/ContentCache;->lock(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_2

    .line 4392
    :cond_f
    :try_start_12
    sget-object v6, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-result v3

    .line 4395
    if-eqz v15, :cond_10

    .line 4396
    :try_start_13
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4399
    :cond_10
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_3

    .line 4395
    :catchall_4
    move-exception v3

    if-eqz v15, :cond_11

    .line 4396
    move-object/from16 v0, p2

    invoke-virtual {v15, v5, v0}, Lcom/android/email/provider/ContentCache;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_11
    throw v3

    .line 4403
    :sswitch_7
    sget-object v5, Lcom/android/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 4406
    const-string v4, "Reset all new counts"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15, v4, v5, v6}, Lcom/android/email/provider/ContentCache;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 4407
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_3

    .line 4413
    :sswitch_8
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move-object v4, v12

    .line 4414
    goto/16 :goto_3

    .line 4419
    :sswitch_9
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move-object v4, v12

    .line 4420
    goto/16 :goto_3

    .line 4424
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4425
    const/16 v6, 0x7002

    if-ne v13, v6, :cond_13

    .line 4428
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert or ignore into FollowupFlag_Updates select * from FollowupFlag where _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4433
    :cond_12
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move-object v4, v12

    .line 4435
    goto/16 :goto_3

    .line 4429
    :cond_13
    const/16 v6, 0x7001

    if-ne v13, v6, :cond_12

    .line 4430
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete from FollowupFlag_Updates where _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_7

    .line 4440
    :sswitch_b
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_2

    move-result v3

    move-object v4, v12

    .line 4441
    goto/16 :goto_3

    :cond_14
    move-object v4, v12

    goto/16 :goto_3

    :cond_15
    move v3, v4

    goto/16 :goto_5

    .line 4246
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x1000 -> :sswitch_4
        0x1001 -> :sswitch_2
        0x1002 -> :sswitch_0
        0x2000 -> :sswitch_4
        0x2001 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x3000 -> :sswitch_4
        0x3001 -> :sswitch_2
        0x4000 -> :sswitch_4
        0x4001 -> :sswitch_2
        0x5000 -> :sswitch_4
        0x5001 -> :sswitch_2
        0x7000 -> :sswitch_9
        0x7001 -> :sswitch_a
        0x7002 -> :sswitch_a
        0x8000 -> :sswitch_9
        0x8001 -> :sswitch_a
        0xa000 -> :sswitch_4
        0xa001 -> :sswitch_2
        0xb000 -> :sswitch_4
        0xb001 -> :sswitch_3
        0xc000 -> :sswitch_4
        0xd000 -> :sswitch_4
        0xf000 -> :sswitch_8
        0x11000 -> :sswitch_b
        0x12001 -> :sswitch_2
        0x13000 -> :sswitch_4
        0x13001 -> :sswitch_2
        0x14000 -> :sswitch_4
        0x14001 -> :sswitch_2
    .end sparse-switch

    .line 4373
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x1000 -> :sswitch_5
        0x2000 -> :sswitch_5
        0x4000 -> :sswitch_5
    .end sparse-switch
.end method
