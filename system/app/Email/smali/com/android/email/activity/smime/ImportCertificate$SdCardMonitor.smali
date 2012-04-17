.class Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;
.super Ljava/lang/Object;
.source "ImportCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/smime/ImportCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdCardMonitor"
.end annotation


# instance fields
.field mRootMonitor:Landroid/os/FileObserver;

.field final synthetic this$0:Lcom/android/email/activity/smime/ImportCertificate;


# direct methods
.method constructor <init>(Lcom/android/email/activity/smime/ImportCertificate;)V
    .locals 3
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 187
    .local v0, root:Ljava/io/File;
    new-instance v1, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor$1;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor$1;-><init>(Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;Ljava/lang/String;Lcom/android/email/activity/smime/ImportCertificate;)V

    iput-object v1, p0, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;->mRootMonitor:Landroid/os/FileObserver;

    .line 193
    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;->commonHandler(ILjava/lang/String;)V

    return-void
.end method

.method private commonHandler(ILjava/lang/String;)V
    .locals 2
    .parameter "evt"
    .parameter "path"

    .prologue
    .line 196
    sparse-switch p1, :sswitch_data_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 199
    :sswitch_0
    const-string v0, ".p12"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;->this$0:Lcom/android/email/activity/smime/ImportCertificate;

    invoke-virtual {v0}, Lcom/android/email/activity/smime/ImportCertificate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor$2;-><init>(Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 196
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method startWatching()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;->mRootMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 215
    return-void
.end method

.method stopWatching()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/email/activity/smime/ImportCertificate$SdCardMonitor;->mRootMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 220
    return-void
.end method
