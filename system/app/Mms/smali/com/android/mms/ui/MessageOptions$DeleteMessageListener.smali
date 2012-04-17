.class Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private final mDeleteLocked:Z

.field private final mDeleteUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "deleteLocked"

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 857
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 858
    iput-boolean p3, p0, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;->mDeleteLocked:Z

    .line 859
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x0

    .line 862
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    const/16 v1, 0x25e4

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    iget-boolean v4, p0, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;->mDeleteLocked:Z

    if-eqz v4, :cond_1

    move-object v4, v2

    :goto_0
    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 866
    const-string v0, "ril.sms.gcf-mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 867
    .local v6, GcfMode:Ljava/lang/String;
    const-string v0, "On"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    const-string v0, "Mms/MessageOptions"

    const-string v1, "GCF Mode On -  DB Count Reset"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 871
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 872
    .local v7, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 875
    .end local v7           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 862
    .end local v6           #GcfMode:Ljava/lang/String;
    :cond_1
    const-string v4, "locked=0"

    goto :goto_0
.end method
