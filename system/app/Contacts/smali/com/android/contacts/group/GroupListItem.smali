.class public final Lcom/android/contacts/group/GroupListItem;
.super Ljava/lang/Object;
.source "GroupListItem.java"


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mAccountType:Ljava/lang/String;

.field private final mDataSet:Ljava/lang/String;

.field private final mGroupId:J

.field private final mIsFirstGroupInAccount:Z

.field private final mMemberCount:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZI)V
    .locals 0
    .parameter "accountName"
    .parameter "accountType"
    .parameter "dataSet"
    .parameter "groupId"
    .parameter "title"
    .parameter "isFirstGroupInAccount"
    .parameter "memberCount"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/contacts/group/GroupListItem;->mAccountName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/android/contacts/group/GroupListItem;->mAccountType:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/android/contacts/group/GroupListItem;->mDataSet:Ljava/lang/String;

    .line 36
    iput-wide p4, p0, Lcom/android/contacts/group/GroupListItem;->mGroupId:J

    .line 37
    iput-object p6, p0, Lcom/android/contacts/group/GroupListItem;->mTitle:Ljava/lang/String;

    .line 38
    iput-boolean p7, p0, Lcom/android/contacts/group/GroupListItem;->mIsFirstGroupInAccount:Z

    .line 39
    iput p8, p0, Lcom/android/contacts/group/GroupListItem;->mMemberCount:I

    .line 40
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/group/GroupListItem;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/contacts/group/GroupListItem;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/contacts/group/GroupListItem;->mGroupId:J

    return-wide v0
.end method

.method public getMemberCount()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/contacts/group/GroupListItem;->mMemberCount:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/contacts/group/GroupListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isFirstGroupInAccount()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupListItem;->mIsFirstGroupInAccount:Z

    return v0
.end method
