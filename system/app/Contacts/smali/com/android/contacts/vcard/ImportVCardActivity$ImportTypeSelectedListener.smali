.class Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportTypeSelectedListener"
.end annotation


# instance fields
.field private mCurrentIndex:I

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 564
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 565
    iget v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;->mCurrentIndex:I

    packed-switch v0, :pswitch_data_0

    .line 573
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->showDialog(I)V

    .line 581
    :goto_0
    return-void

    .line 567
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$600(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v1

    #calls: Lcom/android/contacts/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)V

    goto :goto_0

    .line 570
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->showDialog(I)V

    goto :goto_0

    .line 576
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto :goto_0

    .line 579
    :cond_1
    iput p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;->mCurrentIndex:I

    goto :goto_0

    .line 565
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
