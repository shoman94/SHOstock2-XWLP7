.class final Lcom/android/email/syncnconnect/utils/DatabaseUtils$1;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/syncnconnect/utils/DatabaseUtils;->addAccountToAccountManager(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/DatabaseUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/email/syncnconnect/utils/DatabaseUtils$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/DatabaseUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/syncnconnect/utils/DatabaseUtils$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    const/4 v2, 0x1

    sget-object v6, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/MailService;->setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZZLandroid/accounts/AccountManagerCallback;)V

    .line 160
    return-void
.end method
