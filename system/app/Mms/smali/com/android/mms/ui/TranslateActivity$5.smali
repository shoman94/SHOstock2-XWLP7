.class Lcom/android/mms/ui/TranslateActivity$5;
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
    .line 851
    iput-object p1, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "languageItem"

    .prologue
    const/4 v5, 0x1

    .line 854
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 856
    const/4 v1, 0x0

    .line 857
    .local v1, phoneLangSet:Z
    const/4 v0, 0x0

    .line 859
    .local v0, languageItemCode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$1600(Lcom/android/mms/ui/TranslateActivity;)I

    move-result v2

    if-le v2, p2, :cond_2

    .line 860
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v2, v2, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    aget-object v0, v2, p2

    .line 861
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, v3, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    invoke-virtual {v3, v0}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v2, v2, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v2, v0}, Lcom/android/mms/util/LanguageControl;->setFromLanguageKey(Ljava/lang/String;)V

    .line 863
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->translate()V
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$000(Lcom/android/mms/ui/TranslateActivity;)V

    .line 879
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->isTranslatable()Z
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$1800(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 880
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/android/mms/ui/TranslateActivity;->access$1900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    const/4 v4, 0x0

    #calls: Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V
    invoke-static {v2, v3, v5, v4}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 881
    :cond_0
    const/4 v2, -0x1

    if-le p2, v2, :cond_1

    if-nez v1, :cond_1

    .line 882
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->setRecentLanguage(Ljava/lang/String;Z)V
    invoke-static {v2, v0, v5}, Lcom/android/mms/ui/TranslateActivity;->access$600(Lcom/android/mms/ui/TranslateActivity;Ljava/lang/String;Z)V

    .line 883
    :cond_1
    return-void

    .line 864
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$1600(Lcom/android/mms/ui/TranslateActivity;)I

    move-result v2

    if-ne v2, p2, :cond_4

    .line 865
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 866
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->detectPhoneLanguage(Z)V
    invoke-static {v2, v5}, Lcom/android/mms/ui/TranslateActivity;->access$1700(Lcom/android/mms/ui/TranslateActivity;Z)V

    .line 867
    const/4 v1, 0x1

    goto :goto_0

    .line 869
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->detectTextLanguage()V
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$100(Lcom/android/mms/ui/TranslateActivity;)V

    .line 870
    const/4 p2, -0x1

    goto :goto_0

    .line 873
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v2, v2, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, v3, Lcom/android/mms/ui/TranslateActivity;->mFromLanguageStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I
    invoke-static {v4}, Lcom/android/mms/ui/TranslateActivity;->access$1600(Lcom/android/mms/ui/TranslateActivity;)I

    move-result v4

    sub-int v4, p2, v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/mms/util/TranslateLanguages;->getLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 875
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #getter for: Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, v3, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    invoke-virtual {v3, v0}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 876
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v2, v2, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v2, v0}, Lcom/android/mms/util/LanguageControl;->setFromLanguageKey(Ljava/lang/String;)V

    .line 877
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    #calls: Lcom/android/mms/ui/TranslateActivity;->translate()V
    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$000(Lcom/android/mms/ui/TranslateActivity;)V

    goto :goto_0
.end method
