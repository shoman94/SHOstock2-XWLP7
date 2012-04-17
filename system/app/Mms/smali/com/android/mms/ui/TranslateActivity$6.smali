.class Lcom/android/mms/ui/TranslateActivity$6;
.super Ljava/lang/Object;
.source "TranslateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TranslateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TranslateActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TranslateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "languageItem"

    .prologue
    const/4 v5, 0x0

    .line 890
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 892
    const/4 v1, 0x0

    .line 893
    .local v1, phoneLangSet:Z
    const/4 v0, 0x0

    .line 895
    .local v0, languageItemCode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$2000(Lcom/android/mms/ui/TranslateActivity;)I

    move-result v2

    if-le v2, p2, :cond_2

    .line 896
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v2, v2, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    aget-object v0, v2, p2

    .line 897
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$400(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, v3, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    invoke-virtual {v3, v0}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 898
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v2, v2, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v2, v0}, Lcom/android/mms/util/LanguageControl;->setToLanguageKey(Ljava/lang/String;)V

    .line 913
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->isTranslatable()Z
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$1800(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 914
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/android/mms/ui/TranslateActivity;->access$1900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    const/4 v4, 0x1

    #calls: Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 915
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->translate()V
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$000(Lcom/android/mms/ui/TranslateActivity;)V

    .line 917
    :cond_0
    const/4 v2, -0x1

    if-le p2, v2, :cond_1

    if-nez v1, :cond_1

    .line 918
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->setRecentLanguage(Ljava/lang/String;Z)V
    invoke-static {v2, v0, v5}, Lcom/android/mms/ui/TranslateActivity;->access$600(Lcom/android/mms/ui/TranslateActivity;Ljava/lang/String;Z)V

    .line 919
    :cond_1
    return-void

    .line 899
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$2000(Lcom/android/mms/ui/TranslateActivity;)I

    move-result v2

    if-ne v2, p2, :cond_4

    .line 900
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 901
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->detectTextLanguage()V
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$100(Lcom/android/mms/ui/TranslateActivity;)V

    .line 902
    const/4 p2, -0x1

    goto :goto_0

    .line 904
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->detectPhoneLanguage(Z)V
    invoke-static {v2, v5}, Lcom/android/mms/ui/TranslateActivity;->access$1700(Lcom/android/mms/ui/TranslateActivity;Z)V

    .line 905
    const/4 v1, 0x1

    goto :goto_0

    .line 908
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v2, v2, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, v3, Lcom/android/mms/ui/TranslateActivity;->mToLanguageStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I
    invoke-static {v4}, Lcom/android/mms/ui/TranslateActivity;->access$2000(Lcom/android/mms/ui/TranslateActivity;)I

    move-result v4

    sub-int v4, p2, v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/mms/util/TranslateLanguages;->getLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$400(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, v3, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    invoke-virtual {v3, v0}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 911
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$6;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v2, v2, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v2, v0}, Lcom/android/mms/util/LanguageControl;->setToLanguageKey(Ljava/lang/String;)V

    goto :goto_0
.end method
