.class final Lcom/android/email/service/MailService$1;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/MailService;->resetNewMessageCount(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountId:J

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(JLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 217
    iput-wide p1, p0, Lcom/android/email/service/MailService$1;->val$accountId:J

    iput-object p3, p0, Lcom/android/email/service/MailService$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 220
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->RESET_NEW_MESSAGE_COUNT_URI:Landroid/net/Uri;

    .line 221
    .local v0, uri:Landroid/net/Uri;
    iget-wide v1, p0, Lcom/android/email/service/MailService$1;->val$accountId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 222
    iget-wide v1, p0, Lcom/android/email/service/MailService$1;->val$accountId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/email/service/MailService$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 225
    return-void
.end method
