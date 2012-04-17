.class Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor$1;
.super Landroid/os/FileObserver;
.source "ImportCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;-><init>(Lcom/android/email/activity/cba/ImportCertificate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

.field final synthetic val$this$0:Lcom/android/email/activity/cba/ImportCertificate;


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;Ljava/lang/String;Lcom/android/email/activity/cba/ImportCertificate;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor$1;->this$1:Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

    iput-object p3, p0, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor$1;->val$this$0:Lcom/android/email/activity/cba/ImportCertificate;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1
    .parameter "evt"
    .parameter "path"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor$1;->this$1:Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

    #calls: Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;->commonHandler(ILjava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;->access$100(Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;ILjava/lang/String;)V

    .line 171
    return-void
.end method
