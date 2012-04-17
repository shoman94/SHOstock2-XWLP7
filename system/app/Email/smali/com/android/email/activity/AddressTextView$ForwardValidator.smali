.class Lcom/android/email/activity/AddressTextView$ForwardValidator;
.super Ljava/lang/Object;
.source "AddressTextView.java"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AddressTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForwardValidator"
.end annotation


# instance fields
.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;

.field final synthetic this$0:Lcom/android/email/activity/AddressTextView;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/AddressTextView;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/email/activity/AddressTextView$ForwardValidator;->this$0:Lcom/android/email/activity/AddressTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/AddressTextView$ForwardValidator;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/AddressTextView;Lcom/android/email/activity/AddressTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/email/activity/AddressTextView$ForwardValidator;-><init>(Lcom/android/email/activity/AddressTextView;)V

    return-void
.end method


# virtual methods
.method public fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "invalidText"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/activity/AddressTextView$ForwardValidator;->this$0:Lcom/android/email/activity/AddressTextView;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/AddressTextView;->mIsValid:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/AddressTextView;->access$002(Lcom/android/email/activity/AddressTextView;Z)Z

    .line 36
    return-object p1
.end method

.method public isValid(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/email/activity/AddressTextView$ForwardValidator;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/AddressTextView$ForwardValidator;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v0, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .parameter "validator"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/email/activity/AddressTextView$ForwardValidator;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 45
    return-void
.end method
