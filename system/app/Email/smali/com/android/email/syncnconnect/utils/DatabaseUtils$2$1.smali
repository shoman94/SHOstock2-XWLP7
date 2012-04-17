.class Lcom/android/email/syncnconnect/utils/DatabaseUtils$2$1;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/syncnconnect/utils/DatabaseUtils$2;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/syncnconnect/utils/DatabaseUtils$2;


# direct methods
.method constructor <init>(Lcom/android/email/syncnconnect/utils/DatabaseUtils$2;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/DatabaseUtils$2$1;->this$0:Lcom/android/email/syncnconnect/utils/DatabaseUtils$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "DatabaseUtils"

    const-string v1, "account added sucessfully to Account Manager."

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->actionAddAccountCompleteFromAccountManager(Landroid/content/Context;)V

    .line 178
    return-void
.end method
