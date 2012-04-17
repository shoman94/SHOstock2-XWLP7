.class Lcom/android/email/activity/MailboxList$MailboxListItem;
.super Ljava/lang/Object;
.source "MailboxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailboxListItem"
.end annotation


# instance fields
.field private displayName:Ljava/lang/String;

.field private id:J

.field private isOpened:Z

.field private level:I

.field private mailboxType:I

.field private parentServerId:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MailboxList;

.field private unreadCount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 1
    .parameter
    .parameter "displayName"
    .parameter "unreadCount"
    .parameter "mailboxType"
    .parameter "id"
    .parameter "parentId"
    .parameter "level"
    .parameter "columnId"

    .prologue
    .line 1836
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1822
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->serverId:Ljava/lang/String;

    .line 1824
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->parentServerId:Ljava/lang/String;

    .line 1837
    iput-object p2, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->displayName:Ljava/lang/String;

    .line 1838
    iput-object p3, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->unreadCount:Ljava/lang/String;

    .line 1839
    iput p4, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->mailboxType:I

    .line 1840
    iput-object p6, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->parentServerId:Ljava/lang/String;

    .line 1841
    iput-object p5, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->serverId:Ljava/lang/String;

    .line 1842
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->isOpened:Z

    .line 1843
    iput p7, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->level:I

    .line 1844
    iput-wide p8, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->id:J

    .line 1845
    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MailboxList$MailboxListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->serverId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 1880
    iget-wide v0, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->id:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 1876
    iget v0, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->level:I

    return v0
.end method

.method public getMailboxDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMailboxType()I
    .locals 1

    .prologue
    .line 1856
    iget v0, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->mailboxType:I

    return v0
.end method

.method public getMailboxUnreadCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->unreadCount:Ljava/lang/String;

    return-object v0
.end method

.method public getParentServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->parentServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 1868
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->isOpened:Z

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 1884
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->displayName:Ljava/lang/String;

    .line 1885
    return-void
.end method

.method public setIsOpened(Z)V
    .locals 0
    .parameter "isOpened"

    .prologue
    .line 1872
    iput-boolean p1, p0, Lcom/android/email/activity/MailboxList$MailboxListItem;->isOpened:Z

    .line 1873
    return-void
.end method
