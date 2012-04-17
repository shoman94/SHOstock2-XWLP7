.class Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor$1;
.super Landroid/os/FileObserver;
.source "ImportCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;-><init>(Lcom/android/email/activity/smime/ImportCertificate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;

.field final synthetic val$this$0:Lcom/android/email/activity/smime/ImportCertificate;


# direct methods
.method constructor <init>(Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;Ljava/lang/String;Lcom/android/email/activity/smime/ImportCertificate;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor$1;->this$1:Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;

    iput-object p3, p0, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor$1;->val$this$0:Lcom/android/email/activity/smime/ImportCertificate;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1
    .parameter "evt"
    .parameter "path"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor$1;->this$1:Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;

    #calls: Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;->commonHandler(ILjava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;->access$200(Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;ILjava/lang/String;)V

    .line 191
    return-void
.end method
