.class Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor$2;
.super Ljava/lang/Object;
.source "ImportCertificate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;->commonHandler(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor$2;->this$1:Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor$2;->this$1:Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;

    iget-object v0, v0, Lcom/android/email/activity/cba/ImportCertificate$SdCardMonitor;->this$0:Lcom/android/email/activity/cba/ImportCertificate;

    #calls: Lcom/android/email/activity/cba/ImportCertificate;->createFileList()V
    invoke-static {v0}, Lcom/android/email/activity/cba/ImportCertificate;->access$200(Lcom/android/email/activity/cba/ImportCertificate;)V

    .line 183
    return-void
.end method
