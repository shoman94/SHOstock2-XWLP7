.class Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lcom/android/mms/ui/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1774
    iput p1, p0, Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1774
    iput p1, p0, Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$000(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Lcom/android/mms/ui/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 1781
    return-void
.end method
