.class Lcom/android/email/activity/setup/AccountSecurity$1;
.super Ljava/lang/Object;
.source "AccountSecurity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSecurity;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$security:Lcom/android/email/SecurityPolicy;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/email/SecurityPolicy;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->this$0:Lcom/android/email/activity/setup/AccountSecurity;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$security:Lcom/android/email/SecurityPolicy;

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$security:Lcom/android/email/SecurityPolicy;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSecurity$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/SecurityPolicy;->policiesRequired(J)V

    .line 298
    return-void
.end method
