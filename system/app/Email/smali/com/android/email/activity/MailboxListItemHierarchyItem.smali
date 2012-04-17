.class Lcom/android/email/activity/MailboxListItemHierarchyItem;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"


# instance fields
.field public mAccountKey:J

.field public mDisplayName:Ljava/lang/String;

.field public mHasChild:I

.field public mHierarchyLevel:I

.field public mMailboxId:J

.field public mMailboxType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJIIJ)V
    .locals 3
    .parameter "displayName"
    .parameter "mailboxType"
    .parameter "mailboxId"
    .parameter "hasChild"
    .parameter "hierarchylevel"
    .parameter "accountKey"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 3131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3124
    iput v0, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxType:I

    .line 3125
    iput-wide v1, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxId:J

    .line 3126
    iput v0, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHasChild:I

    .line 3127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    .line 3128
    iput-wide v1, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mAccountKey:J

    .line 3132
    iput-object p1, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mDisplayName:Ljava/lang/String;

    .line 3133
    iput p2, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxType:I

    .line 3134
    iput-wide p3, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxId:J

    .line 3135
    iput p5, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHasChild:I

    .line 3136
    iput p6, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    .line 3137
    iput-wide p7, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mAccountKey:J

    .line 3139
    return-void
.end method
