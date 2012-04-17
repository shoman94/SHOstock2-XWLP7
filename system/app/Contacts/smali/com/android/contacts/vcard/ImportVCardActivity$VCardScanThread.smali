.class Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardScanThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field private mCheckedPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGotIOException:Z

.field private mRootDirectory:Ljava/io/File;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/io/File;)V
    .locals 3
    .parameter
    .parameter "sdcardDirectory"

    .prologue
    const/4 v1, 0x0

    .line 652
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 653
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 654
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    .line 655
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    .line 656
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    .line 657
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 659
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "VCardImport"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 662
    return-void
.end method

.method private getVCardFileRecursively(Ljava/io/File;)V
    .locals 14
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 702
    iget-boolean v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v10, :cond_0

    .line 703
    new-instance v10, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v10, p0, v13}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    throw v10

    .line 707
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 708
    .local v5, files:[Ljava/io/File;
    if-nez v5, :cond_2

    .line 709
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, currentDirectoryPath:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".android_secure"

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 712
    .local v8, secureDirectoryPath:Ljava/lang/String;
    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 713
    const-string v10, "VCardImport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "listFiles() returned null (directory: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    .end local v2           #currentDirectoryPath:Ljava/lang/String;
    .end local v8           #secureDirectoryPath:Ljava/lang/String;
    :cond_1
    return-void

    .line 717
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v0, v6

    .line 718
    .local v3, file:Ljava/io/File;
    iget-boolean v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v10, :cond_3

    .line 719
    new-instance v10, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v10, p0, v13}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    throw v10

    .line 721
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, canonicalPath:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 717
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 726
    :cond_5
    iget-object v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 728
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 730
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 731
    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V

    goto :goto_1

    .line 733
    :cond_6
    const-string v10, "VCardImport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "is external sd card storage"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 735
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".vcf"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 737
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 738
    .local v4, fileName:Ljava/lang/String;
    new-instance v9, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-direct {v9, v4, v1, v10, v11}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 740
    .local v9, vcardFile:Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    iget-object v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$600(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 747
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 750
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 753
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 666
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v3, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$602(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 668
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 669
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$900(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 675
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 678
    :goto_0
    iget-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v3, :cond_0

    .line 679
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v3, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$602(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 682
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$1000(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 683
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;
    invoke-static {v3, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$1002(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 685
    iget-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    if-eqz v3, :cond_1

    .line 686
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v4, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v6, 0x7f0d000a

    invoke-direct {v4, v5, v6}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 698
    :goto_1
    return-void

    .line 670
    :catch_0
    move-exception v1

    .line 671
    .local v1, e:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 672
    .end local v1           #e:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    :catch_1
    move-exception v1

    .line 673
    .local v1, e:Ljava/io/IOException;
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 675
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .line 687
    :cond_1
    iget-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v3, :cond_2

    .line 688
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto :goto_1

    .line 690
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$600(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 691
    .local v2, size:I
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    .line 692
    .local v0, context:Landroid/content/Context;
    if-nez v2, :cond_3

    .line 693
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v4, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v6, 0x7f0d0005

    invoke-direct {v4, v5, v6}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 695
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #calls: Lcom/android/contacts/vcard/ImportVCardActivity;->startVCardSelectAndImport()V
    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$1100(Lcom/android/contacts/vcard/ImportVCardActivity;)V

    goto :goto_1
.end method
