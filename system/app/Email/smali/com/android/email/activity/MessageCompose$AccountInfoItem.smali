.class Lcom/android/email/activity/MessageCompose$AccountInfoItem;
.super Ljava/lang/Object;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountInfoItem"
.end annotation


# instance fields
.field private mAccountColorResID:I

.field private mAccountId:J

.field private mAddress:Ljava/lang/String;

.field private mAuthKeyRecv:Ljava/lang/Long;

.field private mFromText:Ljava/lang/String;

.field private mSenderName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field private typeMsg:I


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)V
    .locals 1
    .parameter
    .parameter "accountId"
    .parameter "senderName"
    .parameter "address"
    .parameter "authKeyRecv"
    .parameter "typeMsg"

    .prologue
    .line 9378
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9367
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mAccountColorResID:I

    .line 9370
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->typeMsg:I

    .line 9379
    iput-wide p2, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mAccountId:J

    .line 9380
    iput-object p4, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mSenderName:Ljava/lang/String;

    .line 9381
    iput-object p5, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mAddress:Ljava/lang/String;

    .line 9382
    iput-object p6, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mAuthKeyRecv:Ljava/lang/Long;

    .line 9383
    iput p7, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->typeMsg:I

    .line 9384
    return-void
.end method


# virtual methods
.method public getAccountColorResID()I
    .locals 3

    .prologue
    .line 9387
    iget v0, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mAccountColorResID:I

    if-gez v0, :cond_0

    .line 9388
    sget-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->COLOR_CHIP_RES_IDS:[I

    iget-wide v1, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mAccountId:J

    long-to-int v1, v1

    sget-object v2, Lcom/android/email/activity/AccountSelectorAdapter;->COLOR_CHIP_RES_IDS:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mAccountColorResID:I

    .line 9391
    :cond_0
    iget v0, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mAccountColorResID:I

    return v0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 9395
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mAccountId:J

    return-wide v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9403
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFromText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9455
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mFromText:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 9457
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mSenderName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mSenderName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9458
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mFromText:Ljava/lang/String;

    .line 9463
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mFromText:Ljava/lang/String;

    return-object v0

    .line 9460
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mFromText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9399
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mSenderName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeMsg()I
    .locals 1

    .prologue
    .line 9408
    iget v0, p0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->typeMsg:I

    return v0
.end method
