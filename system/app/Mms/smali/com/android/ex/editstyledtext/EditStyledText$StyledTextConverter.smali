.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StyledTextConverter"
.end annotation


# instance fields
.field private mEST:Lcom/android/ex/editstyledtext/EditStyledText;

.field private mHtml:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;

.field final synthetic this$0:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;)V
    .locals 0
    .parameter
    .parameter "est"
    .parameter "html"

    .prologue
    .line 1870
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1871
    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 1872
    iput-object p3, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mHtml:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;

    .line 1873
    return-void
.end method

.method static synthetic access$1200(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    return-object v0
.end method


# virtual methods
.method public SetHtml(Ljava/lang/String;)V
    .locals 4
    .parameter "html"

    .prologue
    .line 1926
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mHtml:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;

    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;

    invoke-direct {v2, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)V

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    .line 1971
    .local v0, spanned:Landroid/text/Spanned;
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setText(Ljava/lang/CharSequence;)V

    .line 1972
    return-void
.end method

.method public setStyledTextHtmlConverter(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;)V
    .locals 0
    .parameter "html"

    .prologue
    .line 1876
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mHtml:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;

    .line 1877
    return-void
.end method
