.class Lcom/android/email/activity/setup/AccountSetupOptions$3$1;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions$3;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSetupOptions$3;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions$3;)V
    .locals 0
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$3$1;->this$1:Lcom/android/email/activity/setup/AccountSetupOptions$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$3$1;->this$1:Lcom/android/email/activity/setup/AccountSetupOptions$3;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions$3;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    #calls: Lcom/android/email/activity/setup/AccountSetupOptions;->optionsComplete()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$200(Lcom/android/email/activity/setup/AccountSetupOptions;)V

    .line 689
    return-void
.end method
