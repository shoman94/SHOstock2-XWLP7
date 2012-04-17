.class Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElementIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertOperationConstrutor"
.end annotation


# instance fields
.field private final mBackReferenceIndex:I

.field private final mOperationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/vcard/VCardEntry;


# direct methods
.method public constructor <init>(Lcom/android/vcard/VCardEntry;Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "backReferenceIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1782
    .local p2, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->this$0:Lcom/android/vcard/VCardEntry;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1783
    iput-object p2, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->mOperationList:Ljava/util/List;

    .line 1784
    iput p3, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->mBackReferenceIndex:I

    .line 1785
    return-void
.end method


# virtual methods
.method public onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z
    .locals 2
    .parameter "elem"

    .prologue
    .line 1805
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElement;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->mOperationList:Ljava/util/List;

    iget v1, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->mBackReferenceIndex:I

    invoke-interface {p1, v0, v1}, Lcom/android/vcard/VCardEntry$EntryElement;->constructInsertOperation(Ljava/util/List;I)V

    .line 1808
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onElementGroupEnded()V
    .locals 0

    .prologue
    .line 1801
    return-void
.end method

.method public onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 1797
    return-void
.end method

.method public onIterationEnded()V
    .locals 0

    .prologue
    .line 1793
    return-void
.end method

.method public onIterationStarted()V
    .locals 0

    .prologue
    .line 1789
    return-void
.end method
