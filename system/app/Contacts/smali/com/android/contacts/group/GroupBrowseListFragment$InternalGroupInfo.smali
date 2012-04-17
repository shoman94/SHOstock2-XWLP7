.class public Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalGroupInfo"
.end annotation


# instance fields
.field private accountName:Ljava/lang/String;

.field private accountType:Ljava/lang/String;

.field private id:J

.field public systemId:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "title"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "systemId"

    .prologue
    .line 1182
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1184
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->setId(J)V

    .line 1186
    invoke-virtual {p0, p3}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->setTitle(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p0, p6}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->setSystemId(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p0, p4}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->setAccountName(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p0, p5}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->setAccountType(Ljava/lang/String;)V

    .line 1194
    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1197
    iget-wide v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->id:J

    return-wide v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .parameter "accountName"

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->accountName:Ljava/lang/String;

    .line 1222
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0
    .parameter "accountType"

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->accountType:Ljava/lang/String;

    .line 1230
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1201
    iput-wide p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->id:J

    .line 1202
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .parameter "systemId"

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->systemId:Ljava/lang/String;

    .line 1218
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->title:Ljava/lang/String;

    .line 1210
    return-void
.end method
