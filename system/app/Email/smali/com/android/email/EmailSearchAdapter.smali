.class public Lcom/android/email/EmailSearchAdapter;
.super Lcom/android/email/EmailAddressAdapter;
.source "EmailSearchAdapter.java"


# static fields
.field public static final EMAIL_SEARCH_URI:Landroid/net/Uri;


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mActivity:Landroid/app/Activity;

.field private mConversationId:Ljava/lang/String;

.field private mFoldIdStr:Ljava/lang/String;

.field private mFreeText:Ljava/lang/String;

.field private mGreaterThanDateStr:Ljava/lang/String;

.field private mIdStr:Ljava/lang/String;

.field private mIsDocSearch:Z

.field private mLessThanDateStr:Ljava/lang/String;

.field private mOptionsDeepTraversalStr:Ljava/lang/String;

.field private mOptionsDocumentStr:Ljava/lang/String;

.field private mOptionsMultipartStr:Ljava/lang/String;

.field private mSearchType:I

.field private mSrchText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "content://com.android.exchange.directory.provider/emailsearch/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/EmailSearchAdapter;->EMAIL_SEARCH_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    .line 91
    iput-object p1, p0, Lcom/android/email/EmailSearchAdapter;->mActivity:Landroid/app/Activity;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/EmailSearchAdapter;->mIsDocSearch:Z

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/EmailSearchAdapter;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/email/EmailSearchAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/EmailSearchAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/email/EmailSearchAdapter;->mIdStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/EmailSearchAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/email/EmailSearchAdapter;->mFoldIdStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/EmailSearchAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/email/EmailSearchAdapter;->mFreeText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/EmailSearchAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/email/EmailSearchAdapter;->mGreaterThanDateStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/EmailSearchAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/email/EmailSearchAdapter;->mLessThanDateStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/EmailSearchAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/email/EmailSearchAdapter;->mOptionsDeepTraversalStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/EmailSearchAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/email/EmailSearchAdapter;->mConversationId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getSearchText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/email/EmailSearchAdapter;->mSrchText:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchType()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/email/EmailSearchAdapter;->mSearchType:I

    return v0
.end method

.method public search()I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/EmailSearchAdapter;->search(Z)I

    move-result v0

    return v0
.end method

.method public search(Z)I
    .locals 8
    .parameter "isDocSearch"

    .prologue
    const/4 v7, 0x0

    .line 188
    const-wide/16 v1, -0x1

    .line 190
    .local v1, foldId:J
    iput-boolean p1, p0, Lcom/android/email/EmailSearchAdapter;->mIsDocSearch:Z

    .line 194
    :try_start_0
    iget-object v3, p0, Lcom/android/email/EmailSearchAdapter;->mFoldIdStr:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 202
    iget-boolean v3, p0, Lcom/android/email/EmailSearchAdapter;->mIsDocSearch:Z

    if-nez v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mailboxKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 206
    iget-object v3, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mailboxKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 211
    :cond_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/email/EmailSearchAdapter$1;

    invoke-direct {v4, p0}, Lcom/android/email/EmailSearchAdapter$1;-><init>(Lcom/android/email/EmailSearchAdapter;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 263
    const/4 v3, 0x0

    return v3

    .line 196
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal value in URI"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/email/EmailSearchAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 101
    return-void
.end method

.method public setFoldIdStr(Ljava/lang/String;)V
    .locals 0
    .parameter "numberStr"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/email/EmailSearchAdapter;->mFoldIdStr:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setFreeText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/email/EmailSearchAdapter;->mFreeText:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setGreaterThanDateStr(Ljava/lang/String;)V
    .locals 0
    .parameter "dateStr"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/email/EmailSearchAdapter;->mGreaterThanDateStr:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setIdStr(Ljava/lang/String;)V
    .locals 0
    .parameter "numberStr"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/email/EmailSearchAdapter;->mIdStr:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setLessThanDateStr(Ljava/lang/String;)V
    .locals 0
    .parameter "dateStr"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/email/EmailSearchAdapter;->mLessThanDateStr:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setoptionsDeepTraversalStr(Ljava/lang/String;)V
    .locals 0
    .parameter "boolStr"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/email/EmailSearchAdapter;->mOptionsDeepTraversalStr:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setoptionsDocumentStr(Ljava/lang/String;)V
    .locals 0
    .parameter "boolStr"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/email/EmailSearchAdapter;->mOptionsDocumentStr:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setoptionsMultipartStr(Ljava/lang/String;)V
    .locals 0
    .parameter "boolStr"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/EmailSearchAdapter;->mOptionsMultipartStr:Ljava/lang/String;

    .line 179
    return-void
.end method
